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

/*! \file pic_usb_buffer_mgt.h
    \brief Pic USB buffer routines

	Buffer data structures for USB transfers
	
  
   
*/

#ifndef __pic_usb_buffer_mgt_h
#define __pic_ubs_buffer_mgt_h

#include "pic_usb.h"

extern buffer_descriptor bd0out;
extern buffer_descriptor bd0in;
extern buffer_descriptor bd1out;
extern buffer_descriptor bd1in;
extern buffer_descriptor bd2out;
extern buffer_descriptor bd2in;
extern buffer_descriptor bd3out;
extern buffer_descriptor bd3in;

extern uns8 buffer_0_out[USB_EP0_OUT_SIZE];
extern uns8 buffer_0_in [USB_EP0_IN_SIZE];

#ifdef USB_EP1_IN_SIZE
	extern uns8 buffer_1_in [USB_EP1_IN_SIZE];
#endif
#ifdef USB_EP1_OUT_SIZE
	extern uns8 buffer_1_out [USB_EP1_OUT_SIZE];
#endif
#ifdef USB_EP2_IN_SIZE
	extern uns8 buffer_2_in [USB_EP2_IN_SIZE];
#endif
#ifdef USB_EP2_OUT_SIZE
	extern uns8 buffer_2_out [USB_EP2_OUT_SIZE];
#endif
#ifdef USB_EP3_IN_SIZE
	extern uns8 buffer_3_in [USB_EP3_IN_SIZE];
#endif
#ifdef USB_EP3_OUT_SIZE
	extern uns8 buffer_3_out [USB_EP3_OUT_SIZE];
#endif

extern buffer_descriptor * ep_in_bd_location[USB_HIGHEST_EP + 1];
extern buffer_descriptor * ep_out_bd_location[USB_HIGHEST_EP + 1];

extern uns8 * ep_in_buffer_location[USB_HIGHEST_EP + 1];

extern uns8 * ep_out_buffer_location[USB_HIGHEST_EP + 1];

extern uns16 ep_in_buffer_size[USB_HIGHEST_EP + 1];

extern uns16 ep_out_buffer_size[USB_HIGHEST_EP + 1];

#endif

