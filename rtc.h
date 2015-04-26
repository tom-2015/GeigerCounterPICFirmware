//handles timer interrupts,... to generate a realtime clock

//before including define:

/*
#define RTC_CLOCK 48000000  //CPU clock freq
#define RTC_CLOCKS_PER_OVERFLOW 2097152 //number of clocks generated each timer overflow
#define RTC_ENABLE_TIMER t3con.TMR3ON //register used to enable the timer
#define RTC_CLEAR_TIMER tmr3l=0;tmr3h=0; //code used to clear the timer
#define RTC_INIT_TIMER pie2.TMR3IE=1; t3con.T3CKPS1=1; t3con.T3CKPS0=1; t3con.TMR3CS=0; //code used to init the timer so it can run when RTC_ENABLE_TIMER is set to 1
*/

#ifndef _REALTIMECLOCK_H
	#define _REALTIMECLOCK_H
	#include <system.h>
	#include "config.h"

	 typedef struct {
		unsigned int  tm_year;
		unsigned int  tm_yday;
		unsigned char tm_mon;
		unsigned char tm_mday;
		unsigned char tm_wday;
		unsigned char tm_hour;
		unsigned char tm_min;
		unsigned char tm_sec;
	 } tm;
	 
	#define time_t unsigned long
	
	void rtc_init(); //init the clock  keeps seconds since 1970 and nr of clock ticks since restart 
	void rtc_handle_timer(); //should be called in the intterupt routine
	time_t rtc_get_time(); //returns seconds since start or 1970
	unsigned char rtc_get_time_low(); //returns only the lower byte of the time of rtc_get_time()
	unsigned int rtc_get_ms(); //returns number of ms approx.
	unsigned int rtc_get_100us(); //returns number of 100us approx.
	unsigned char rtc_get_hour_utc(); //returns the hour digit of UTC time, no timezone, no dls
	unsigned char rtc_get_hour(); //returns the hour digit
	unsigned char rtc_get_min(); //returns the min. digit
	unsigned char rtc_get_sec(); //returns seconds digit
	
	void rtc_set_daylightsaving (bool enabled);
	bool rtc_get_daylightsaving ();
	void rtc_set_auto_daylightsaving(bool enabled);
	bool rtc_get_auto_daylightsaving();
	time_t mktime(tm *p); //makes time in sec since START_YEAR from a string
	void offtime(tm *ts, time_t t); //creates a time in sec since START_YEAR from a time_t structure
	void asctime(tm *p, unsigned char *q, unsigned char format); //generates a time string from time structure
	void date(unsigned char * str, unsigned char format, time_t timestamp); //generates a time string from number of seconds
	void date(unsigned char * str, unsigned char format); //generates a string from the current date/time in the rtc
	unsigned long localtime (unsigned long time); //converts utc time to local time adds/substracts 1 or more hours according to timezone & daylightsaving
	bool isleap(int year); //returns true if year is a leap year	
	
	void rtc_set_time(unsigned long seconds); //sets the time
	bool rtc_is_time_set(); //returns if the rtc was synced
	void rtc_clear_time_set(); //clears the bit that says the rtc is synced
	
	unsigned long rtc_get_sync_time(); //returns the time when the rtc was last synced
	#ifdef RTC_DOWNLOAD_HTTP
		bool rtc_download_time_url(unsigned char * url); //downloads the time from http url, the url must return a STRING with decimal number of seconds since 1970 
	#endif
	#ifdef RTC_DOWNLOAD_NTP
		bool rtc_download_time_ntp(unsigned char * server);//downloads the time from a time server using simple TIME protocol port 37 see http://www.bytefusion.com/products/ntm/pts/rfc868.htm
	#endif
	unsigned long rtc_get_tick(); //returns number of clock ticks since processor start is reset on rtc_init
	unsigned long rtc_get_tick_div256(); //returns the number of clock ticks since processor start devided by 256 reset on rtc_init
	unsigned long  rtc_get_tick_64k(); //returns number of clock ticks deviced by 256*256
	unsigned long rtc_seconds_since_boot(); //returns the number of seconds since last cpu start
	unsigned long rtc_dls_start();
	unsigned long rtc_dls_stop();
	bool rtc_is_dls();
	bool rtc_is_dls(unsigned long time);
	unsigned long utc_time(unsigned long local_time);
	unsigned long localtime (unsigned long time);

#endif