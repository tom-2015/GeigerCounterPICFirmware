/*

Copyright (c) 2010, Embedded Adventures, www.embeddedadventures.com
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer.

- Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

- Neither the name of Embedded Adventures nor the names of its contributors
  may be used to endorse or promote products derived from this software
  without specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
THE POSSIBILITY OF SUCH DAMAGE.

Contact us at admin@embeddedadventures.com
*/

/** \file usb_hid_class.c
    \brief Callbacks for implementing USB HID class

*/

// PicPack includes
#include "pic_usb.h"
#include "pic_usb_buffer_mgt.h"


// local includes
#include "usb_hid_class.h"

// system includes
#include "memory.h"

#define req_GET_REPORT		0x01
#define req_GET_IDLE		0x02
#define req_GET_PROTOCOL	0x03
#define req_SET_REPORT		0x09
#define req_SET_IDLE		0x0a
#define req_SET_PROTOCOL	0x0b


// Variable to hold status of incoming data PC point of view
extern char outgoing;

// Variable to hold outgoing data PC point of view
#if USB_OUT_PCK_SIZE > 0
	extern char HID_USB_OUT_BUFFER[USB_OUT_PCK_SIZE];
	extern char incoming;
#endif


/** Receive fifo start point */
uns8 hid_rx_start = 0;
/** Receive fifo end point */
uns8 hid_rx_end = 0;



void usb_handle_ctrl_read_class()
{
}

void usb_handle_ctrl_write_class(uns8 *data, uns16 count){
}

void usb_handle_class_request(setup_data_packet sdp){
	#ifdef USB_DEBUG
		serial_print_str("Class request: ");
		serial_print_int(sdp.bRequest);
	#endif
	switch(sdp.bRequest){
		case req_GET_REPORT:
			break;
		case req_GET_IDLE:
			break;
		case req_GET_PROTOCOL:
			break;
		case req_SET_REPORT:
			break;
		case req_SET_IDLE:
			// we don't support whatever they want
			usb_stall_ep0();
			break;
		case req_SET_PROTOCOL:
			break;
	}
}


void usb_ep_data_out_callback(uns8 end_point, uns8 *buffer, uns16 byte_count){
	char i;

	#if USB_OUT_PCK_SIZE > 0									//If we are expecting data in
		incoming = byte_count;

		for (i=0; i<byte_count; i++){							//Loop through each data byte
			HID_USB_OUT_BUFFER[i] = buffer[i];					//Storing incoming data to local buffer
		}

		if (i < USB_OUT_PCK_SIZE){
			for (i=byte_count; i<USB_OUT_PCK_SIZE; i++){
				HID_USB_OUT_BUFFER[i] = 0;						//Clear the rest of the buffer
			}
		}
	#endif
}


void usb_ep_data_in_callback(uns8 end_point, uns16 byte_count){
	outgoing = 0;
}