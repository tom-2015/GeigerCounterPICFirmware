#include "rtc.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

// Three character representation of month names
rom char * month_str = "JanFebMarAprMayJunJulAugSepOctNovDec";
// Three character representation of the day of the week
rom char * wday_str = "SunMonTueWedThuFriSat";

// The following table is used to construct the string with different
// formats produced by asctime(), each group represents a time format
// that is composed by a sequence of 1 to 4 smaller character strings.
 rom char * tformat = {1, 2, 3, 4,
                       2, 3, 0, 0,
                       3, 0, 0, 0,
                       5, 0, 0, 0,
                       3, 5, 0, 0,
                       5, 3, 0, 0, 
                       6, 0, 0, 0,
                       5, 6, 0, 0,
                       6, 5, 0, 0};
// Days on each month for regular and leap years
rom char * days_month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31,
						 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};


unsigned long rtc_overflows; //holds number of ticks of the rtc timer
unsigned long rtc_time; //hold the time since 1970
unsigned int  rtc_100us; //holds the ms
unsigned long rtc_boot; //seconds since boot
unsigned long rtc_sync; //holds last sync time
unsigned char rtc_ticks[6]; //holds number of clock ticks
bit rtc_daylightsaving; //true if daylightsaving is enabled (time + 1h) = summertime
bit rtc_is_set; //when a time is set turns true
bit auto_adjust_daylightsaving; //automatically adjust daylightsaving

//init rtc
void rtc_init(){
	RTC_ENABLE_TIMER=0;
	rtc_overflows=0;
	rtc_time=0;
	rtc_boot=0;
	rtc_100us=0;
	rtc_ticks[0]=0;
	rtc_ticks[1]=0;
	rtc_ticks[2]=0;
	rtc_ticks[3]=0;
	rtc_ticks[4]=0;
	rtc_ticks[5]=0;
	rtc_daylightsaving=0;
	auto_adjust_daylightsaving=0;
	RTC_CLEAR_TIMER
	RTC_INIT_TIMER
	rtc_is_set=0;
	rtc_sync = 0;
	RTC_ENABLE_TIMER=1;
}

void rtc_get_tick_copy(){
	while ((RTC_TIMER_REG_L > 200) && (RTC_TIMER_REG_H == 0xFF)); //must wait for timer overflow, not enough time for copy the long
	rtc_ticks[0] = RTC_TIMER_REG_L;
	rtc_ticks[1] = RTC_TIMER_REG_H;
}

unsigned long rtc_get_tick(){
	rtc_get_tick_copy();
	return *((unsigned long*)& rtc_ticks[0]);
}

unsigned long rtc_get_tick_div256(){
	rtc_get_tick_copy();
	return *((unsigned long*)& rtc_ticks[1]);
}

unsigned long  rtc_get_tick_64k(){
	rtc_get_tick_copy();
	return (unsigned long)rtc_ticks[2];
}

unsigned long rtc_seconds_since_boot(){
	return rtc_time - rtc_boot;
}

void rtc_handle_timer(){
	(*((unsigned long*)&rtc_ticks[2]))++;
	rtc_overflows+=RTC_CLOCKS_PER_OVERFLOW;
	rtc_100us +=RTC_100US_PER_OVERFLOW;
	if (rtc_overflows >= RTC_CLOCK){
		rtc_100us = 0;
		rtc_time++;
		rtc_overflows -= RTC_CLOCK;
	}
}

unsigned int rtc_get_ms(){
	return rtc_100us/10;
}

unsigned int rtc_get_100us(){
	return rtc_100us;
}

//without timezone/daylight saving!
unsigned long rtc_get_time(){
	return rtc_time;
}

unsigned char rtc_get_hour_utc(){
	return (rtc_time / 3600) % 24;
}

//returns the hour including timezone & daylightsavings
unsigned char rtc_get_hour(){
	return ((rtc_time / 3600)+rtc_timezone+rtc_daylightsaving) % 24;
}

unsigned char rtc_get_min(){
	return (rtc_time / 60) % 60;
}

unsigned char rtc_get_sec(){
	return rtc_time % 60;
}

unsigned char rtc_get_time_low(){ //returns only the lower byte of the time (is seconds)
	return rtc_time & 0xFF; 
}

//enable/disable daylightsaving (summertime = +1h)
void rtc_set_daylightsaving (bool enabled){
	rtc_daylightsaving = enabled;
}

//returns if daylightsaving is enabled (by default it is disabled at rtc_init)
bool rtc_get_daylightsaving (){
	return rtc_daylightsaving;
}

//turns automatic daylightsaving on/off
void rtc_set_auto_daylightsaving(bool enabled){
	auto_adjust_daylightsaving = enabled;
}

bool rtc_get_auto_daylightsaving(){
	return auto_adjust_daylightsaving;
}

//sets the current timestamp
void rtc_set_time(unsigned long seconds){
	RTC_ENABLE_TIMER=0;
	if (rtc_is_set==0 && rtc_boot==0) rtc_boot = seconds - rtc_time;
	rtc_is_set=1;
	rtc_sync = seconds;
	rtc_overflows=0;
	rtc_100us=0;
	rtc_time=seconds;
	RTC_CLEAR_TIMER
	RTC_ENABLE_TIMER=1;
	if (auto_adjust_daylightsaving) rtc_set_daylightsaving(rtc_is_dls());
}

//returns if the rtc is initialized and synchronized
bool rtc_is_time_set(){
	return rtc_is_set;
}

void rtc_clear_time_set(){
	rtc_is_set =false;
}

unsigned long rtc_get_sync_time(){
	return rtc_sync;
}

//add code that can sync the clock (with sntp)
/*bool rtc_download_time_http(unsigned char *url){
	#ifdef RTC_DOWNLOAD_HTTP				
		HTTPRespons result;
		unsigned long time=0;
		if (HTTPDownloadFile(url, "GET",  &result)){
			sram_open(result.headerstart+result.headerlen,true); 
			for(unsigned char l=0;l<result.filesize;l++){
				unsigned char b = sram_read_byte();
				time = time*10 + b-'0';
			}
			sram_close();
			sram_pop(NULL,result.headerlen+result.filesize);//remove the file from the external ram if not needed anymore
			rtc_set_time(time);
			return time!=0;
		}
		return false;
	#endif
}

bool rtc_download_time_ntp(unsigned char * server){
	#ifdef RTC_DOWNLOAD_NTP
		UDP_SOCKET TimeSock;
		NODE_INFO RemoteHost;
		bool res=false;
		if (DNSResolveBlock(server,DNS_TYPE_A, &RemoteHost.IPAddr, NULL)){ //do dns resolve
			if (ARPResolveBlock(&RemoteHost.IPAddr, &RemoteHost.MACAddr, NULL)){ //do arp resolve
				TimeSock = UDPOpen( 0, &RemoteHost, RTC_NTP_PORT); //open socket
				if (TimeSock!=INVALID_UDP_SOCKET && UDPIsPutReady(TimeSock)>2){
					unsigned char i=0;
					while (i<4 && res==false){//we try getting a reply 4 times
						unsigned long maxtime=rtc_get_time()+RTC_DOWNLOAD_TIMEOUT; //we set our max time
						UDPPutArray("X\r\n",3);
						UDPFlush();
						while(UDPIsGetReady(TimeSock)!=4 && rtc_get_time() < maxtime){ //we wait until received 4 bytes
							network_handle_tasks();
						}
						if (UDPIsGetReady(TimeSock)==4){ //test if we have received data
							unsigned long time;
							UDPGetArray((unsigned char *)&time,4); //get the time
							time=swapl(time); //swap big to little endian
							time -=2208988800; //the time is in seconds since 1900 we need since 1970
							rtc_set_time(time); //adjust the clock
							res=true; //return true
						}
						i++;
					}
				}
				UDPClose(TimeSock);
			}
		}
		return res;
	#endif
}*/
					  
 // isleap() takes the argument year and returns a non zero value if it is a
 // leap year. 
bool isleap(int year) {
   bool y;
   y = (( year % 4 == 0 ) && ( year % 100 != 0 || year % 400 == 0 ));
   return(y);
}
  
 //*****************************************************************************
 // mktime() take a tm time structure and generates the equivalent time_t
 // value.
time_t mktime(tm *p) {
   time_t j;
   int i;
 
   j = 0;
 
   for(i=START_YEAR ; i < p->tm_year ; i++ ) {
     if (isleap(i))
		j+=366;
	 else
		j+=365;
   }
   
   unsigned char leapmonthoffset=0;
   if (isleap(p->tm_year)) leapmonthoffset=12;
   
   for(i=0; i < p->tm_mon;i++){
     j += days_month[leapmonthoffset+(unsigned char)i];
   }
 
   j = j + p->tm_mday - 1;
   j *= 86400;      // convert to seconds
 
   j = j + (time_t) (p->tm_hour * 3600L);
   j = j + (time_t) (p->tm_min * 60L);
   j = j + (time_t) (p->tm_sec);
 
   return(j);
}
 
 //*****************************************************************************
 // offtime() takes a time_t value and generates the corresponding tm time
 // structure taking in account leap years. It also takes an offset value
 // as argument to facilitate correction for Time Zone and Day Light Savings
 // Time.
void offtime(tm *ts, time_t t) {
   long days, j;
   int i, k;
   char *p;
 
   //t += offset;                               // Correct for TZ/DST offset
   days = t / 86400;                          // Integer number of days
   j = t % 86400;                             // Fraction of a day
   ts->tm_hour = j / 3600;                    // Integer number of hours
   j %= 3600;                                 // Fraction of hour
   ts->tm_min = j / 60;                       // Integer number of minutes
   ts->tm_sec = j % 60;                       // Remainder seconds
   ts->tm_wday = ( days + START_WDAY ) % 7;   // Day of the week
 
   i = START_YEAR;
 
   // Count the number of days per year taking in account leap years
   // to determine the year number and remaining days
   while(days >= (j = isleap(i) ? 366 : 365) ) {
     i++;
     days -= j;
    }
 
   while(days < 0) {
     i--;
     days += isleap(i) ? 366 : 365;
   }
 
   ts->tm_year = i;                           // We have the year  
   ts->tm_yday = days;                        // And the number of days
 
   unsigned char leapmonthoffset=0;
   if (isleap(i)) leapmonthoffset=12;
   // Count the days for each month in this year to determine the month
   for(k=0; days >= days_month[leapmonthoffset + k] ; ++k ) {
     days -= days_month[leapmonthoffset + k];
   }
 
   ts->tm_mon = k;                            // We have the month
   ts->tm_mday = days + 1;                    // And the day of the month
}
 
 //*****************************************************************************
 // asctime() takes a tm time structure and converts the values into different
 // character string formats. The seecond argument is a pointer to a character
 // array that must be defined by the calling function with enough memory
 // allocated to hold the resulting string, the string is terminated with the
 // null (\0) character and does not contain CRLF (\n\r).
 //
 // The last argument specifies the desired output format for the string,
 // current supported formats are:
 //
 //    0  DDD MMM dd HH:MM:SS YYYY
 //    1  MMM dd HH:MM:SS
 //    2  HH:MM:SS
 //    3  dd/mm/yy
 //    4  HH:MM:SS dd/mm/yy
 //    5  dd/mm/yy HH:MM:SS
 //    6  HH:MM
 //    7  dd/mm/yy HH:MM 
 //
void asctime(tm *p, unsigned char *q, unsigned char format) {
	unsigned char i, j,k, romptr;
	i = 0;
	for(j=0 ; j < 4 ; j++ ) {
		if(tformat[format*4+j]==0) {
			i--;
			break;
		}
		switch(tformat[format*4+j]) {
		case 1: // DDD
			 //strncpy(&q[i], wday_str[p->tm_wday*3],3);
			 //i += 3;
			 romptr=p->tm_wday*3;
			 for (k=0;k<3;k++){
				q[i] = wday_str[romptr];
				i++;
				romptr++;
			}
			break;
		 case 2: // MMM dd
			romptr=p->tm_mon*3;
			for (k=0;k<3;k++){
				q[i]=month_str[romptr];
				i++;
				romptr++;
			}
			q[i++] = ' ';
			itoa(p->tm_mday,&q[i++],10);
			if ( p->tm_mday > 9 ) i++;
			break;
		case 3: // HH:MM:SS
			if(p->tm_hour < 10 ) {
				q[i++] = '0';
				itoa(p->tm_hour, &q[i++],10);
			}else{
				itoa(p->tm_hour, &q[i],10);
				i += 2;
			}
			q[i++] = ':';
			if(p->tm_min < 10 ) {
				q[i++] = '0';
				itoa(p->tm_min, &q[i++],10);
			}else{
				itoa(p->tm_min, &q[i],10);
				i += 2;
			}
			q[i++] = ':';    
			if(p->tm_sec < 10 ) {
				q[i++] = '0';
				itoa(p->tm_sec, &q[i++],10);
			}else{
				itoa(p->tm_sec, &q[i],10);
				i += 2;
			}
			break;
		case 4: // YYYY
			itoa(p->tm_year, &q[i],10);
			i += 4;
			break;
		case 5: // mm/dd/yy
			if(p->tm_mday < 10 ){
				q[i++] = '0';
				itoa(p->tm_mday, &q[i++],10);
			}else{
				itoa(p->tm_mday, &q[i],10);
				i += 2;
			}		
			q[i++] = '/'; 
			if ( p->tm_mon < 9 ) {
				q[i++] = '0';
				itoa(p->tm_mon + 1, &q[i++],10);
			}else{
				itoa(p->tm_mon + 1, &q[i],10);
				i += 2;
			}  
			q[i++] = '/';    
			itoa(p->tm_year, &q[i],10);
			q[i]=q[i+2];
			i++;
			q[i]=q[i+2];
			i++;
			//memcpy((void *)&q[i], (void *)&q[i+2], 2);
			//i += 2;
			q[i] = ' ';
			q[i+1] = ' ';
			break;
		 case 6: // HH:MM
			if (p->tm_hour < 10) {
				q[i++] = '0';
				itoa(p->tm_hour, &q[i++],10);
			}else{
				itoa(p->tm_hour, &q[i],10);
				i += 2;
			}
			q[i++] = ':';    
			if( p->tm_min < 10 ) {
				q[i++] = '0';
				itoa(p->tm_min, &q[i++],10);
			}else{
				itoa(p->tm_min, &q[i],10);
				i += 2;
			}
			break;
		}
       q[i++] = ' ';
     }
   q[i] = '\0';
 }

//converts utc time to local time (adds time zone and daylightsaving)
unsigned long localtime (unsigned long time){
	return time + (rtc_timezone+rtc_daylightsaving) * 3600;
}

unsigned long utc_time(unsigned long local_time){
	return local_time - (rtc_timezone+rtc_daylightsaving) * 3600;
}

//prints a date into a string
// str: buffer to print in (must be long enough)
// format: the format as defined by asctime function
// timestamp: unsigned long holding the time in seconds since START_YEAR
void date(unsigned char * str, unsigned char format, time_t timestamp){
	tm ts;
	offtime(&ts, timestamp);
	asctime(&ts, str, format);
}


//prints the current date/time into a string
// str: buffer to print to (must be large enough)
// format: the format as defined in sctime function
void date(unsigned char * str, unsigned char format){
	date(str,format, localtime(rtc_get_time()));
}


unsigned long dls_time(unsigned char month){
	tm time;
	offtime(&time,rtc_time);
	time.tm_yday=0;
	time.tm_mon=month;
	time.tm_mday=1;
	time.tm_hour=1;//dls stops/starts at 1 am UTC
	time.tm_min=0;
	time.tm_sec=0;
	
	offtime(&time, mktime(&time)); //first we need to get the weekday nr of 1/3

	time.tm_mday =  31 - (time.tm_wday + 30) % 7; //this is the day in march/october we will start or stop with dls (last sunday of march or october)
	
	return mktime(&time); //this is the time we will start/stop using the dls
}

//returns the time we will start using the dls this year (last sunday of march)
//the time is UTC time
unsigned long rtc_dls_start(){
	return dls_time(2);
}

//returns the time we will stop using dls this year (last sunday of october)
//the time is UTC time
unsigned long rtc_dls_stop(){
	return dls_time(9);
}

//returns true if dls should be turned on (based on the internal value of the rtc)
bool rtc_is_dls(){
	return rtc_time >= rtc_dls_start() && rtc_time < rtc_dls_stop();
}

//same as above but for a given time
bool rtc_is_dls(unsigned long time){
	return time >= rtc_dls_start() && time < rtc_dls_stop();
}