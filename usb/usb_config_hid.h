#ifndef USB_CONFIG_HID
	#define USB_CONFIG_HID
	
	void usb_configure_structures(void);
	void usb_get_descriptor_callback(uns8 descriptor_type, uns8 descriptor_num, uns8 **rtn_descriptor_ptr, uns16 *rtn_descriptor_size);

#endif