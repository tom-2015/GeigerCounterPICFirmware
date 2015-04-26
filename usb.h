#ifndef USB_CONFIG_H
	#define USB_CONFIG_H
	
	// Component Defines
	#define USB_VID 0x04D8					//Microchip
	#define USB_PID 0x000C
	#define USB_VERSION	(1	<< 8) + 0		//0x0200 = 2.0
	#define USB_ENUMWAIT 10					//1 or 0
	#define USB_ENUMTIME 0					//1 - 255

	#define USB_MAX_CURRENT	75				//x2 mA so 0x05 = 10mA
	#define USB_COUNTRY		0				//default is 0
	#define USB_SUBCLASS	0				//0 = None / 1 = Boot (standard mice / keyboards for bios operation etc)
	#define USB_INTERFACE	0				//0 = None / 1 = Keyboard / 2 = Mouse
	#define USB_IN_PCK_SIZE	64				//In to PC - Number of bytes - Max 64
	#define USB_IN_DATA_INT  100			//In to PC - Interrupt Frequency ms
	#define USB_OUT_PCK_SIZE 64				//Out from PC - Number of bytes - Max 64
	#define USB_OUT_DATA_INT 100			//Out From PC - Interrupt Frequency ms.

	#define USB_USB_TYPE1
	#define USB_HIGHEST_EP 		1
	#define USB_BUS_POWERED
	
	#ifdef USB_USB_TYPE1									//2455 Family
		#define USB_DESCRIPTOR_BASE_ADDRESS	0x400
		#define USB_EP0_OUT_ADDR 	0x0500
		#define USB_EP0_IN_ADDR 	0x0508
		#define USB_EP1_IN_ADDR		0x0510
		#define USB_EP1_OUT_ADDR	0x0550
	#endif
	
	#ifdef USB_USB_TYPE2									//2450 Family
		#define USB_DESCRIPTOR_BASE_ADDRESS	0x400
		#define USB_EP0_OUT_ADDR 	0x0480
		#define USB_EP0_IN_ADDR 	0x0488
		#define USB_EP1_IN_ADDR		0x0490
		#define USB_EP1_OUT_ADDR	0x04C0
	#endif
	
	#ifdef USB_USB_TYPE3									//14K50 Family
		#define USB_DESCRIPTOR_BASE_ADDRESS	0x200
		#define USB_EP0_OUT_ADDR 	0x0280
		#define USB_EP0_IN_ADDR 	0x0288
		#define USB_EP1_IN_ADDR		0x0290
		#define USB_EP1_OUT_ADDR	0x02C0
	#endif
	
	#ifndef USB_DESCRIPTOR_BASE_ADDRESS
		#error "Target device does not have USB functionality"
	#endif
	
	#define USB_EP0_OUT_SIZE 	8
	#define USB_EP0_IN_SIZE 	8
	#define USB_EP1_IN_SIZE		USB_IN_PCK_SIZE
	
	#if USB_OUT_PCK_SIZE > 0
		#define USB_EP1_OUT_SIZE	USB_OUT_PCK_SIZE
	#endif
	
	#define USB_CALLBACK_ON_CTRL_CLASS
	#define USB_CALLBACK_ON_DEVICE_CONFIGURED
	#define USB_CALLBACK_ON_DEVICE_RESET
	#define USB_EP_DATA_CALLBACK
	
	
	void usbhid_configure_system();
	char usbhid_initialise_hid();
	unsigned char usbhid_send_data(unsigned char * data, unsigned char len);
	unsigned char usbhid_check_rx();
	void usbhid_receive_data(unsigned char * buffer, char len);
	bool usbhid_connected();
	bool usbhid_outgoing();
	void usb_device_configured_callback(void);
	void usb_device_reset_callback(void);
	bool usbhid_wait_outgoing();
	
	#define DEVICE_REPORT_DESCRIPTOR_SIZE 29
	#define USB_NAME_SIZE 40
	#define USB_MFR_SIZE 40
	#define USB_SERIAL_SIZE 10
	
	extern char outgoing;
	extern const char device_report_descriptor[DEVICE_REPORT_DESCRIPTOR_SIZE];
	extern char USB_USBNAME[USB_NAME_SIZE];
	extern char USB_USBMFR[USB_MFR_SIZE];
	extern char USB_SERIAL[USB_SERIAL_SIZE];
	
#endif
