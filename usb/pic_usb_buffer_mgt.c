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

#include "pic_usb_buffer_mgt.h"

#if (USB_DESCRIPTOR_BASE_ADDRESS == 0x200)   
	#define USBEP0O		0x200
	#define USBEP0I		0x204
	#define USBEP1O		0x208
	#define USBEP1I		0x20C
	#define USBEP2O		0x210
	#define USBEP2I		0x214
	#define USBEP3O		0x218
	#define USBEP3I		0x21C
#endif

#if (USB_DESCRIPTOR_BASE_ADDRESS == 0x400)
	#define USBEP0O		0x400
	#define USBEP0I		0x404
	#define USBEP1O		0x408
	#define USBEP1I		0x40C
	#define USBEP2O		0x410
	#define USBEP2I		0x414
	#define USBEP3O		0x418
	#define USBEP3I		0x41C
#endif


buffer_descriptor bd0out@USBEP0O;
buffer_descriptor bd0in @USBEP0I;
buffer_descriptor bd1out@USBEP1O;
buffer_descriptor bd1in @USBEP1I;
buffer_descriptor bd2out@USBEP2O;
buffer_descriptor bd2in @USBEP2I;
buffer_descriptor bd3out@USBEP3O;
buffer_descriptor bd3in @USBEP3I;

uns8 buffer_0_out[USB_EP0_OUT_SIZE]@ USB_EP0_OUT_ADDR;
uns8 buffer_0_in [USB_EP0_IN_SIZE] @ USB_EP0_IN_ADDR;

#ifdef USB_EP1_IN_SIZE
	uns8 buffer_1_in [USB_EP1_IN_SIZE] @USB_EP1_IN_ADDR;
#endif
#ifdef USB_EP1_OUT_SIZE
	uns8 buffer_1_out [USB_EP1_OUT_SIZE] @ USB_EP1_OUT_ADDR;
#endif
#ifdef USB_EP2_IN_SIZE
	uns8 buffer_2_in [USB_EP2_IN_SIZE] @ USB_EP2_IN_ADDR;
#endif
#ifdef USB_EP2_OUT_SIZE
	uns8 buffer_2_out [USB_EP2_OUT_SIZE] @ USB_EP2_OUT_ADDR;
#endif
#ifdef USB_EP3_IN_SIZE
	uns8 buffer_3_in [USB_EP3_IN_SIZE] @ USB_EP3_IN_ADDR;
#endif
#ifdef USB_EP3_OUT_SIZE
	uns8 buffer_3_out [USB_EP3_OUT_SIZE] @ USB_EP3_OUT_ADDR;
#endif

buffer_descriptor * ep_in_bd_location[USB_HIGHEST_EP + 1];
buffer_descriptor * ep_out_bd_location[USB_HIGHEST_EP + 1];

uns8 * ep_in_buffer_location[USB_HIGHEST_EP + 1] = {
	// we always have EP0

	&buffer_0_in,	// ep 0 in buffer location

	#if USB_HIGHEST_EP >= 1
		#ifdef USB_EP1_IN_SIZE
			&buffer_1_in,	// ep 1 in buffer location
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 2
		#ifdef USB_EP2_IN_SIZE
			&buffer_2_in,	// ep 2 in buffer location
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 3
		#ifdef USB_EP3_IN_SIZE
			&buffer_3_in,	// ep 3 in buffer location
		#else
			0,
		#endif
	#endif
};

uns8 * ep_out_buffer_location[USB_HIGHEST_EP + 1] = {
	// we always have EP0

	&buffer_0_out,	// ep 0 in buffer location

	#if USB_HIGHEST_EP >= 1
		#ifdef USB_EP1_OUT_SIZE
			&buffer_1_out,	// ep 1 in buffer location
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 2
		#ifdef USB_EP2_OUT_SIZE
			&buffer_2_out,	// ep 2 in buffer location
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 3
		#ifdef USB_EP3_OUT_SIZE
			&buffer_3_out,	// ep 3 in buffer location
		#else
			0,
		#endif
	#endif
};


uns16 ep_in_buffer_size[USB_HIGHEST_EP + 1] = {
	USB_EP0_IN_SIZE,

	#if USB_HIGHEST_EP >= 1
		#ifdef USB_EP1_IN_SIZE
			USB_EP1_IN_SIZE,
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 2
		#ifdef USB_EP2_IN_SIZE
			USB_EP2_IN_SIZE,
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 3
		#ifdef USB_EP3_IN_SIZE
			USB_EP3_IN_SIZE,
		#else
			0,
		#endif
	#endif
};



uns16 ep_out_buffer_size[USB_HIGHEST_EP + 1] = {
	USB_EP0_OUT_SIZE,

	#if USB_HIGHEST_EP >= 1
		#ifdef USB_EP1_OUT_SIZE
			USB_EP1_OUT_SIZE,
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 2
		#ifdef USB_EP2_OUT_SIZE
			USB_EP2_OUT_SIZE,
		#else
			0,
		#endif
	#endif

	#if USB_HIGHEST_EP >= 3
		#ifdef USB_EP3_OUT_SIZE
			USB_EP3_OUT_SIZE,
		#else
			0,
		#endif
	#endif
};
