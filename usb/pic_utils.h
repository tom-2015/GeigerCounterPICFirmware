#ifndef __pic_utils_h
#define __pic_utils_h

#include <system.h>


// Commonly used data types, to make everything more portable

#define int8  char
#define uns8  unsigned char
#define uns16 unsigned int
#define int16 int
#define uns32 unsigned long
#define int32 long


/*#define set_pin(port, pin) \
 set_bit(port_shadow[port - PORTA], pin); \
 port_array[port - PORTA] = port_shadow[port - PORTA];

#define clear_pin(port, pin) \
 clear_bit(port_shadow[port - PORTA], pin); \
 port_array[port - PORTA] = port_shadow[port - PORTA];*/

/*void set_pin_var(uns8 port, uns8 pin);
void clear_pin_var(uns8 port, uns8 pin);*/

#define turn_peripheral_ints_on() set_bit(intcon, PEIE)
#define turn_peripheral_ints_off() clear_bit(intcon, PEIE)

#define turn_global_ints_on() set_bit(intcon, GIE)
#define turn_global_ints_off() clear_bit(intcon, GIE)*/

// If you want to make sure the interrupts are dead, this is the best way

#define kill_interrupts()    do { \
   	 bit store_gie; \
   	 intcon.GIE = 0; \
   } while (intcon.GIE != 0)

// Start of critical section - turn off all interrupts
/*#define start_crit_sec() \
	bit store_gie = intcon.GIE; \
    kill_interrupts()*/

// End of critical section, restore interrupts if they were on before
/*#define end_crit_sec() \
	intcon.GIE = store_gie*/

#endif