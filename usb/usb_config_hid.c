#include "usb.h"
#include "pic_usb.h"

typedef struct _configuration {
	configuration_descriptor HID_config;
	interface_descriptor HID_interface;
	hid_descriptor HID_hid;
	endpoint_descriptor HID_ep_in;

	#if USB_OUT_PCK_SIZE > 0
		endpoint_descriptor HID_ep_out;
	#endif

} configuration;


configuration complete_HID_configuration;
device_descriptor my_device_descriptor;
configuration_descriptor my_config;
interface_descriptor my_interface;
hid_descriptor my_hid;
endpoint_descriptor my_ep;

#if USB_OUT_PCK_SIZE > 0
	endpoint_descriptor my_ep2;
#endif


uns8 string_00 [] = {
		4,	// length,
		dt_STRING,	// descriptor type
		9,	// magic for US english
		4
	};


void usb_configure_structures(void){
	// device descriptor - - - - - - - - - -
	my_device_descriptor.length = 18; 								// bytes long
	my_device_descriptor.descriptor_type = dt_DEVICE; 				// DEVICE 01h
	my_device_descriptor.usb_version = 0x0110;						// usb version 1.10
	my_device_descriptor.device_class = 0;							// class
	my_device_descriptor.device_subclass = 0;						// subclass (unused)
	my_device_descriptor.device_protocol = 0;						// protocol	(unused)
	my_device_descriptor.max_packet_size_ep0 = USB_EP0_OUT_SIZE;	// max packet size for end point 0
	my_device_descriptor.vendor_id = USB_VID;						// Microchip's vendor
	my_device_descriptor.product_id = USB_PID;						// Microchip's product
	my_device_descriptor.device_release = USB_VERSION; 				// version 2.0 of the product
	my_device_descriptor.manufacturer_string_id = 1;				// string 1 for manufacturer
	my_device_descriptor.product_string_id = 2;						// string 2 for product
	my_device_descriptor.serial_string_id = 0;						// string 3 for serial number
	my_device_descriptor.num_configurations = 1;					// number of configurations

	// configuration descriptor - - - - - - - - - -
	my_config.length = 0x09;										// length,
	my_config.descriptor_type = dt_CONFIGURATION;					// descriptor_type,
	my_config.total_length = sizeof(complete_HID_configuration);	// total_length;
	my_config.num_interfaces = 0x01;								// num_interfaces,
	my_config.configuration_value = 0x01;							// configuration_value,
	my_config.configuration_string_id = 0x00;						// configuration_string_id,
	my_config.attributes = 0b10000000; 								// attributes (bus powered, no remote wake up)
	my_config.max_power = USB_MAX_CURRENT;							// max_power; (200ma)

	// Communication interface descriptor - - - - - - - - - - - -
	my_interface.length = 0x09;										// length,
	my_interface.descriptor_type = dt_INTERFACE;					// descriptor_type,
	my_interface.interface_number = 0x00;							// interface_number, (starts at zero)
	my_interface.alternate_setting = 0x00;							// alternate_setting, (no alternatives)
	#if USB_OUT_PCK_SIZE > 0
		my_interface.num_endpoints = 0x02;							// num_endpoints, **************************************** 1 or 2
	#else
		my_interface.num_endpoints = 0x01;
	#endif
	my_interface.interface_class = 0x03;							// interface_class, (HID)
	my_interface.interface_subclass = USB_SUBCLASS;					// interface_subclass, (none/boot)
	my_interface.interface_protocol = USB_INTERFACE;					// interface_protocol, (none/keyboard/mouse)
	my_interface.interface_string_id = 0x00;						// interface_string_id;

	// HID descriptor - - - - - - - - - - - - -
	my_hid.length = 0x09;											// length,
	my_hid.descriptor_type = dt_HID;								// descriptor_type;
	my_hid.hid_spec = 0x0110;										// hid_spec in BCD (1.10)
	my_hid.country_code = USB_COUNTRY;								// country_code, (0=not country specific)
	my_hid.num_class_descriptors = 0x01;							// num_class_descriptors, (1)
	my_hid.class_descriptor_type = 0x22;							// class_descriptor_type; (0x22 = report)
	my_hid.class_descriptor_length = sizeof(device_report_descriptor);	// class_descriptor_length; (report descriptor length)

	// Data IN endpoint descriptor - - - - - - - - - - - - -
	my_ep.length = 0x07;											// length,
	my_ep.descriptor_type = dt_ENDPOINT;							// descriptor_type,
	my_ep.endpoint_address = 0b10000001;							// endpoint_address, (Endpoint 1, IN)
	my_ep.attributes = 0b00000011;									// attributes; (Interrupt)
	my_ep.max_packet_size = USB_IN_PCK_SIZE;							// max_packet_size;
	my_ep.interval = USB_IN_DATA_INT;								// interval (10ms)


	#if USB_OUT_PCK_SIZE > 0
		// Data OUT endpoint descriptor - - - - - - - - - - - - -
		my_ep2.length = 0x07;											// length,
		my_ep2.descriptor_type = dt_ENDPOINT;							// descriptor_type,
		my_ep2.endpoint_address = 0b00000001;							// endpoint_address, (Endpoint 1, OUT)
		my_ep2.attributes = 0b00000011;									// attributes; (Interrupt)
		my_ep2.max_packet_size = USB_OUT_PCK_SIZE;						// max_packet_size;
		my_ep2.interval = USB_OUT_DATA_INT;								// interval (10ms)
	#endif

	// Collect into one enumeration structure - - - - - - - - - - - - -
	complete_HID_configuration.HID_config = my_config;
	complete_HID_configuration.HID_interface = my_interface;
	complete_HID_configuration.HID_hid = my_hid;
	complete_HID_configuration.HID_ep_in = my_ep;

	#if USB_OUT_PCK_SIZE > 0
		complete_HID_configuration.HID_ep_out = my_ep2;
	#endif

}



void usb_get_descriptor_callback(uns8 descriptor_type, uns8 descriptor_num,
                                 uns8 **rtn_descriptor_ptr, uns16 *rtn_descriptor_size) {

	uns8 *descriptor_ptr;
	uns16 descriptor_size;

	descriptor_ptr = (uns8 *) 0;	// this means we didn't find it
	switch (descriptor_type) {
		case dt_DEVICE:
			descriptor_ptr = (uns8 *)&my_device_descriptor;
			descriptor_size = sizeof(my_device_descriptor);
			break;
		case dt_CONFIGURATION:
			descriptor_ptr = (uns8 *) &complete_HID_configuration;
			descriptor_size = sizeof(complete_HID_configuration);
			break;
		case dt_STRING:
			switch (descriptor_num) {
				case 00:
					descriptor_size = sizeof(string_00);
					descriptor_ptr = string_00;
					break;
				case 01:
					descriptor_size = sizeof(USB_USBMFR);
					descriptor_ptr = USB_USBMFR;
					break;
				case 02:
					descriptor_size = sizeof(USB_USBNAME);
					descriptor_ptr = USB_USBNAME;
					break;

			}
			break;
		case dt_DEVICE_QUALIFIER:
			// we don't handle this, send a stall
			break;
		case dt_HID_REPORT:
			descriptor_size = sizeof(device_report_descriptor);
			descriptor_ptr = (uns8 *) &device_report_descriptor;
			break;
		default:

	}
	*rtn_descriptor_ptr = descriptor_ptr;
	*rtn_descriptor_size = descriptor_size;
}


