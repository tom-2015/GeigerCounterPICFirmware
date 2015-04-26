#include "usb.h"
#include "usb\pic_usb.h"
#include "usb\usb_hid_class.h"
#include "usb\pic_utils.h"
#include "usb\usb_config_hid.h"
#include <memory.h>
/*char FCV_RX;
char FCV_VALUE;
char FCV_INDEX;*/

// Device name and manufacturer
char USB_USBNAME[USB_NAME_SIZE] = {38,3,'U',0,'S',0,'B',0,' ',0,'G',0,'e',0,'i',0,'g',0,'e',0,'r',0,' ',0,'C',0,'o',0,'u',0,'n',0,'t',0,'e',0,'r',0};
char USB_USBMFR[USB_MFR_SIZE] = {38,3,'U',0,'S',0,'B',0,' ',0,'G',0,'e',0,'i',0,'g',0,'e',0,'r',0,' ',0,'C',0,'o',0,'u',0,'n',0,'t',0,'e',0,'r',0};
//char USB_USBMFR[46] = {46,3,'M',0,'a',0,'t',0,'r',0,'i',0,'x',0,' ',0,'M',0,'u',0,'l',0,'t',0,'i',0,'m',0,'e',0,'d',0,'i',0,'a',0,' ',0,'L',0,'t',0,'d',0,'.',0};

const char device_report_descriptor[DEVICE_REPORT_DESCRIPTOR_SIZE] = {
0x06, 0x00, 0xFF,       // Usage Page (Vendor Defined)
0x09, 0x01,             // Usage (Vendor Usage)
0xA1, 0x01,             // Collection (Application)
0x19, 0x01,             //      Usage Minimum (Vendor Usage = 1)
0x29, 0x40,             //      Usage Maximum (Vendor Usage = 64)
0x15, 0x00,             //      Logical Minimum (Vendor Usage = 0)
0x26, 0xFF, 0x00,       //      Logical Maximum (Vendor Usage = 255)
0x75, 0x08,             //      Report Size (Vendor Usage = 8)
0x95, 0x40,             //      Report Count (Vendor Usage = 64)
0x81, 0x02,             //      Input (Data, Var, Abs)
0x19, 0x01,             //      Usage Minimum (Vendor Usage = 1)
0x29, 0x40,             //      Usage Maximum (Vendor Usage = 64)
0x91, 0x02,             //      Output (Data, Var, Ads)
0xC0};                  // End Collection

//Serial Number
char USB_SERIAL[USB_SERIAL_SIZE] = {10,3,'0',0,'0',0,'0',0,'1',0};

// Variable to hold outgoing data PC point of view
#if USB_OUT_PCK_SIZE > 0
	char incoming = 0;
	char HID_USB_OUT_BUFFER[USB_OUT_PCK_SIZE]; //holds data incoming (going out of PC)
#endif

// Variable to hold status of the outgoing USB data
char outgoing = 0;

// Variable to hold status of the USB connection
char HID_USB_status = 0;

void usb_device_configured_callback(void){
	HID_USB_status = 1;
	outgoing = 0; // changed for raspberrypi
}

void usb_device_reset_callback(void){ //added for raspberrypi, to be able to handle a device reset by host
	HID_USB_status = 0;
}

//configures
void usbhid_configure_system(){
	kill_interrupts();				// turn off interrupts just in case
	usb_setup();
	turn_peripheral_ints_on();
	turn_global_ints_on();
}

//initializes
char usbhid_initialise_hid(){
		uns16 delay_counter;
		usb_configure_structures();
		usbhid_configure_system();
		delay_ms(100);
		usb_enable_module();
		delay_counter = 0;
		return 0;
}

//sends data to the usb
//first call / check no transmission is busy with bool usbhid_outgoing()
//will return 0 on success
unsigned char usbhid_send_data(unsigned char * buffer, unsigned char size){
		if (outgoing) return 1; //we are still busy
		usb_send_data(1, (uns8 *) buffer , USB_IN_PCK_SIZE, 0);
		outgoing = 1;
		return 0;
}

//returns number of bytes received
unsigned char usbhid_check_rx(){
	char retval = 0;
	#if USB_OUT_PCK_SIZE > 0
		if(incoming){
			retval = incoming;
			incoming = 0;
		}
	#endif
	return retval;
}

//copies data from HID_USB_OUT_BUFFER
void usbhid_receive_data(unsigned char * buffer, unsigned char len){
	#if USB_OUT_PCK_SIZE > 0
		if (len > USB_OUT_PCK_SIZE) len = USB_OUT_PCK_SIZE;
		memcpy(buffer, HID_USB_OUT_BUFFER, len);
	#endif
}

//checks if connected to usb
bool usbhid_connected () {
	return HID_USB_status !=0;
}

//checks if any packets are waiting for sending
bool usbhid_outgoing() {
	return outgoing !=0;
}

//waits for outgoing to become 0 and returns true
//if we needed to wait longer than USB_IN_DATA_INT*2 we return false (communication corrupted)
bool usbhid_wait_outgoing(){
	unsigned char i=0;
	while (outgoing!=0 && i < USB_IN_DATA_INT*2){
		delay_ms(1);
		i++;
	}
	return outgoing==0;
}
