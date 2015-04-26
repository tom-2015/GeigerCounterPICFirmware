#include "sp.h"
#include <system.h>
#include <string.h>
#include <stdlib.h>

#ifdef USE_HARD_SP
	void serial_init(){
		//pie1.RCIE=1; //enable interrupts
		trisc.6=1;   //enable the outputs/inputs
		trisc.7=1;
		txsta.BRGH=1;
		baudcon.BRG16=1;
		spbrgh=1249/256; //16bit brg @ 9600 baud
		spbrg=1249%256;	
		txsta.SYNC=0;
		rcsta.SPEN=1;
		txsta.TXEN=1; //transmit enable
		rcsta.CREN=1; //receive enable
		pie1.RCIE=1; //enable interrupts
		//ipr1.RCIP=1;  //high interrupt priority
	}
	
	void serial_send_byte(unsigned char byte){
		while (txsta.TRMT==0);
		txreg = byte;
	}
	
	//sends an array of chars to the serial port
	void serial_send_data(unsigned char * data, unsigned char len){
		for (int i=0;i<len;i++){
			while (txsta.TRMT==0);
			txreg = data[i];
		}
	}
	
	//sends a string to the serial port
	void serial_send_string(unsigned char * data){
		while(*data!=0){
			serial_send_byte(*data);
			data++;
		}
	}
	
	void serial_send_string(rom char * text){
		unsigned char data = text[0];
		unsigned char i=0;
		while (data!=0){
			while (txsta.TRMT==0);
			txreg = data;
			i++;
			data = text[i];
		}
	}
	
	void serial_send_string_line(unsigned char * text){
		while(*text!=0){
			serial_send_byte(*text);
			text++;
		}
		serial_send_byte('\r');
		serial_send_byte('\n');
	}
	
	void serial_send_string_line(rom char * text){
		serial_send_string(text);
		serial_send_byte('\r');
		serial_send_byte('\n');
	}
	
	//prints an interger
	void serial_send_int(unsigned int val){
		char str[7];
		itoa(val, str,10);
		serial_send_string(str);
	}
	
	void serial_send_long(unsigned long val){
		char str[14];
		ltoa(val, str, 10);
		serial_send_string(str);
	}
	
	void serial_send_hex(unsigned char byte){
		unsigned char h = byte >> 4;
		unsigned char l = byte & 0b1111;
		if (h < 10) 
			h = '0' + h;
		else
			h = 'A' + h - 10;
		serial_send_data(&h, 1);
		if (l < 10)
			l = '0' + l;
		else
			l = 'A' + l - 10;
		serial_send_data(&l,1);
	}
	
	void serial_send_ip(unsigned char * ip){
		for (unsigned char i=0;i<3;i++){
			serial_send_int(ip[i]);
			serial_send_string("."); 
		}
		serial_send_int(ip[3]);
	}

	void serial_send_mac(unsigned char * mac){
		for (unsigned char i=0;i<5;i++){
			serial_send_hex(mac[i]);
			serial_send_string("-");
		}
		serial_send_hex(mac[5]);
	}
#endif

//functions for software serial port

//emulates a serial software port, uses timer 1 (16bit timer with 16 bit read mode)
//will only work properly on PIC18F devices
//this code allows you to execute interrupts while sending data in software
#ifdef USE_SOFT_SP
	inline unsigned int soft_serial_readtimer(){
		unsigned int cntr;
		MAKESHORT(cntr,tmr1l,tmr1h);
		return cntr;
	}
	
	void soft_serial_send(unsigned char b){
		unsigned int nextbit=0;
		tmr1h=0;
		tmr1l=0;
		soft_serial_pin=0;
		for(unsigned char i=0;i<8;i++){
			nextbit+=1245;
			while(soft_serial_readtimer() < nextbit);			
			soft_serial_pin= b.0;
			b=b>>1;
		}
		nextbit+=1245;
		while(soft_serial_readtimer() < nextbit);			
		soft_serial_pin=1;
		nextbit+=1240;
		while(soft_serial_readtimer() < nextbit);
	}
		
	//sends arrays
	void soft_serial_send_data (unsigned char * data, unsigned char len){
		for (unsigned char i=0;i<len;i++) soft_serial_send(data[i]);
	}
	
	//sends a string
	inline void soft_serial_send_string(unsigned char * text){
		soft_serial_send_data(text,strlen(text));
	}
	
	//prints an interger
	void soft_serial_send_int(int val){
		char str[7]={0};
		sprintf(str,"%d",val);
		soft_serial_send_string(str);
	}
	
	//initis the software serial port
	inline void soft_serial_init(){
		//timer1 will be used as 16 bit timer for serial port
		t1con.RD16=1;
		t1con.T1CKPS1=0;
		t1con.T1CKPS0=0;
		t1con.T1OSCEN=0;
		t1con.TMR1CS=0;
		t1con.TMR1ON=1;
		soft_serial_tris=0;
		soft_serial_pin=1;
	}
	
	inline void soft_serial_delay(){
		return;
	}
#endif
