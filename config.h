#ifndef __config_h
	#define __config_h
	
	// - - - - - - - - - - - - - - - - - - - - 
	// serial port configurations
	// - - - - - - - - - - - - - - - - - - - -
	//configuration for hardware serial port
	#define USE_HARD_SP

	// - - - - - - - - - - - - - - - - - - - - 
	// rtc configurations
	// - - - - - - - - - - - - - - - - - - - -
	#define RTC_CLOCK 48000000  //CPU clock freq
	#define RTC_CLOCKS_PER_OVERFLOW 2097152  //number of clocks generated each timer overflow
	#define RTC_TICKS_PER_SECOND 1500000	 //timer count frequency
	#define RTC_100US_PER_OVERFLOW 437	     //each overflow we add 43.7 ms or 43700 µs
	#define RTC_ENABLE_TIMER t1con.TMR1ON    //register used to enable the timer
	#define RTC_CLEAR_TIMER tmr1l=0;tmr1h=0; //code used to clear the timer
	#define RTC_TIMER_REG_L tmr1l
	#define RTC_TIMER_REG_H tmr1h
	#define RTC_INIT_TIMER ipr1.TMR1IP=0; pie1.TMR1IE=1; t1con.RD16=1; t1con.T1CKPS1=1; t1con.T1CKPS0=1; t1con.TMR1CS=0; //code used to init the timer so it can run when RTC_ENABLE_TIMER is set to 1
	#define rtc_timezone 1
	#define START_YEAR 1970 
	#define START_WDAY 4 //1th of jan 1970 was a thuesday
	
#endif