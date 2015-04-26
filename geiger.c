#include <system.h>
#include <eeprom.h>
#include <string.h>
#include <stdlib.h>

#pragma CLOCK_FREQ 48000000

//#pragma DATA	_CONFIG1L, _PLLDIV_5_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L  //20Mhz
#pragma DATA	_CONFIG1L, _PLLDIV_3_1L & _CPUDIV_OSC1_PLL2_1L & _USBDIV_2_1L  //12Mhz
#pragma DATA    _CONFIG1H, _FOSC_HSPLL_HS_1H & _FCMEN_OFF_1H & _IESO_OFF_1H

//#pragma DATA    _CONFIG2L, _PWRT_OFF_2L & _BOR_OFF_2L  & _VREGEN_ON_2L
#pragma DATA    _CONFIG2L, _PWRT_OFF_2L & _BOR_ON_2L & _BORV_2_2L  & _VREGEN_ON_2L
#pragma DATA    _CONFIG2H, _WDT_ON_2H & _WDTPS_1024_2H //WDT ON, 4s
#pragma DATA    _CONFIG3H, _CCP2MX_OFF_3H & _LPT1OSC_OFF_3H & _PBADEN_OFF_3H & _MCLRE_OFF_3H
#pragma DATA    _CONFIG4L, _STVREN_ON_4L & _LVP_OFF_4L & _DEBUG_OFF_4L & _XINST_OFF_4L
#pragma DATA    _CONFIG5L, _CP0_OFF_5L & _CP1_OFF_5L & _CP2_OFF_5L & _CP3_OFF_5L
#pragma DATA    _CONFIG5H, _CPB_OFF_5H & _CPD_OFF_5H
#pragma DATA    _CONFIG6L, _WRT0_OFF_6L & _WRT1_OFF_6L & _WRT2_OFF_6L & _WRT3_OFF_6L
#pragma DATA    _CONFIG6H, _WRTC_OFF_6H & _WRTB_OFF_6H & _WRTD_OFF_6H
#pragma DATA    _CONFIG7L, _EBTR0_OFF_7L & _EBTR1_OFF_7L & _EBTR2_OFF_7L & _EBTR3_OFF_7L
#pragma DATA    _CONFIG7H, _EBTRB_OFF_7H

#define PWM_OUTPUT trisc.2 //PWM output pin
#define BOOST_ON portb = portb | 0b111000 //used for charging the boost capacitor which provides 9 - 10 V for driving the mosfet, drives the pins high
#define BOOST_OFF portb = portb & ~0b111000 //drives the correct pins low
#define BOOST_TRIS trisb.3 //tris 1
#define BOOST_TRIS2 trisb.4
#define DETECT_OUTPUT_PIN portc.0 //pin used for showing detection of radiation
#define DETECT_OUTPUT_TRIS trisc.0
#define DETECT_INPUT_TRIS trisb.0
#define DETECT_INPUT_TRIS2 trisb.1

#define RUN_LED_PIN portc.1
#define RUN_LED_TRIS trisc.1

#define DETECT_THRESHOLD 65             //default number of TMR3 counts needed between falling and rising edge before we say anything was detected, 탎 * 2/3
#define EEPROM_MAGIC 0xA5A12345         //first 4 bytes indicate if the EEPROM calibration field is used
#define DEFAULT_ADC_CALIBRATION 1000000 //default multiply the ADC measured value by 1.0
#define SW_VERSION "3.01"


#include "usb.h"
#include "usb\pic_usb.h"
#include "rtc.h"
#include "sp.h"

#define USB_TIME_OUT 5 			    //number of seconds we can send data before usb reset will occur

typedef struct {
	unsigned long magic;			//header 
	unsigned long adc_cal;			//adc calibration
	unsigned long flags;			//bit flags
	unsigned int  threshold;		//threshold value
}eeprom_settings;

#define GEIGER_FLAG_AUTO_PWM 1      //set if the automatic pwm adjust is on
#define GEIGER_FLAG_WDT 2		    //set if the watchdog timer is on
#define GEIGER_FLAG_AUTO_USB 4      //set if packets are automatically send on usb interface

typedef struct {
	unsigned char type;				//packet type 68 (=D) DATA PACKET, 79 CMD RESPONS (=O)
	unsigned char version;			//packet version, 1
	unsigned int  flags;			//flags
	unsigned long counter; 			//geiger counter value (hits since last reset)
	unsigned long time_counting; 	//time since last counter reset
	unsigned long time_on; 			//time since boot of chip
	unsigned long adc_calibration;  //stores calibaration value of voltage ADC (* 1000 000 000)  
	unsigned int  threshold; 		//threshold time in 2/3탎
	unsigned int  last_pulsewidth; 	//last pulse width
	unsigned int  adc_value;	    //adc_value on geiger tube (ADC value 0-1023), U = adc_value * 4096 / 1024 / 1000 / 4700 * 1004700 * adc_calibration / 1000000
	unsigned int  error;			//number of pulse errors (very long pulses)
	unsigned int  wdt;				//number of watchdog timer resets
	unsigned int  duty_cycle;		//duty cycle value 799 = 100%
	unsigned long last_pulse_time;  //time the last pulse was detected
	unsigned int  max_pwm_value;    //holds the max pwm value
	unsigned char padding[26];		//reserved bytes to fill up the packet to make 64bytes
} GeigerPacketOut;


typedef enum {
	USB_DATA=68,
	USB_CMD=79
}USBPacketTypes;

typedef enum {
	CMD_SOURCE_SERIAL,
	CMD_SOURCE_USB
}cmd_source;

unsigned char boost_val;		  //used for generating +10V for driving the mosfet, tells if the pins connected to the capacitor of 10킚 is high/low
unsigned char geiger_counter; 	  //counter which is increased in the interrupt routine, the main loop will copy counts from this counte to the big_geiger_counter
unsigned char previous_counter;	  //used in main counter

unsigned long big_geiger_counter; //bigger geiger counter
unsigned long time_counting_start;//number of seconds since reboot/reset we started counting
unsigned int  detect_threshold;   //variable holding the current detect threshold value
unsigned int  last_time; 	      //holds last detected pulse low time
unsigned long last_detect_time;   //holds rtc value of last detect time
unsigned int  adc_value;		  //holds last adc_value measured
unsigned long Uout;				  //holds measured output voltage
unsigned int  error;			  //number of errors in flank detection (rising edge interrupt not executed within the limit)
unsigned int  watchdogs;		  //number watchdog resets
unsigned long adc_calibration;    //calibration loaded from EEPROM

unsigned char serial_data[65]; 	  //serial received data, end command with \n
unsigned char serial_count;       //serial data count
bool          serial_cmd;		  //if true a serial command was received
unsigned int  duty_cycle;		  //current used duty cycle
unsigned int  hw_duty_cycle;      //hw duty cycle val
unsigned char sw_duty_cycle;
unsigned char sw_duty_cycle_index;

//hw duty cycle max value is 800 but we allow 0-3199, where 2 bits are used to create higher precision in software mode
#define DUTY_CYCLE_MAX 3196        //max value of the duty cycle
#define DUTY_CYCLE_SW_PRECISION  2 //precision in software duty cycle nr of bits
#define DUTY_CYCLE_INIT 3000       //init value

bit remote_watchdog;			  //if set, the watchdog timer must be cleared by receiving a remote command (default off)
bit auto_adjust_pwm; 			  //if set, the pwm value will be adjusted automatically (default ON)
bit auto_usb;					  //if set, automatic data transmitted every x ms through the USB interface (default on)

//high priority interrupts
void interrupt(){
	
	if (pir1.TMR2IF){
		unsigned int tmp;
		if (sw_duty_cycle_index < sw_duty_cycle){
			tmp = hw_duty_cycle+1;
		}else{
			tmp = hw_duty_cycle;
		}
		ccpr1l = (tmp >> 2) & 0xFF ; //pwm 8 MSb
		
		ccp1con.4 = tmp.1; //bit 1
		ccp1con.5 = tmp.2; //bit 2
		
		ccp1con &= 0b00001111;
		if (tmp & 1) ccp1con.4 = 1;  //pwm bit 9
		if (tmp & 2) ccp1con.5 = 1; //pwm bit 10
	
		sw_duty_cycle_index++;
		if (sw_duty_cycle_index==(1 << DUTY_CYCLE_SW_PRECISION)) sw_duty_cycle_index=0;
		pir1.TMR2IF=0;
	}

	if (intcon.TMR0IF){
		if (boost_val) { //toggle the pin that generates the boost voltage (+-10V)
			BOOST_OFF;
			boost_val = 0;
		}else{
			BOOST_ON;
			boost_val = 1;
		}
		intcon.TMR0IF=0;
	}
	
	if (intcon.INT0IF){ //falling edge on DETECT_INPUT_PIN, enable TMR3 to start counting time
		tmr3h=0; //clear timer
		tmr3l=0;
		t3con.TMR3ON=1; //start timer 3
		intcon.INT0IF=0;
	}
	
	if (intcon3.INT1IF){ //rising edge detector
		unsigned char l = tmr3l;
		unsigned char h = tmr3h;
		int tmp_time;
		MAKESHORT(tmp_time, l, h); //save the timer value, must be bigger than detect_threshold to eliminate noise
		if (tmp_time > 0){
			last_time = tmp_time; //geiger_counter += tmp / detect_threshold; --> warning stack corruption
		}
		while (tmp_time >= detect_threshold){
			geiger_counter++;
			tmp_time -= detect_threshold;
		}
		t3con.TMR3ON=0; //disable timer
		intcon3.INT1IF=0;
	}
	
	if (pir1.RCIF){ //serial receive interrupt
		unsigned char data = rcreg; //read in serial received data
		if (!serial_cmd){
			if (data=='\r' || data=='\n'){
				serial_cmd=true;
				data=0;
			}
			serial_data[serial_count]=data; //save the data
			serial_count++;
		}
	}
}

//low priority interrupts
void interrupt_low(){
	if (pir1.TMR1IF){ //handle time stuff
		rtc_handle_timer();
		pir1.TMR1IF=0;
	}

	if (pir2.TMR3IF){ //reset geiger pin
		intcon.INTEDG0=0; //go back to detect falling edge
		t3con.TMR3ON=0;
		tmr3h=0;
		tmr3l=0;
		pir2.TMR3IF=0;
		last_time=0;
		error++;
	}
	usb_handle_isr();
}

//initializes the ADC for measuring the high voltage and adjus the PWM value
void init_ADC(){
	adcon0 = 0;
	adcon1.VCFG1 = 0; //VREF- connected to VSS
	adcon1.VCFG0 = 1; //VREF+ connected to AN3
	adcon1 |= 0b1110; // AN0 is analog input, all others are digital
	
	adcon2.ADFM =1;   //right side adjustment
	adcon2.ADCS2=1; //conversion clock= 48/64
	adcon2.ADCS1=1;
	adcon2.ADCS0=0;
	
	adcon2.ACQT2=1;
	adcon2.ACQT1=0;
	adcon2.ACQT0=0; //wait sampling time 8tad +/-10탎?
	adcon0 = 1;     //enable A/D
	adc_value = 0;
}

//changes the duty cycle of the boost converter
//running at 15KHz, 799 is the max value of the converter
void set_PWM (unsigned int val){
	//10bit pwm= ccpr1l + ccp1con.5 + ccp1con.4
	if (duty_cycle > DUTY_CYCLE_MAX) val = DUTY_CYCLE_MAX;
	duty_cycle = val; //save current duty cycle
	hw_duty_cycle = val >> DUTY_CYCLE_SW_PRECISION;
	sw_duty_cycle = val & ((1 << DUTY_CYCLE_SW_PRECISION)-1);
	ccpr1l = (hw_duty_cycle >> 2) & 0xFF ; //pwm 8 MSb
	ccp1con &= 0b00001111;
	if (hw_duty_cycle & 1) ccp1con.4 = 1; //|=0b01000000; //pwm bit 9
	if (hw_duty_cycle & 2) ccp1con.5 = 1; //|=0b10000000; //pwm bit 10
}

//initializes the boost converter PWM generator
void init_PWM(){ //calculator: http://learn.adafruit.com/diy-boost-calc/the-calculator
	PWM_OUTPUT = 0; //output
	ccp1con = 0b00001100 ; //PWM mode, MSbits are bit 9 and 10 of the PWM
	
	//info: http://www.winpicprog.co.uk/pic_tutorial8.htm
	//calculater: http://www.micro-examples.com/public/microex-navig/doc/097-pwm-calculator.html
	pr2=199; //max pwm value, pwm value @max duty cycle = (pr2 +1)*4 -1  pr2=0xff ---> duty cycle 100% --> set_pwm=1023
	
	pie1.TMR2IE=1;
	t2con.T2CKPS0=1; //precale 1/4 -->1
	t2con.T2CKPS1=0;
	t2con.T2OUTPS0=0;
	t2con.T2OUTPS1=0;
	t2con.T2OUTPS2=0;
	t2con.T2OUTPS3=0;
	
	t2con.TMR2ON=1;
	
	clear_wdt(); //slowly rise the output voltage
	duty_cycle=100;
	while (duty_cycle < DUTY_CYCLE_INIT){
		set_PWM(duty_cycle+(1<<DUTY_CYCLE_SW_PRECISION));
		delay_ms(2);
	}
}

//sets the PWM value depending on measured voltage
void handle_PWM(){
	Uout = (unsigned long)adc_value * (unsigned long)4018800 / (unsigned long)1000 / (unsigned long)4700 * adc_calibration / (unsigned long)1000000;

	if (auto_adjust_pwm){
		if (Uout < 445){
			duty_cycle++;
			set_PWM(duty_cycle);
		}else if (Uout > 460){
			if (duty_cycle > 1) duty_cycle--;
			set_PWM(duty_cycle);
		}
	}
}

//initializes timer 0 which is used to create 9-10V for driving the mosfet
void init_TMR0(){ //tmr 0 used for creating a boost voltage
	t0con.T08BIT=1;
	t0con.T0CS=0;
	t0con.PSA=1;
	intcon.TMR0IE=1;
	intcon.GIE=1;
	t0con.TMR0ON=1;
	BOOST_TRIS = 0;
	BOOST_TRIS2 = 0;
	BOOST_OFF;
	boost_val = 0;
}

//resets the counter
void reset_counter (){
	geiger_counter=0; //number of hits
	previous_counter = 0;			 //holds the value of the geiger counter of previous loop
	big_geiger_counter=0;
	time_counting_start=rtc_get_time(); 
}

//reads array of data from EEPROM
void eeprom_read_array(unsigned char * data, unsigned char adr, unsigned char len){
	for (unsigned char i=0; i<len; i++){
		data[i] = eeprom_read(adr);
		adr++;
	}
}

//writes array of data to the EEPROM
void eeprom_write_array(unsigned char * data, unsigned char adr, unsigned char len){
	for (unsigned char i=0; i<len; i++){
		eeprom_write(adr, data[i]);
		adr++;
	}
}

//reads a DWORD from EEPROM
unsigned long eeprom_read_long (unsigned char adr){
	unsigned long res;
	eeprom_read_array((unsigned char *) & res, adr, sizeof(res));
}

//writes a DWORD to the EEPROM
void eeprom_write_long (unsigned char adr, unsigned long value){
	eeprom_write_array((unsigned char *) & value, adr, sizeof(value));
}

//loads the settings from the EEPROM
void load_settings (){
	eeprom_settings settings;
	auto_usb=1;
	remote_watchdog=0;
	auto_adjust_pwm = 1;
	adc_calibration=DEFAULT_ADC_CALIBRATION;
	detect_threshold = DETECT_THRESHOLD; //min. number of TMR3 counts
	
	eeprom_read_array ((unsigned char *) & settings, 0, sizeof(settings));
	if (settings.magic  == EEPROM_MAGIC){
		adc_calibration = settings.adc_cal;
		detect_threshold = settings.threshold;
	}
	
	if (detect_threshold < 10 || detect_threshold > 500) detect_threshold = DETECT_THRESHOLD;
	if (adc_calibration > 1500000 || adc_calibration < 500000) adc_calibration = DEFAULT_ADC_CALIBRATION;

}

//saves the settings to the EEPROM
void save_settings (){
	eeprom_settings settings;
	settings.magic = EEPROM_MAGIC;
	settings.threshold = detect_threshold;
	settings.adc_cal = adc_calibration;
	eeprom_write_array((unsigned char *) & settings, 0, sizeof(settings));
}


//initializes the geiger counter, INT0 and TMR3
void init_counter (){
	reset_counter();
	//adc_calibration=1000000;
	
	last_time = 0;
	last_detect_time=0;
	error = 0;
	
	DETECT_INPUT_TRIS=1; //pin used for geiger tube input
	DETECT_INPUT_TRIS2=1;
	DETECT_OUTPUT_TRIS=0;//blinks on reception
	DETECT_OUTPUT_PIN=0;
	
	intcon3.INT1IP=1;
	
	intcon2.INTEDG0=0; //int 0 edge (falling edge)
	intcon2.INTEDG1=1; //int 1 edge (rising edge) we measure time between falling and rising edge	
	
	intcon.INT0IF=0;
	intcon.INT0IE=1; //int 0 interrupt enable	
	
	intcon3.INT1IF=0;
	intcon3.INT1IE=1;
	
	intcon.PEIE=1;
	pie2.TMR3IE=1; //timer 3 interrupt enabled, in case of a time out there was a problem with detecting a rising edge and we reset the edge detect shit
	ipr2.TMR3IP=0; //low priority
	t3con.RD16=1; //timer 3 counts the puls duration time
	t3con.T3CKPS1=1;
	t3con.T3CKPS0=1;
	t3con.TMR3CS=0;
}

//sends data to the usb interface
void send_usb_packet (){
	GeigerPacketOut data; 
	data.type = USB_DATA;
	data.version =  1;
	data.flags = 0;
	if (auto_adjust_pwm) data.flags = GEIGER_FLAG_AUTO_PWM;
	if (remote_watchdog) data.flags += GEIGER_FLAG_WDT;
	if (auto_usb) data.flags += GEIGER_FLAG_AUTO_USB;
	data.counter = big_geiger_counter;
	data.time_on = rtc_get_time();
	data.time_counting = data.time_on - time_counting_start; 	
	data.adc_calibration = adc_calibration;			
	data.threshold = detect_threshold;
	data.last_pulsewidth = last_time;			
	data.adc_value = adc_value;	
	data.error  = error;
	data.wdt = watchdogs; //nr of watchdog events
	data.duty_cycle = duty_cycle;
	data.last_pulse_time = last_detect_time;
	data.max_pwm_value = DUTY_CYCLE_MAX;
	data.padding[0] = 0;
	usbhid_send_data((unsigned char *)&data,64);
}

//sends data to the serial interface
//format:
// 0: counter, 
// 1: time counting since last counter reset (SEC),
// 2: total time running (SEC),
// 3: adc calibration value (/1000000),
// 4: detect threshold (* 2/3) 탎,
// 5: last_time (last measured pulse duration (*2/3) 탎,
// 6: measured ADC value (max 1023),
// 7: pulse errors (too long pulse detected),
// 8: nr of watchdog timer overflows,
// 9: duty cycle value (max 799),
// 10: seconds since last detected pulse,
// 11: bitflags:
       // bit 0 =  AUTOMATIC PULSE WIDTH ADJUST ENABLED
	   // bit 1 =  REMOTE WATCHDOG ENABLED
	   // bit 2 =  AUTOMATIC TRANSMIT TO USB INTERFACE ENABLED
void send_serial_packet (){
	serial_send_string("OK ");
	serial_send_long(big_geiger_counter); //counter
	serial_send_byte(',');
	serial_send_long(rtc_get_time()- time_counting_start);
	serial_send_byte(',');
	serial_send_long(rtc_get_time());
	serial_send_byte(',');
	serial_send_long(adc_calibration);
	serial_send_byte(',');
	serial_send_int(detect_threshold);
	serial_send_byte(',');
	serial_send_int(last_time);
	serial_send_byte(',');
	serial_send_int(adc_value);
	serial_send_byte(',');
	serial_send_int(error);
	serial_send_byte(',');
	serial_send_int(watchdogs);
	serial_send_byte(',');
	serial_send_int(duty_cycle);
	serial_send_byte(',');
	serial_send_long(last_detect_time);
	serial_send_byte(',');
	int flags = 0;
	if (auto_adjust_pwm) flags = GEIGER_FLAG_AUTO_PWM;
	if (remote_watchdog) flags += GEIGER_FLAG_WDT;
	if (auto_usb) flags += GEIGER_FLAG_AUTO_USB;
	serial_send_int(flags);
	serial_send_byte(',');
	serial_send_byte(DUTY_CYCLE_MAX);	
	serial_send_byte('\n');
}


//executes a command from string (USB or RS232)
void execute_command (unsigned char * string, unsigned char source){
	bool cmd_ok=false;
	
	if (strncmp(string, "get", 3)==0){ //poll data
		clear_wdt(); //get command will clear the wdt
		if (source==CMD_SOURCE_USB){
			usbhid_wait_outgoing();
			send_usb_packet();
		}else{
			send_serial_packet();
		}
	}else if (strncmp(string, "wdt",3)==0){ //resets the watchdog
		cmd_ok=true;
		clear_wdt();
	}else if (strncmp(string, "reset", 5)==0){ //reset chip
		cmd_ok=true;
		reset();
	}else if (strncmp(string, "clear", 5)==0){ //reset counter
		cmd_ok=true;
		reset_counter();
	}else if (strncmp(string, "cal",3)==0){ //cal 99999
		unsigned long value = strtol( & string[4], NULL, 10);
		if (value > 500000 && value < 1500000){
			cmd_ok=true;
			adc_calibration = value;
		}
	}else if (strncmp(string, "save",4)==0){//saves settings
		cmd_ok=true;
		save_settings(); 
	}else if (strncmp(string, "default", 7)==0){ //reset settings
		eeprom_write_long(0,0);
		cmd_ok=true;
	}else if (strncmp(string, "rem watchdog", 12)==0){ //remote watchdog enable/disable
		remote_watchdog = string[13]=='1';
		cmd_ok=true;
	}else if (strncmp(string, "threshold",9)==0){ //set threshold value
		unsigned int threshold  = strtoi(& string[10], NULL, 10);
		if (threshold>0) detect_threshold = threshold;
		cmd_ok=true;
	}else if (strncmp(string, "pwm",3)==0){ //set pwm value
		unsigned int pwm_val = strtoi(& string[4], NULL, 10);
		set_PWM(pwm_val);
		cmd_ok=true;
	}else if (strncmp(string, "auto pwm", 8)==0){ //enable / disable automatic adjustment of pwm value (measure voltage and adjust to keep 500V
		auto_adjust_pwm = string[9]=='1';
		cmd_ok=true;
	}else if (strncmp(string, "auto usb", 8)==0){
		auto_usb = string[9]=='1';
	}else if (strncmp(string, "sw ver", 6)==0){
		if (source==CMD_SOURCE_USB){
			usbhid_wait_outgoing();
			unsigned char tmp[10];
			tmp[0]=0;
			strcat(tmp, "OK ");
			strcat(tmp, SW_VERSION);
			usbhid_send_data(tmp, strlen(tmp)+1);
		}else{
			serial_send_string("OK ");
			serial_send_string(SW_VERSION);
			serial_send_byte('\n');
		}
	}
	
	if (cmd_ok){
		if (source==CMD_SOURCE_USB){
			usbhid_wait_outgoing();
			usbhid_send_data("OK", 3);
		}else{
			serial_send_string ("OK\n");
		}
	} 
	
}

void main(){
	//check for watchdog event
	if (rcon.TO==0){
		watchdogs++; //record nr of watchdog timers
	}else{
		watchdogs=0;	
	}
	
	//remote_watchdog=0; //disable remote watchdog
	//general configuration
	ucon.3=0; //turn off USB
	ucfg.3=1; //turn usb transceiver off	
	PWM_OUTPUT=0;
	
	rcon.IPEN=1; //enable interrupt priority
	adcon1 = 0x0F; //initialize the AD con 1 to enable digital inputs
	ipr2.USBIP=0; //low priority for USB interrupts
	
	RUN_LED_TRIS=0; //output for LED
	RUN_LED_PIN=1;
	rtc_init(); //start the clock	
	
	load_settings(); //load the settings
	
	clear_wdt();
	delay_s(1); //wait 1 second
	clear_wdt();
	
	usbhid_initialise_hid(); //initialize the USB module

	clear_wdt();
	delay_s(1); //led USB enumerate
	clear_wdt();
	delay_s(1);
	clear_wdt();

	serial_count=0;
	serial_cmd=false;
	serial_init(); //start the rs232
	init_ADC(); //initialize the ADC
	init_TMR0(); //initializes TMR0 which is used to generate a 10V for the driving the mosfet
	init_PWM(); //initializes the PWM that generates high voltage
	delay_ms(250);
	init_counter();//initializes the geiger counter stuff (that checks for falling/rising edge of tube output)
	
	clear_wdt();
	
	unsigned char blinks=0; 		 //number of times we still need to toggle the DETECT_OUTPUT_PIN LED
	unsigned long blink_ticks=0; 	 //the number of ticks since last DETECT_OUTPUT_PIN change
	bit detect_output_state=0; 	     //the state of the DETECT LED
	
	unsigned char previous_sec=0; //for blinking the run LED
	unsigned long usb_watchdog=0; //watchdog for usb outgoing data becoming stuck
	
	while(1){
		
		while(geiger_counter != previous_counter){
			last_detect_time = rtc_get_time();
			previous_counter++;
			big_geiger_counter++;
			blinks++;
		}
		
		if ((rtc_get_tick() - blink_ticks) > (RTC_TICKS_PER_SECOND / 10) ){ //check each 100ms to toggle the output and make an AD conversion of voltage
			if (blinks > 0){
				if (detect_output_state) blinks--; 			 //1 output toggle happend, we will now reset the pin because it's currently high
				detect_output_state = ~ detect_output_state; //reset the internal variable holding the expected state of the output
				DETECT_OUTPUT_PIN = detect_output_state; 	 //write the value to the output
			}
			
			pir1.ADIF=0; //start an ADC
			adcon0.GO_DONE=1; 

			blink_ticks = rtc_get_tick(); 				 //remember the time to reset the pin
		}
		
		if (pir1.ADIF){ //ad conversion complete?
			MAKESHORT(adc_value,adresl,adresh); //save measured voltage
			handle_PWM(); //change the PWM value depending on the measured voltage
			pir1.ADIF=0;
		}

		//check if usb is connected
		if (usbhid_connected()){ 
			#ifdef USB_TIMEOUT //some procedure used to monitor the USB connection so that when sending data gets corrupted we reset the usb module
				if (FCD_USBHID_Outgoing ()){
					if (usb_watchdog==0) usb_watchdog=rtc_get_time();
					if ((rtc_get_time()- usb_watchdog) > USB_TIME_OUT){
						ucon.3=0; //turn off USB
						ucfg.3=1; //turn usb transceiver off	
						error++;  //add an error count
						delay_s(1);
						FCD_USBHID0_Initialise_HID(); //initialize the USB module
					}
				}else{
					usb_watchdog=0;
				}
			#endif
			
			if (auto_usb){ //connected OK and automatic broadcast is on
				if (! usbhid_outgoing ()){ //send data if no data is outgoing
					send_usb_packet();//USB data to PC, send every 10ms
				}
			}
			
			unsigned char rx = usbhid_check_rx(); //check if we received data
			if (rx){
				unsigned char usb_data[65];
				usbhid_receive_data(usb_data, 64);
				execute_command(usb_data, CMD_SOURCE_USB);
			}
		}
		
		//toggle the LED output pin
		if (previous_sec!=rtc_get_sec()){
			RUN_LED_PIN=~RUN_LED_PIN;
			previous_sec = rtc_get_sec();
		}	

		//execute the serial received command
		if (serial_cmd){
			execute_command(serial_data, CMD_SOURCE_SERIAL);
			serial_count=0; //reset for next cmd
			serial_cmd=false; //reset to tell the ISR we processed the command and we are ready to receive next
		}
		
		if (!remote_watchdog) clear_wdt();
	}

}
