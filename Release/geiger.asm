;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.20
;// License Type  : Full License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F2550.inc"
__HEAPSTART                      EQU	0x00000590 ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
__div_32_3_00001_arg_a           EQU	0x0000027D ; bytes:4
__div_32_3_00001_arg_b           EQU	0x00000281 ; bytes:4
CompTempVarRet482                EQU	0x0000028B ; bytes:4
__div_32_3_00001_1_r             EQU	0x00000285 ; bytes:4
__div_32_3_00001_1_i             EQU	0x00000289 ; bytes:1
CompTempVar484                   EQU	0x0000028A ; bytes:1
__rem_32_3_00002_arg_a           EQU	0x0000027E ; bytes:4
__rem_32_3_00002_arg_b           EQU	0x00000282 ; bytes:4
CompTempVarRet485                EQU	0x0000028C ; bytes:4
__rem_32_3_00002_1_c             EQU	0x00000286 ; bytes:4
__rem_32_3_00002_1_i             EQU	0x0000028A ; bytes:1
CompTempVar487                   EQU	0x0000028B ; bytes:1
__div_16_1_00003_arg_a           EQU	0x00000270 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x00000272 ; bytes:2
CompTempVarRet488                EQU	0x00000278 ; bytes:2
__div_16_1_00003_1_r             EQU	0x00000274 ; bytes:2
__div_16_1_00003_1_i             EQU	0x00000276 ; bytes:1
CompTempVar490                   EQU	0x00000277 ; bytes:1
__rem_16_1_00004_arg_a           EQU	0x00000271 ; bytes:2
__rem_16_1_00004_arg_b           EQU	0x00000273 ; bytes:2
CompTempVarRet491                EQU	0x00000279 ; bytes:2
__rem_16_1_00004_1_c             EQU	0x00000275 ; bytes:2
__rem_16_1_00004_1_i             EQU	0x00000277 ; bytes:1
CompTempVar493                   EQU	0x00000278 ; bytes:1
strlen8_00000_arg_ptr            EQU	0x00000265 ; bytes:2
CompTempVarRet500                EQU	0x00000267 ; bytes:1
strcat8_00000_arg_dst            EQU	0x00000265 ; bytes:2
strcat8_00000_arg_src            EQU	0x00000267 ; bytes:2
strcat8_00000_1_i                EQU	0x0000026E ; bytes:1
CompTempVar521                   EQU	0x0000026F ; bytes:1
strncmp8_00000_arg_ptr1          EQU	0x0000025B ; bytes:2
strncmp8_00000_arg_ptr2          EQU	0x0000025D ; bytes:2
strncmp8_00000_arg_len           EQU	0x0000026C ; bytes:1
CompTempVarRet571                EQU	0x00000271 ; bytes:1
strncmp8_00000_1_c1              EQU	0x0000026D ; bytes:1
strncmp8_00000_1_c2              EQU	0x0000026E ; bytes:1
strncmp8_00000_1_i               EQU	0x0000026F ; bytes:1
CompTempVar572                   EQU	0x00000270 ; bytes:1
memcpy8_00000_arg_dst            EQU	0x000002C8 ; bytes:2
memcpy8_00000_arg_src            EQU	0x000002CA ; bytes:2
memcpy8_00000_arg_len            EQU	0x000002CC ; bytes:1
CompTempVarRet708                EQU	0x000002D0 ; bytes:2
memcpy8_00000_1_dst2             EQU	0x000002CD ; bytes:2
memcpy8_00000_1_src2             EQU	0x000002D2 ; bytes:2
CompTempVar709                   EQU	0x000002CF ; bytes:1
gbl_status                       EQU	0x00000FD8 ; bytes:1
gbl_prodl                        EQU	0x00000FF3 ; bytes:1
gbl_prodh                        EQU	0x00000FF4 ; bytes:1
__mul_32_3_00006_arg_a           EQU	0x00000273 ; bytes:4
__mul_32_3_00006_arg_b           EQU	0x00000277 ; bytes:4
CompTempVarRet724                EQU	0x00000287 ; bytes:4
isspace_00000_arg_ch             EQU	0x0000026B ; bytes:1
CompTempVarRet796                EQU	0x0000026C ; bytes:1
toupper_00000_arg_ch             EQU	0x0000026B ; bytes:1
CompTempVarRet821                EQU	0x0000026C ; bytes:1
itoa_00000_arg_val               EQU	0x00000266 ; bytes:2
itoa_00000_arg_buffer            EQU	0x00000268 ; bytes:2
itoa_00000_arg_radix             EQU	0x0000026A ; bytes:1
CompTempVarRet876                EQU	0x00000270 ; bytes:2
itoa_00000_1_signChar            EQU	0x0000026B ; bytes:1
itoa_00000_1_digitWidth          EQU	0x0000026C ; bytes:1
itoa_00000_1_valu                EQU	0x0000026D ; bytes:2
itoa_00000_1_c                   EQU	0x0000026F ; bytes:1
CompTempVar880                   EQU	0x00000270 ; bytes:1
ltoa_00000_arg_val               EQU	0x0000026F ; bytes:4
ltoa_00000_arg_buffer            EQU	0x00000273 ; bytes:2
ltoa_00000_arg_radix             EQU	0x00000275 ; bytes:1
CompTempVarRet881                EQU	0x0000027D ; bytes:2
ltoa_00000_1_signChar            EQU	0x00000276 ; bytes:1
ltoa_00000_1_digitWidth          EQU	0x00000277 ; bytes:1
ltoa_00000_1_valu                EQU	0x00000278 ; bytes:4
ltoa_00000_1_c                   EQU	0x0000027C ; bytes:1
CompTempVar882                   EQU	0x0000027D ; bytes:1
CompTempVar883                   EQU	0x0000027E ; bytes:1
CompTempVar884                   EQU	0x0000027F ; bytes:1
CompTempVar885                   EQU	0x00000280 ; bytes:1
CompTempVar887                   EQU	0x0000027D ; bytes:1
strtoi_00000_arg_buffer          EQU	0x0000025D ; bytes:2
strtoi_00000_arg_endPtr          EQU	0x0000025F ; bytes:2
strtoi_00000_arg_radix           EQU	0x00000261 ; bytes:1
CompTempVarRet888                EQU	0x00000266 ; bytes:2
strtoi_00000_1_x                 EQU	0x00000262 ; bytes:2
strtoi_00000_1_neg               EQU	0x0000020C ; bit:2
strtoi_00000_1_overflow          EQU	0x0000020C ; bit:3
strtoi_00000_1_i                 EQU	0x00000264 ; bytes:1
strtoi_00000_1_mode              EQU	0x00000265 ; bytes:1
strtoi_00000_2_c                 EQU	0x00000266 ; bytes:1
strtoi_00000_29_xOld             EQU	0x00000267 ; bytes:2
CompTempVar890                   EQU	0x00000269 ; bytes:1
CompTempVar891                   EQU	0x0000026A ; bytes:1
CompTempVar892                   EQU	0x0000026B ; bytes:1
CompTempVar893                   EQU	0x0000026C ; bytes:1
CompTempVar894                   EQU	0x0000026B ; bytes:1
CompTempVar897                   EQU	0x00000266 ; bytes:1
CompTempVar898                   EQU	0x00000267 ; bytes:1
strtol_00000_arg_buffer          EQU	0x0000025F ; bytes:2
strtol_00000_arg_endPtr          EQU	0x00000261 ; bytes:2
strtol_00000_arg_radix           EQU	0x00000263 ; bytes:1
CompTempVarRet901                EQU	0x0000026A ; bytes:4
strtol_00000_1_x                 EQU	0x00000264 ; bytes:4
strtol_00000_1_neg               EQU	0x0000020C ; bit:2
strtol_00000_1_overflow          EQU	0x0000020C ; bit:3
strtol_00000_1_i                 EQU	0x00000268 ; bytes:1
strtol_00000_1_mode              EQU	0x00000269 ; bytes:1
strtol_00000_2_c                 EQU	0x0000026A ; bytes:1
strtol_00000_29_xOld             EQU	0x0000026B ; bytes:4
CompTempVar903                   EQU	0x0000026F ; bytes:1
CompTempVar904                   EQU	0x00000270 ; bytes:1
CompTempVar905                   EQU	0x00000271 ; bytes:1
CompTempVar906                   EQU	0x00000272 ; bytes:1
CompTempVar907                   EQU	0x0000027B ; bytes:1
CompTempVar908                   EQU	0x0000027C ; bytes:1
CompTempVar909                   EQU	0x00000285 ; bytes:1
CompTempVar910                   EQU	0x00000286 ; bytes:1
CompTempVar911                   EQU	0x00000273 ; bytes:4
CompTempVar912                   EQU	0x00000273 ; bytes:1
CompTempVar915                   EQU	0x0000026A ; bytes:1
CompTempVar916                   EQU	0x0000026B ; bytes:1
CompTempVar917                   EQU	0x0000026A ; bytes:1
CompTempVar918                   EQU	0x0000026B ; bytes:1
CompTempVar919                   EQU	0x0000026C ; bytes:1
CompTempVar920                   EQU	0x0000026D ; bytes:1
gbl_ufrm                         EQU	0x00000F66 ; bytes:1
gbl_ufrml                        EQU	0x00000F66 ; bytes:1
gbl_ufrmh                        EQU	0x00000F67 ; bytes:1
gbl_uir                          EQU	0x00000F68 ; bytes:1
gbl_uie                          EQU	0x00000F69 ; bytes:1
gbl_ueir                         EQU	0x00000F6A ; bytes:1
gbl_ueie                         EQU	0x00000F6B ; bytes:1
gbl_ustat                        EQU	0x00000F6C ; bytes:1
gbl_ucon                         EQU	0x00000F6D ; bytes:1
gbl_uaddr                        EQU	0x00000F6E ; bytes:1
gbl_ucfg                         EQU	0x00000F6F ; bytes:1
gbl_uep0                         EQU	0x00000F70 ; bytes:1
gbl_uep1                         EQU	0x00000F71 ; bytes:1
gbl_uep2                         EQU	0x00000F72 ; bytes:1
gbl_uep3                         EQU	0x00000F73 ; bytes:1
gbl_uep4                         EQU	0x00000F74 ; bytes:1
gbl_uep5                         EQU	0x00000F75 ; bytes:1
gbl_uep6                         EQU	0x00000F76 ; bytes:1
gbl_uep7                         EQU	0x00000F77 ; bytes:1
gbl_uep8                         EQU	0x00000F78 ; bytes:1
gbl_uep9                         EQU	0x00000F79 ; bytes:1
gbl_uep10                        EQU	0x00000F7A ; bytes:1
gbl_uep11                        EQU	0x00000F7B ; bytes:1
gbl_uep12                        EQU	0x00000F7C ; bytes:1
gbl_uep13                        EQU	0x00000F7D ; bytes:1
gbl_uep14                        EQU	0x00000F7E ; bytes:1
gbl_uep15                        EQU	0x00000F7F ; bytes:1
gbl_porta                        EQU	0x00000F80 ; bytes:1
gbl_portb                        EQU	0x00000F81 ; bytes:1
gbl_portc                        EQU	0x00000F82 ; bytes:1
gbl_porte                        EQU	0x00000F84 ; bytes:1
gbl_lata                         EQU	0x00000F89 ; bytes:1
gbl_latb                         EQU	0x00000F8A ; bytes:1
gbl_latc                         EQU	0x00000F8B ; bytes:1
gbl_late                         EQU	0x00000F8D ; bytes:1
gbl_ddra                         EQU	0x00000F92 ; bytes:1
gbl_trisa                        EQU	0x00000F92 ; bytes:1
gbl_ddrb                         EQU	0x00000F93 ; bytes:1
gbl_trisb                        EQU	0x00000F93 ; bytes:1
gbl_ddrc                         EQU	0x00000F94 ; bytes:1
gbl_trisc                        EQU	0x00000F94 ; bytes:1
gbl_trise                        EQU	0x00000F96 ; bytes:1
gbl_osctune                      EQU	0x00000F9B ; bytes:1
gbl_pie1                         EQU	0x00000F9D ; bytes:1
gbl_pir1                         EQU	0x00000F9E ; bytes:1
gbl_ipr1                         EQU	0x00000F9F ; bytes:1
gbl_pie2                         EQU	0x00000FA0 ; bytes:1
gbl_pir2                         EQU	0x00000FA1 ; bytes:1
gbl_ipr2                         EQU	0x00000FA2 ; bytes:1
gbl_eecon1                       EQU	0x00000FA6 ; bytes:1
gbl_eecon2                       EQU	0x00000FA7 ; bytes:1
gbl_eedata                       EQU	0x00000FA8 ; bytes:1
gbl_eeadr                        EQU	0x00000FA9 ; bytes:1
gbl_rcsta                        EQU	0x00000FAB ; bytes:1
gbl_txsta                        EQU	0x00000FAC ; bytes:1
gbl_txreg                        EQU	0x00000FAD ; bytes:1
gbl_rcreg                        EQU	0x00000FAE ; bytes:1
gbl_spbrg                        EQU	0x00000FAF ; bytes:1
gbl_spbrgh                       EQU	0x00000FB0 ; bytes:1
gbl_t3con                        EQU	0x00000FB1 ; bytes:1
gbl_tmr3l                        EQU	0x00000FB2 ; bytes:1
gbl_tmr3h                        EQU	0x00000FB3 ; bytes:1
gbl_cmcon                        EQU	0x00000FB4 ; bytes:1
gbl_cvrcon                       EQU	0x00000FB5 ; bytes:1
gbl_ccp1as                       EQU	0x00000FB6 ; bytes:1
gbl_eccp1as                      EQU	0x00000FB6 ; bytes:1
gbl_ccp1del                      EQU	0x00000FB7 ; bytes:1
gbl_eccp1del                     EQU	0x00000FB7 ; bytes:1
gbl_baudcon                      EQU	0x00000FB8 ; bytes:1
gbl_baudctl                      EQU	0x00000FB8 ; bytes:1
gbl_ccp2con                      EQU	0x00000FBA ; bytes:1
gbl_ccpr2                        EQU	0x00000FBB ; bytes:1
gbl_ccpr2l                       EQU	0x00000FBB ; bytes:1
gbl_ccpr2h                       EQU	0x00000FBC ; bytes:1
gbl_ccp1con                      EQU	0x00000FBD ; bytes:1
gbl_eccp1con                     EQU	0x00000FBD ; bytes:1
gbl_ccpr1                        EQU	0x00000FBE ; bytes:1
gbl_ccpr1l                       EQU	0x00000FBE ; bytes:1
gbl_ccpr1h                       EQU	0x00000FBF ; bytes:1
gbl_adcon2                       EQU	0x00000FC0 ; bytes:1
gbl_adcon1                       EQU	0x00000FC1 ; bytes:1
gbl_adcon0                       EQU	0x00000FC2 ; bytes:1
gbl_adres                        EQU	0x00000FC3 ; bytes:1
gbl_adresl                       EQU	0x00000FC3 ; bytes:1
gbl_adresh                       EQU	0x00000FC4 ; bytes:1
gbl_sspcon2                      EQU	0x00000FC5 ; bytes:1
gbl_sspcon1                      EQU	0x00000FC6 ; bytes:1
gbl_sspstat                      EQU	0x00000FC7 ; bytes:1
gbl_sspadd                       EQU	0x00000FC8 ; bytes:1
gbl_sspbuf                       EQU	0x00000FC9 ; bytes:1
gbl_t2con                        EQU	0x00000FCA ; bytes:1
gbl_pr2                          EQU	0x00000FCB ; bytes:1
gbl_tmr2                         EQU	0x00000FCC ; bytes:1
gbl_t1con                        EQU	0x00000FCD ; bytes:1
gbl_tmr1l                        EQU	0x00000FCE ; bytes:1
gbl_tmr1h                        EQU	0x00000FCF ; bytes:1
gbl_rcon                         EQU	0x00000FD0 ; bytes:1
gbl_wdtcon                       EQU	0x00000FD1 ; bytes:1
gbl_hlvdcon                      EQU	0x00000FD2 ; bytes:1
gbl_lvdcon                       EQU	0x00000FD2 ; bytes:1
gbl_osccon                       EQU	0x00000FD3 ; bytes:1
gbl_t0con                        EQU	0x00000FD5 ; bytes:1
gbl_tmr0l                        EQU	0x00000FD6 ; bytes:1
gbl_tmr0h                        EQU	0x00000FD7 ; bytes:1
gbl_fsr2l                        EQU	0x00000FD9 ; bytes:1
gbl_fsr2h                        EQU	0x00000FDA ; bytes:1
gbl_plusw2                       EQU	0x00000FDB ; bytes:1
gbl_preinc2                      EQU	0x00000FDC ; bytes:1
gbl_postdec2                     EQU	0x00000FDD ; bytes:1
gbl_postinc2                     EQU	0x00000FDE ; bytes:1
gbl_indf2                        EQU	0x00000FDF ; bytes:1
gbl_bsr                          EQU	0x00000FE0 ; bytes:1
gbl_fsr1l                        EQU	0x00000FE1 ; bytes:1
gbl_fsr1h                        EQU	0x00000FE2 ; bytes:1
gbl_plusw1                       EQU	0x00000FE3 ; bytes:1
gbl_preinc1                      EQU	0x00000FE4 ; bytes:1
gbl_postdec1                     EQU	0x00000FE5 ; bytes:1
gbl_postinc1                     EQU	0x00000FE6 ; bytes:1
gbl_indf1                        EQU	0x00000FE7 ; bytes:1
gbl_wreg                         EQU	0x00000FE8 ; bytes:1
gbl_fsr0l                        EQU	0x00000FE9 ; bytes:1
gbl_fsr0h                        EQU	0x00000FEA ; bytes:1
gbl_plusw0                       EQU	0x00000FEB ; bytes:1
gbl_preinc0                      EQU	0x00000FEC ; bytes:1
gbl_postdec0                     EQU	0x00000FED ; bytes:1
gbl_postinc0                     EQU	0x00000FEE ; bytes:1
gbl_indf0                        EQU	0x00000FEF ; bytes:1
gbl_intcon3                      EQU	0x00000FF0 ; bytes:1
gbl_intcon2                      EQU	0x00000FF1 ; bytes:1
gbl_intcon                       EQU	0x00000FF2 ; bytes:1
gbl_prod                         EQU	0x00000FF3 ; bytes:1
gbl_tablat                       EQU	0x00000FF5 ; bytes:1
gbl_tblptr                       EQU	0x00000FF6 ; bytes:1
gbl_tblptrl                      EQU	0x00000FF6 ; bytes:1
gbl_tblptrh                      EQU	0x00000FF7 ; bytes:1
gbl_tblptru                      EQU	0x00000FF8 ; bytes:1
gbl_pc                           EQU	0x00000FF9 ; bytes:1
gbl_pcl                          EQU	0x00000FF9 ; bytes:1
gbl_pclath                       EQU	0x00000FFA ; bytes:1
gbl_pclatu                       EQU	0x00000FFB ; bytes:1
gbl_stkptr                       EQU	0x00000FFC ; bytes:1
gbl_tos                          EQU	0x00000FFD ; bytes:1
gbl_tosl                         EQU	0x00000FFD ; bytes:1
gbl_tosh                         EQU	0x00000FFE ; bytes:1
gbl_tosu                         EQU	0x00000FFF ; bytes:1
gbl_boost_val                    EQU	0x0000005F ; bytes:1
gbl_geiger_counter               EQU	0x000000FF ; bytes:1
gbl_previous_counter             EQU	0x000001E6 ; bytes:1
gbl_big_geiger_counter           EQU	0x000000FB ; bytes:4
gbl_time_counting_start          EQU	0x0000017C ; bytes:4
gbl_detect_threshold             EQU	0x000001C8 ; bytes:2
gbl_last_time                    EQU	0x000001CA ; bytes:2
gbl_last_detect_time             EQU	0x00000180 ; bytes:4
gbl_adc_value                    EQU	0x000001CC ; bytes:2
gbl_Uout                         EQU	0x00000184 ; bytes:4
gbl_error                        EQU	0x000001CE ; bytes:2
gbl_watchdogs                    EQU	0x000001D0 ; bytes:2
gbl_adc_calibration              EQU	0x00000188 ; bytes:4
gbl_serial_data                  EQU	0x0000000C ; bytes:65
gbl_serial_count                 EQU	0x000001E7 ; bytes:1
gbl_serial_cmd                   EQU	0x000001E8 ; bit:0
gbl_duty_cycle                   EQU	0x000001D2 ; bytes:2
gbl_hw_duty_cycle                EQU	0x000001D4 ; bytes:2
gbl_sw_duty_cycle                EQU	0x000001E9 ; bytes:1
gbl_sw_duty_cycle_index          EQU	0x000001EA ; bytes:1
gbl_remote_watchdog              EQU	0x000001E8 ; bit:1
gbl_auto_adjust_pwm              EQU	0x000001E8 ; bit:2
gbl_auto_usb                     EQU	0x000001E8 ; bit:3
interrupt_2_tmp                  EQU	0x000002AA ; bytes:2
CompTempVar933                   EQU	0x000002AC ; bytes:1
CompTempVar934                   EQU	0x000002AD ; bytes:1
interrupt_32_l                   EQU	0x000002AA ; bytes:1
interrupt_32_h                   EQU	0x000002AB ; bytes:1
interrupt_32_tmp_time            EQU	0x000002AC ; bytes:2
interrupt_44_data                EQU	0x000002AA ; bytes:1
set_PWM_00000_arg_val            EQU	0x0000025D ; bytes:2
CompTempVar938                   EQU	0x0000025F ; bytes:1
CompTempVar939                   EQU	0x00000260 ; bytes:1
eeprom_rea_0004F_arg_data        EQU	0x00000220 ; bytes:2
eeprom_rea_0004F_arg_adr         EQU	0x00000222 ; bytes:1
eeprom_rea_0004F_arg_len         EQU	0x00000223 ; bytes:1
eeprom_rea_0004F_2_i             EQU	0x00000224 ; bytes:1
eeprom_wri_00050_arg_data        EQU	0x00000269 ; bytes:2
eeprom_wri_00050_arg_adr         EQU	0x0000026B ; bytes:1
eeprom_wri_00050_arg_len         EQU	0x0000026C ; bytes:1
eeprom_wri_00050_2_i             EQU	0x0000026D ; bytes:1
eeprom_wri_00052_arg_adr         EQU	0x0000025B ; bytes:1
eeprom_wri_00052_arg_value       EQU	0x0000025C ; bytes:4
load_setti_00053_1_settings      EQU	0x00000212 ; bytes:14
save_setti_00054_1_settings      EQU	0x0000025B ; bytes:14
send_usb_p_00056_1_data          EQU	0x0000025B ; bytes:64
send_seria_00057_1_flags         EQU	0x0000025B ; bytes:2
CompTempVar979                   EQU	0x0000025D ; bytes:4
execute_co_00058_arg_string      EQU	0x00000258 ; bytes:2
execute_co_00058_arg_source      EQU	0x0000025A ; bytes:1
execute_co_00058_1_cmd_ok        EQU	0x0000020C ; bit:1
CompTempVar985                   EQU	0x0000025F ; bytes:4
CompTempVar987                   EQU	0x0000025F ; bytes:4
CompTempVar989                   EQU	0x0000025F ; bytes:6
CompTempVar991                   EQU	0x0000025F ; bytes:6
CompTempVar993                   EQU	0x0000025F ; bytes:4
execute_co_00058_51_value        EQU	0x0000025B ; bytes:4
CompTempVar999                   EQU	0x0000025F ; bytes:5
CompTempVar1001                  EQU	0x0000025F ; bytes:8
CompTempVar1003                  EQU	0x0000025F ; bytes:13
CompTempVar1006                  EQU	0x0000025B ; bytes:1
CompTempVar1007                  EQU	0x0000025F ; bytes:10
execute_co_00058_88_threshold    EQU	0x0000025B ; bytes:2
CompTempVar1013                  EQU	0x0000025F ; bytes:4
execute_co_00058_99_pwm_val      EQU	0x0000025B ; bytes:2
CompTempVar1019                  EQU	0x0000025F ; bytes:9
CompTempVar1022                  EQU	0x0000025B ; bytes:1
CompTempVar1023                  EQU	0x0000025F ; bytes:9
CompTempVar1026                  EQU	0x0000025B ; bytes:1
CompTempVar1027                  EQU	0x0000025F ; bytes:7
execute_co_00058_126_tmp         EQU	0x0000025B ; bytes:10
CompTempVar1030                  EQU	0x00000269 ; bytes:4
CompTempVar1033                  EQU	0x00000269 ; bytes:5
CompTempVar1038                  EQU	0x0000025B ; bytes:4
CompTempVar1040                  EQU	0x0000025B ; bytes:5
CompTempVar1042                  EQU	0x0000025B ; bytes:3
CompTempVar1044                  EQU	0x0000025B ; bytes:4
main_1_blinks                    EQU	0x00000207 ; bytes:1
main_1_blink_ticks               EQU	0x00000208 ; bytes:4
main_1_detect_output_state       EQU	0x0000020C ; bit:0
main_1_previous_sec              EQU	0x0000020D ; bytes:1
main_1_usb_watchdog              EQU	0x0000020E ; bytes:4
CompTempVar1046                  EQU	0x00000212 ; bytes:1
CompTempVar1047                  EQU	0x00000213 ; bytes:1
CompTempVar1048                  EQU	0x00000214 ; bytes:1
CompTempVar1049                  EQU	0x00000215 ; bytes:1
CompTempVar1050                  EQU	0x00000216 ; bytes:1
main_96_rx                       EQU	0x00000216 ; bytes:1
main_103_usb_data                EQU	0x00000217 ; bytes:65
CompTempVar1053                  EQU	0x00000216 ; bytes:1
gbl_month_str                    EQU	0x000001EB ; bytes:1
gbl_wday_str                     EQU	0x000001EC ; bytes:1
gbl_tformat                      EQU	0x000001ED ; bytes:1
gbl_days_month                   EQU	0x000001EE ; bytes:1
gbl_rtc_overflows                EQU	0x0000018C ; bytes:4
gbl_rtc_time                     EQU	0x00000190 ; bytes:4
gbl_rtc_100us                    EQU	0x000001D6 ; bytes:2
gbl_rtc_boot                     EQU	0x00000194 ; bytes:4
gbl_rtc_sync                     EQU	0x00000198 ; bytes:4
gbl_rtc_ticks                    EQU	0x00000176 ; bytes:6
gbl_rtc_daylightsaving           EQU	0x000001E8 ; bit:4
gbl_rtc_is_set                   EQU	0x000001E8 ; bit:5
gbl_auto_adjust_daylightsaving   EQU	0x000001E8 ; bit:6
CompTempVar1062                  EQU	0x000002AE ; bytes:2
CompTempVar1064                  EQU	0x000002B0 ; bytes:3
CompTempVarRet1065               EQU	0x0000029B ; bytes:4
CompTempVarRet1094               EQU	0x00000216 ; bytes:1
CompTempVarRet1323               EQU	0x0000021B ; bytes:4
CompTempVar1325                  EQU	0x00000216 ; bytes:2
CompTempVar1327                  EQU	0x00000218 ; bytes:3
serial_sen_0003C_arg_byte        EQU	0x00000271 ; bytes:1
serial_sen_0003E_arg_data        EQU	0x0000026F ; bytes:2
serial_sen_00041_arg_val         EQU	0x0000025D ; bytes:2
serial_sen_00041_1_str           EQU	0x0000025F ; bytes:7
serial_sen_00042_arg_val         EQU	0x0000025D ; bytes:4
serial_sen_00042_1_str           EQU	0x00000261 ; bytes:14
gbl_outgoing                     EQU	0x000001EF ; bytes:1
gbl_device_report_descriptor     EQU	0x00000128 ; bytes:29
gbl_USB_USBNAME                  EQU	0x000000C9 ; bytes:40
gbl_USB_USBMFR                   EQU	0x00000100 ; bytes:40
gbl_USB_SERIAL                   EQU	0x000000F1 ; bytes:10
gbl_incoming                     EQU	0x000001F0 ; bytes:1
gbl_HID_USB_OUT_BUFFER           EQU	0x00000060 ; bytes:64
gbl_HID_USB_status               EQU	0x000001F1 ; bytes:1
CompTempVarRet1396               EQU	0x00000214 ; bytes:1
usbhid_ini_0000A_1_delay_counter EQU	0x00000212 ; bytes:2
usbhid_sen_0000B_arg_buffer      EQU	0x0000029B ; bytes:2
usbhid_sen_0000B_arg_size        EQU	0x0000029D ; bytes:1
CompTempVarRet1397               EQU	0x0000029E ; bytes:1
CompTempVarRet1398               EQU	0x00000218 ; bytes:1
usbhid_che_0000C_1_retval        EQU	0x00000217 ; bytes:1
usbhid_rec_0000D_arg_buffer      EQU	0x00000258 ; bytes:2
usbhid_rec_0000D_arg_len         EQU	0x0000025A ; bytes:1
CompTempVarRet1400               EQU	0x0000020C ; bit:1
CompTempVar1401                  EQU	0x00000216 ; bytes:1
CompTempVarRet1402               EQU	0x0000020C ; bit:1
CompTempVar1403                  EQU	0x00000217 ; bytes:1
CompTempVarRet1404               EQU	0x0000020C ; bit:2
usbhid_wai_00012_1_i             EQU	0x00000265 ; bytes:1
CompTempVar1405                  EQU	0x00000266 ; bytes:1
gbl_usb_state                    EQU	0x000001F2 ; bytes:1
gbl_usb_address                  EQU	0x000001F3 ; bytes:1
gbl_usb_sdp                      EQU	0x00000160 ; bytes:8
gbl_control_mode                 EQU	0x000001F4 ; bytes:1
gbl_delivery_bytes_to_send       EQU	0x000001D8 ; bytes:2
gbl_delivery_bytes_max_send      EQU	0x000001DA ; bytes:2
gbl_delivery_bytes_sent          EQU	0x000001DC ; bytes:2
gbl_delivery_ptr                 EQU	0x000001DE ; bytes:2
gbl_delivery_buffer_size         EQU	0x000001F5 ; bytes:1
gbl_delivery_buffer              EQU	0x000001E0 ; bytes:2
gbl_delivery_bd                  EQU	0x000001E2 ; bytes:2
gbl_usb_status                   EQU	0x000001F6 ; bytes:1
gbl_buffer_byte                  EQU	0x000001F7 ; bytes:1
usb_send_d_00015_arg_ep          EQU	0x0000029F ; bytes:1
usb_send_d_00015_arg_data        EQU	0x000002A0 ; bytes:2
usb_send_d_00015_arg_send_count  EQU	0x000002A2 ; bytes:1
usb_send_d_00015_arg_first       EQU	0x0000020C ; bit:2
usb_send_d_00015_1_count         EQU	0x000002A3 ; bytes:1
usb_send_d_00015_1_bd            EQU	0x000002A4 ; bytes:2
usb_send_d_00015_1_buffer        EQU	0x000002A6 ; bytes:2
CompTempVar1446                  EQU	0x000002A8 ; bytes:1
CompTempVar1449                  EQU	0x000002A8 ; bytes:1
CompTempVar1452                  EQU	0x000002A8 ; bytes:1
CompTempVar1453                  EQU	0x000002A9 ; bytes:1
CompTempVar1454                  EQU	0x000002A8 ; bytes:1
usb_send_d_0005E_1_count         EQU	0x000002BE ; bytes:1
CompTempVar1460                  EQU	0x000002BF ; bytes:1
usb_send_o_00060_arg_data        EQU	0x000002BD ; bytes:1
usb_handle_00062_arg_sdp         EQU	0x000002B3 ; bytes:8
usb_handle_00062_1_descrip_00063 EQU	0x000002BB ; bytes:1
usb_handle_00062_1_descrip_00064 EQU	0x000002BC ; bytes:1
usb_handle_0005B_1_end_point     EQU	0x000002AE ; bytes:1
usb_handle_0005B_1_pid           EQU	0x000002AF ; bytes:1
CompTempVar1416                  EQU	0x000002B0 ; bytes:1
CompTempVar1419                  EQU	0x000002B0 ; bytes:1
CompTempVar1420                  EQU	0x000002B1 ; bytes:1
CompTempVar1422                  EQU	0x000002B2 ; bytes:1
usb_handle_0005B_83_bd           EQU	0x000002B0 ; bytes:2
CompTempVar1428                  EQU	0x000002B2 ; bytes:1
CompTempVar1431                  EQU	0x000002B2 ; bytes:1
CompTempVar1438                  EQU	0x000002B7 ; bytes:1
CompTempVar1441                  EQU	0x000002B2 ; bytes:1
CompTempVar1443                  EQU	0x000002B3 ; bytes:2
gbl_bd0out                       EQU	0x00000400 ; bytes:4
gbl_bd0in                        EQU	0x00000404 ; bytes:4
gbl_bd1out                       EQU	0x00000408 ; bytes:4
gbl_bd1in                        EQU	0x0000040C ; bytes:4
gbl_bd2out                       EQU	0x00000410 ; bytes:4
gbl_bd2in                        EQU	0x00000414 ; bytes:4
gbl_bd3out                       EQU	0x00000418 ; bytes:4
gbl_bd3in                        EQU	0x0000041C ; bytes:4
gbl_buffer_0_out                 EQU	0x00000500 ; bytes:8
gbl_buffer_0_in                  EQU	0x00000508 ; bytes:8
gbl_buffer_1_in                  EQU	0x00000510 ; bytes:64
gbl_buffer_1_out                 EQU	0x00000550 ; bytes:64
gbl_ep_in_bd_location            EQU	0x0000019C ; bytes:4
gbl_ep_out_bd_location           EQU	0x000001A0 ; bytes:4
gbl_ep_in_buffer_location        EQU	0x000001A4 ; bytes:4
gbl_ep_out_buffer_location       EQU	0x000001A8 ; bytes:4
gbl_ep_in_buffer_size            EQU	0x000001AC ; bytes:4
gbl_ep_out_buffer_size           EQU	0x000001B0 ; bytes:4
CompGblVar118                    EQU	0x000001F8 ; bytes:1
CompGblVar119                    EQU	0x000001F9 ; bytes:1
CompGblVar120                    EQU	0x000001FA ; bytes:1
CompGblVar121                    EQU	0x000001FB ; bytes:1
gbl_complete_HID_configuration   EQU	0x000000A0 ; bytes:41
gbl_my_device_descriptor         EQU	0x0000004D ; bytes:18
gbl_my_config                    EQU	0x00000145 ; bytes:9
gbl_my_interface                 EQU	0x0000014E ; bytes:9
gbl_my_hid                       EQU	0x00000157 ; bytes:9
gbl_my_ep                        EQU	0x00000168 ; bytes:7
gbl_my_ep2                       EQU	0x0000016F ; bytes:7
gbl_string_00                    EQU	0x000001B4 ; bytes:4
usb_get_de_0001C_arg_descr_0001D EQU	0x000002BD ; bytes:1
usb_get_de_0001C_arg_descr_0001E EQU	0x000002BE ; bytes:1
usb_get_de_0001C_arg_rtn_d_0001F EQU	0x000002BF ; bytes:2
usb_get_de_0001C_arg_rtn_d_00020 EQU	0x000002C1 ; bytes:2
usb_get_de_0001C_1_descrip_00065 EQU	0x000002C3 ; bytes:2
usb_get_de_0001C_1_descrip_00066 EQU	0x000002C5 ; bytes:2
CompTempVar1469                  EQU	0x000002C7 ; bytes:1
CompTempVar1470                  EQU	0x000002C7 ; bytes:1
CompTempVar1471                  EQU	0x000002C7 ; bytes:1
CompTempVar1472                  EQU	0x000002C7 ; bytes:1
CompTempVar1473                  EQU	0x000002C7 ; bytes:1
CompTempVar1474                  EQU	0x000002C7 ; bytes:1
CompTempVar1475                  EQU	0x000002C7 ; bytes:1
CompTempVar1476                  EQU	0x000002C7 ; bytes:1
gbl_hid_rx_start                 EQU	0x000001FC ; bytes:1
gbl_hid_rx_end                   EQU	0x000001FD ; bytes:1
usb_handle_0001A_arg_data        EQU	0x000002B0 ; bytes:2
usb_handle_0001A_arg_count       EQU	0x000002B2 ; bytes:2
usb_handle_0001B_arg_sdp         EQU	0x000002B3 ; bytes:8
usb_ep_dat_00021_arg_end_point   EQU	0x000002B2 ; bytes:1
usb_ep_dat_00021_arg_buffer      EQU	0x000002B3 ; bytes:2
usb_ep_dat_00021_arg_byte_count  EQU	0x000002B5 ; bytes:2
usb_ep_dat_00021_1_i             EQU	0x000002B7 ; bytes:1
CompTempVar1479                  EQU	0x000002B8 ; bytes:1
CompTempVar1480                  EQU	0x000002B9 ; bytes:1
usb_ep_dat_00023_arg_end_point   EQU	0x000002B2 ; bytes:1
usb_ep_dat_00023_arg_byte_count  EQU	0x000002B3 ; bytes:2
gbl_float_detect_tininess        EQU	0x000001FE ; bytes:1
gbl_float_rounding_mode          EQU	0x000001FF ; bytes:1
gbl_float_exception_flags        EQU	0x00000200 ; bytes:1
gbl_29_gbl_aSig                  EQU	0x000001B8 ; bytes:4
gbl_29_gbl_bSig                  EQU	0x000001BC ; bytes:4
gbl_29_gbl_zSig                  EQU	0x000001C0 ; bytes:4
gbl_29_gbl_aExp                  EQU	0x00000201 ; bytes:1
gbl_29_gbl_bExp                  EQU	0x00000202 ; bytes:1
gbl_29_gbl_zExp                  EQU	0x000001E4 ; bytes:2
gbl_29_gbl_aSign                 EQU	0x00000203 ; bytes:1
gbl_29_gbl_bSign                 EQU	0x00000204 ; bytes:1
gbl_29_gbl_zSign                 EQU	0x00000205 ; bytes:1
gbl_29_gbl_zSigZero              EQU	0x00000206 ; bytes:1
gbl_29_gbl_ret                   EQU	0x000001C4 ; bytes:4
eeprom_rea_00007_arg_address     EQU	0x00000225 ; bytes:1
CompTempVarRet2650               EQU	0x00000226 ; bytes:1
eeprom_wri_00008_arg_address     EQU	0x0000026E ; bytes:1
eeprom_wri_00008_arg_data        EQU	0x0000026F ; bytes:1
eeprom_wri_00008_1_intState      EQU	0x0000020C ; bit:2
delay_ms_00000_arg_del           EQU	0x00000266 ; bytes:1
delay_s_00000_arg_del            EQU	0x00000212 ; bytes:1
Int1Context                      EQU	0x00000001 ; bytes:4
Int2Context                      EQU	0x00000005 ; bytes:7
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000008
	GOTO	interrupt
	ORG 0x0000000C
usb_stall__00017
; { usb_stall_ep0 ; function begin
	MOVLB 0x04
	BSF gbl_bd0in,2, 1
	BSF gbl_bd0in,7, 1
	BSF gbl_bd0out,2, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_stall_ep0 function end

	ORG 0x00000018
	GOTO	interrupt_low
	ORG 0x0000001C
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F, 1
	NOP
	BNZ	label1
	RETURN
label1
	MOVLW 0xFF
label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	BRA	label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_ms_00000_arg_del, F, 1
	BRA	label1
	RETURN
; } delay_ms function end

	ORG 0x000000A0
delay_s_00000
; { delay_s ; function begin
label3
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F, 1
	BRA	label3
	RETURN
; } delay_s function end

	ORG 0x000000C6
memcpy8_00000
; { memcpy8 ; function begin
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVWF memcpy8_00000_1_dst2, 1
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVWF memcpy8_00000_1_dst2+D'1', 1
	MOVF memcpy8_00000_arg_src, W, 1
	MOVWF memcpy8_00000_1_src2, 1
	MOVF memcpy8_00000_arg_src+D'1', W, 1
	MOVWF memcpy8_00000_1_src2+D'1', 1
label4
	MOVLW 0x00
	CPFSGT memcpy8_00000_arg_len, 1
	BRA	label5
	MOVF memcpy8_00000_1_src2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_src2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_src2, F, 1
	INCF memcpy8_00000_1_src2+D'1', F, 1
	MOVF INDF0, W
	MOVWF CompTempVar709, 1
	MOVF memcpy8_00000_1_dst2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_dst2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_dst2, F, 1
	INCF memcpy8_00000_1_dst2+D'1', F, 1
	MOVF CompTempVar709, W, 1
	MOVWF INDF0
	DECF memcpy8_00000_arg_len, F, 1
	BRA	label4
label5
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVWF CompTempVarRet708, 1
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVWF CompTempVarRet708+D'1', 1
	RETURN
; } memcpy8 function end

	ORG 0x0000010A
usb_send_d_0005E
; { usb_send_data_chunk ; function begin
	MOVLB 0x02
	CLRF usb_send_d_0005E_1_count, 1
label6
	MOVLB 0x01
	MOVF gbl_delivery_buffer_size, W, 1
	MOVLB 0x02
	CPFSLT usb_send_d_0005E_1_count, 1
	BRA	label9
	MOVLB 0x01
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label7
	MOVF gbl_delivery_bytes_to_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label7
	BC	label9
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label8
	MOVF gbl_delivery_bytes_max_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label8
	BC	label9
	MOVF gbl_delivery_ptr+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_ptr, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVLB 0x02
	MOVWF CompTempVar1460, 1
	MOVLB 0x01
	MOVF gbl_delivery_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_buffer, W, 1
	MOVLB 0x02
	ADDWF usb_send_d_0005E_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar1460, W, 1
	MOVWF INDF0
	MOVLB 0x01
	INFSNZ gbl_delivery_ptr, F, 1
	INCF gbl_delivery_ptr+D'1', F, 1
	INFSNZ gbl_delivery_bytes_sent, F, 1
	INCF gbl_delivery_bytes_sent+D'1', F, 1
	MOVLB 0x02
	INCF usb_send_d_0005E_1_count, F, 1
	BRA	label6
label9
	MOVLB 0x01
	MOVF gbl_delivery_buffer_size, W, 1
	MOVLB 0x02
	CPFSLT usb_send_d_0005E_1_count, 1
	BRA	label12
	MOVLB 0x01
	MOVF gbl_delivery_bytes_max_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label10
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label10
	BRA	label11
label10
	MOVF gbl_delivery_bytes_to_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label12
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label12
label11
	MOVLW 0x05
	MOVWF gbl_control_mode, 1
label12
	MOVLB 0x02
	MOVF usb_send_d_0005E_1_count, W, 1
	MOVLB 0x04
	MOVWF gbl_bd0in+D'1', 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_bd0in+D'3', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_bd0in+D'2', 1
	BTFSS gbl_bd0in,6, 1
	BRA	label13
	BCF gbl_bd0in,6, 1
	BRA	label14
label13
	BSF gbl_bd0in,6, 1
label14
	BCF gbl_bd0in,5, 1
	BCF gbl_bd0in,4, 1
	BSF gbl_bd0in,3, 1
	BCF gbl_bd0in,2, 1
	BCF gbl_bd0in,1, 1
	BCF gbl_bd0in,0, 1
	BSF gbl_bd0in,7, 1
	RETURN
; } usb_send_data_chunk function end

	ORG 0x000001B6
usb_send_o_00060
; { usb_send_one_byte ; function begin
	MOVLW 0x08
	MOVLB 0x01
	MOVWF gbl_delivery_buffer_size, 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	MOVLW 0x01
	MOVWF gbl_delivery_bytes_to_send, 1
	CLRF gbl_delivery_bytes_to_send+D'1', 1
	CLRF gbl_delivery_bytes_max_send, 1
	CLRF gbl_delivery_bytes_max_send+D'1', 1
	MOVLB 0x02
	MOVF usb_send_o_00060_arg_data, W, 1
	MOVLB 0x01
	MOVWF gbl_buffer_byte, 1
	MOVLW HIGH(gbl_buffer_byte+D'0')
	MOVWF gbl_delivery_ptr+D'1', 1
	MOVLW LOW(gbl_buffer_byte+D'0')
	MOVWF gbl_delivery_ptr, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer, 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0005E
	RETURN
; } usb_send_one_byte function end

	ORG 0x000001F4
usb_send_e_00016
; { usb_send_empty_data_pkt ; function begin
	MOVLW 0x08
	MOVLB 0x01
	MOVWF gbl_delivery_buffer_size, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer, 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	CLRF gbl_delivery_bytes_to_send, 1
	CLRF gbl_delivery_bytes_to_send+D'1', 1
	CLRF gbl_delivery_bytes_max_send, 1
	CLRF gbl_delivery_bytes_max_send+D'1', 1
	CLRF gbl_delivery_ptr, 1
	CLRF gbl_delivery_ptr+D'1', 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0005E
	RETURN
; } usb_send_empty_data_pkt function end

	ORG 0x00000224
usb_get_de_0001C
; { usb_get_descriptor_callback ; function begin
	CLRF usb_get_de_0001C_1_descrip_00065, 1
	CLRF usb_get_de_0001C_1_descrip_00065+D'1', 1
	DECF usb_get_de_0001C_arg_descr_0001D, W, 1
	BZ	label18
	MOVLW 0x02
	CPFSEQ usb_get_de_0001C_arg_descr_0001D, 1
	BRA	label15
	BRA	label19
label15
	MOVLW 0x03
	CPFSEQ usb_get_de_0001C_arg_descr_0001D, 1
	BRA	label16
	BRA	label20
label16
	MOVLW 0x06
	CPFSEQ usb_get_de_0001C_arg_descr_0001D, 1
	BRA	label17
	BRA	label25
label17
	MOVLW 0x22
	CPFSEQ usb_get_de_0001C_arg_descr_0001D, 1
	BRA	label25
	BRA	label24
label18
	MOVLW HIGH(gbl_my_device_descriptor+D'0')
	MOVWF CompTempVar1469, 1
	MOVLW LOW(gbl_my_device_descriptor+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1469, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
	MOVLW 0x12
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	BRA	label25
label19
	MOVLW HIGH(gbl_complete_HID_configuration+D'0')
	MOVWF CompTempVar1470, 1
	MOVLW LOW(gbl_complete_HID_configuration+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1470, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
	MOVLW 0x29
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	BRA	label25
label20
	MOVF usb_get_de_0001C_arg_descr_0001E, F, 1
	BZ	label21
	DECF usb_get_de_0001C_arg_descr_0001E, W, 1
	BZ	label22
	MOVLW 0x02
	CPFSEQ usb_get_de_0001C_arg_descr_0001E, 1
	BRA	label25
	BRA	label23
label21
	MOVLW 0x04
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	MOVLW HIGH(gbl_string_00+D'0')
	MOVWF CompTempVar1471, 1
	MOVLW LOW(gbl_string_00+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1471, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
	BRA	label25
label22
	MOVLW 0x28
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	MOVLW HIGH(gbl_USB_USBMFR+D'0')
	MOVWF CompTempVar1472, 1
	MOVLW LOW(gbl_USB_USBMFR+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1472, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
	BRA	label25
label23
	MOVLW 0x28
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	MOVLW HIGH(gbl_USB_USBNAME+D'0')
	MOVWF CompTempVar1473, 1
	MOVLW LOW(gbl_USB_USBNAME+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1473, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
	BRA	label25
label24
	MOVLW 0x1D
	MOVWF usb_get_de_0001C_1_descrip_00066, 1
	CLRF usb_get_de_0001C_1_descrip_00066+D'1', 1
	MOVLW HIGH(gbl_device_report_descriptor+D'0')
	MOVWF CompTempVar1474, 1
	MOVLW LOW(gbl_device_report_descriptor+D'0')
	MOVWF usb_get_de_0001C_1_descrip_00065, 1
	MOVF CompTempVar1474, W, 1
	MOVWF usb_get_de_0001C_1_descrip_00065+D'1', 1
label25
	MOVF usb_get_de_0001C_arg_rtn_d_0001F+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_0001C_arg_rtn_d_0001F, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_0001C_1_descrip_00065, W, 1
	MOVWF CompTempVar1475, 1
	MOVF usb_get_de_0001C_1_descrip_00065+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1475, W, 1
	MOVWF INDF0
	MOVF usb_get_de_0001C_arg_rtn_d_00020+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_0001C_arg_rtn_d_00020, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_0001C_1_descrip_00066, W, 1
	MOVWF CompTempVar1476, 1
	MOVF usb_get_de_0001C_1_descrip_00066+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1476, W, 1
	MOVWF INDF0
	RETURN
; } usb_get_descriptor_callback function end

	ORG 0x00000304
usb_device_00010
; { usb_device_configured_callback ; function begin
	MOVLW 0x01
	MOVLB 0x01
	MOVWF gbl_HID_USB_status, 1
	CLRF gbl_outgoing, 1
	RETURN
; } usb_device_configured_callback function end

	ORG 0x0000030E
usb_config_0005F
; { usb_configure_endpoints ; function begin
	BSF gbl_uep1,4
	BSF gbl_uep1,2
	BSF gbl_uep1,1
	BSF gbl_uep1,3
	MOVLB 0x04
	BSF gbl_bd1in,6, 1
	BCF gbl_bd1in,5, 1
	BCF gbl_bd1in,4, 1
	BCF gbl_bd1in,3, 1
	BCF gbl_bd1in,2, 1
	BCF gbl_bd1in,1, 1
	BCF gbl_bd1in,0, 1
	BCF gbl_bd1in,7, 1
	MOVLW 0x40
	MOVWF gbl_bd1out+D'1', 1
	MOVLW 0x50
	MOVWF gbl_bd1out+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd1out+D'3', 1
	BCF gbl_bd1out,6, 1
	BCF gbl_bd1out,5, 1
	BCF gbl_bd1out,4, 1
	BCF gbl_bd1out,3, 1
	BCF gbl_bd1out,2, 1
	BCF gbl_bd1out,1, 1
	BCF gbl_bd1out,0, 1
	BSF gbl_bd1out,7, 1
	RETURN
; } usb_configure_endpoints function end

	ORG 0x00000346
usb_prime__00061
; { usb_prime_ep0_out ; function begin
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0out+D'1', 1
	CLRF gbl_bd0out+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0out+D'3', 1
	BSF gbl_bd0out,6, 1
	BCF gbl_bd0out,5, 1
	BCF gbl_bd0out,4, 1
	BSF gbl_bd0out,3, 1
	BCF gbl_bd0out,2, 1
	BCF gbl_bd0out,1, 1
	BCF gbl_bd0out,0, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_prime_ep0_out function end

	ORG 0x00000364
usb_handle_00062
; { usb_handle_standard_request ; function begin
	MOVLW 0x06
	CPFSEQ usb_handle_00062_arg_sdp+D'1', 1
	BRA	label26
	BRA	label30
label26
	MOVLW 0x05
	CPFSEQ usb_handle_00062_arg_sdp+D'1', 1
	BRA	label27
	BRA	label33
label27
	MOVLW 0x09
	CPFSEQ usb_handle_00062_arg_sdp+D'1', 1
	BRA	label28
	BRA	label34
label28
	MOVLW 0x0A
	CPFSEQ usb_handle_00062_arg_sdp+D'1', 1
	BRA	label29
	BRA	label35
label29
	MOVF usb_handle_00062_arg_sdp+D'1', F, 1
	BZ	label36
	BRA	label37
label30
	MOVF usb_handle_00062_arg_sdp+D'3', W, 1
	MOVWF usb_handle_00062_1_descrip_00063, 1
	MOVF usb_handle_00062_arg_sdp+D'2', W, 1
	MOVWF usb_handle_00062_1_descrip_00064, 1
	MOVF usb_handle_00062_1_descrip_00063, W, 1
	MOVWF usb_get_de_0001C_arg_descr_0001D, 1
	MOVF usb_handle_00062_1_descrip_00064, W, 1
	MOVWF usb_get_de_0001C_arg_descr_0001E, 1
	MOVLW HIGH(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_0001C_arg_rtn_d_0001F+D'1', 1
	MOVLW LOW(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_0001C_arg_rtn_d_0001F, 1
	MOVLW HIGH(gbl_delivery_bytes_to_send+D'0')
	MOVWF usb_get_de_0001C_arg_rtn_d_00020+D'1', 1
	MOVLW LOW(gbl_delivery_bytes_to_send+D'0')
	MOVWF usb_get_de_0001C_arg_rtn_d_00020, 1
	CALL usb_get_de_0001C
	MOVLB 0x01
	MOVF gbl_delivery_ptr, F, 1
	BNZ	label31
	MOVF gbl_delivery_ptr+D'1', F, 1
	BZ	label32
label31
	MOVLW 0x03
	MOVWF gbl_control_mode, 1
	MOVLB 0x02
	MOVF usb_handle_00062_arg_sdp+D'6', W, 1
	MOVLB 0x01
	MOVWF gbl_delivery_bytes_max_send, 1
	MOVLB 0x02
	MOVF usb_handle_00062_arg_sdp+D'7', W, 1
	MOVLB 0x01
	MOVWF gbl_delivery_bytes_max_send+D'1', 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	MOVLW 0x08
	MOVWF gbl_delivery_buffer_size, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW 0x08
	MOVWF gbl_delivery_buffer, 1
	MOVLW 0x05
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0005E
	RETURN
label32
	CALL usb_stall__00017
	RETURN
label33
	MOVF usb_handle_00062_arg_sdp+D'2', W, 1
	MOVLB 0x01
	MOVWF gbl_usb_address, 1
	MOVLW 0x01
	MOVWF gbl_usb_status, 1
	CALL usb_send_e_00016
	MOVLW 0x06
	MOVLB 0x01
	MOVWF gbl_control_mode, 1
	RETURN
label34
	MOVLW 0x06
	MOVLB 0x01
	MOVWF gbl_control_mode, 1
	CALL usb_send_e_00016
	MOVLW 0x03
	MOVLB 0x01
	MOVWF gbl_usb_state, 1
	CALL usb_config_0005F
	CALL usb_device_00010
	RETURN
label35
	MOVLW 0x03
	MOVLB 0x01
	MOVWF gbl_control_mode, 1
	MOVLW 0x01
	MOVLB 0x02
	MOVWF usb_send_o_00060_arg_data, 1
	CALL usb_send_o_00060
label36
	MOVLB 0x02
	CLRF usb_send_o_00060_arg_data, 1
	CALL usb_send_o_00060
	RETURN
label37
	CALL usb_stall__00017
	RETURN
; } usb_handle_standard_request function end

	ORG 0x00000444
usb_handle_0001B
; { usb_handle_class_request ; function begin
	DECF usb_handle_0001B_arg_sdp+D'1', W, 1
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x02
	CPFSEQ usb_handle_0001B_arg_sdp+D'1', 1
	BRA	label38
	RETURN
label38
	MOVLW 0x03
	CPFSEQ usb_handle_0001B_arg_sdp+D'1', 1
	BRA	label39
	RETURN
label39
	MOVLW 0x09
	CPFSEQ usb_handle_0001B_arg_sdp+D'1', 1
	BRA	label40
	RETURN
label40
	MOVLW 0x0A
	CPFSEQ usb_handle_0001B_arg_sdp+D'1', 1
	BRA	label41
	BRA	label42
label41
	MOVLW 0x0B
	CPFSEQ usb_handle_0001B_arg_sdp+D'1', 1
	RETURN
	RETURN
label42
	CALL usb_stall__00017
	RETURN
; } usb_handle_class_request function end

	ORG 0x00000478
usb_handle_0001A
; { usb_handle_ctrl_write_class ; function begin
	RETURN
; } usb_handle_ctrl_write_class function end

	ORG 0x0000047A
usb_handle_00019
; { usb_handle_ctrl_read_class ; function begin
	RETURN
; } usb_handle_ctrl_read_class function end

	ORG 0x0000047C
usb_ep_dat_00023
; { usb_ep_data_in_callback ; function begin
	MOVLB 0x01
	CLRF gbl_outgoing, 1
	RETURN
; } usb_ep_data_in_callback function end

	ORG 0x00000482
usb_ep_dat_00021
; { usb_ep_data_out_callback ; function begin
	MOVF usb_ep_dat_00021_arg_byte_count, W, 1
	MOVLB 0x01
	MOVWF gbl_incoming, 1
	MOVLB 0x02
	CLRF usb_ep_dat_00021_1_i, 1
label43
	MOVF usb_ep_dat_00021_arg_byte_count, W, 1
	CPFSLT usb_ep_dat_00021_1_i, 1
	MOVF usb_ep_dat_00021_arg_byte_count+D'1', W, 1
	BZ	label44
	MOVF usb_ep_dat_00021_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_ep_dat_00021_arg_buffer, W, 1
	MOVWF FSR0L
	MOVF usb_ep_dat_00021_1_i, W, 1
	MOVWF CompTempVar1479, 1
	MOVF CompTempVar1479, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar1480, 1
	MOVLB 0x00
	LFSR 0x00, gbl_HID_USB_OUT_BUFFER
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_ep_dat_00021_1_i, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar1480, W, 1
	MOVWF INDF0
	INCF usb_ep_dat_00021_1_i, F, 1
	BRA	label43
label44
	MOVLW 0x40
	CPFSLT usb_ep_dat_00021_1_i, 1
	RETURN
	MOVF usb_ep_dat_00021_arg_byte_count, W, 1
	MOVWF usb_ep_dat_00021_1_i, 1
label45
	MOVLW 0x40
	CPFSLT usb_ep_dat_00021_1_i, 1
	RETURN
	MOVLB 0x00
	LFSR 0x00, gbl_HID_USB_OUT_BUFFER
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_ep_dat_00021_1_i, W, 1
	ADDWF FSR0L, F
	MOVLW 0x00
	MOVWF INDF0
	INCF usb_ep_dat_00021_1_i, F, 1
	BRA	label45
; } usb_ep_data_out_callback function end

	ORG 0x000004E4
usb_device_00011
; { usb_device_reset_callback ; function begin
	MOVLB 0x01
	CLRF gbl_HID_USB_status, 1
	RETURN
; } usb_device_reset_callback function end

	ORG 0x000004EA
usb_handle_0005D
; { usb_handle_stall ; function begin
	RETURN
; } usb_handle_stall function end

	ORG 0x000004EC
usb_handle_0005C
; { usb_handle_reset ; function begin
	MOVLB 0x01
	CLRF gbl_usb_address, 1
	CLRF gbl_control_mode, 1
	CLRF gbl_usb_status, 1
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0out+D'1', 1
	CLRF gbl_bd0out+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0out+D'3', 1
	BCF gbl_bd0out,6, 1
	BCF gbl_bd0out,5, 1
	BCF gbl_bd0out,4, 1
	BCF gbl_bd0out,3, 1
	BCF gbl_bd0out,2, 1
	BCF gbl_bd0out,1, 1
	BCF gbl_bd0out,0, 1
	BSF gbl_bd0out,7, 1
	MOVLW 0x08
	MOVWF gbl_bd0in+D'1', 1
	MOVWF gbl_bd0in+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0in+D'3', 1
	BCF gbl_bd0in,6, 1
	BCF gbl_bd0in,5, 1
	BCF gbl_bd0in,4, 1
	BCF gbl_bd0in,2, 1
	BCF gbl_bd0in,1, 1
	BCF gbl_bd0in,0, 1
	BCF gbl_bd0in,7, 1
	CALL usb_device_00011
	RETURN
; } usb_handle_reset function end

	ORG 0x00000536
usb_handle_0005B
; { usb_handle_transaction ; function begin
	RRCF gbl_ustat, W
	MOVLB 0x02
	MOVWF usb_handle_0005B_1_end_point, 1
	RRCF usb_handle_0005B_1_end_point, F, 1
	RRCF usb_handle_0005B_1_end_point, F, 1
	MOVLW 0x1F
	ANDWF usb_handle_0005B_1_end_point, F, 1
	BTFSS gbl_ustat,2
	BRA	label46
	MOVLB 0x04
	RRCF gbl_bd0in, W, 1
	MOVLB 0x02
	MOVWF usb_handle_0005B_1_pid, 1
	RRCF usb_handle_0005B_1_pid, F, 1
	MOVLW 0x3F
	ANDWF usb_handle_0005B_1_pid, F, 1
	MOVLW 0x0F
	ANDWF usb_handle_0005B_1_pid, F, 1
	BRA	label47
label46
	MOVLB 0x04
	RRCF gbl_bd0out, W, 1
	MOVLB 0x02
	MOVWF CompTempVar1416, 1
	RRCF CompTempVar1416, F, 1
	MOVLW 0x3F
	ANDWF CompTempVar1416, F, 1
	MOVLW 0x0F
	ANDWF CompTempVar1416, W, 1
	MOVWF usb_handle_0005B_1_pid, 1
label47
	MOVF usb_handle_0005B_1_end_point, F, 1
	BTFSS STATUS,Z
	BRA	label61
	MOVLW 0x0D
	CPFSEQ usb_handle_0005B_1_pid, 1
	BRA	label50
	MOVLW HIGH(gbl_usb_sdp+D'0')
	MOVWF memcpy8_00000_arg_dst+D'1', 1
	MOVLW LOW(gbl_usb_sdp+D'0')
	MOVWF memcpy8_00000_arg_dst, 1
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF memcpy8_00000_arg_src+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF memcpy8_00000_arg_src, 1
	MOVLW 0x08
	MOVWF memcpy8_00000_arg_len, 1
	CALL memcpy8_00000
	CALL usb_prime__00061
	MOVLW 0x40
	MOVLB 0x01
	ANDWF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF CompTempVar1419, 1
	TSTFSZ CompTempVar1419, 1
	BRA	label48
	MOVLW 0x20
	MOVLB 0x01
	ANDWF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF CompTempVar1420, 1
	TSTFSZ CompTempVar1420, 1
	BRA	label48
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'7', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'6', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'5', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'4', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'3', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'2', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp+D'1', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF usb_handle_00062_arg_sdp, 1
	CALL usb_handle_00062
	BRA	label49
label48
	MOVLW 0x40
	MOVLB 0x01
	ANDWF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF CompTempVar1422, 1
	TSTFSZ CompTempVar1422, 1
	BRA	label49
	MOVLB 0x01
	BTFSS gbl_usb_sdp,5, 1
	BRA	label49
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'7', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'6', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'5', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'4', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'3', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'2', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp+D'1', 1
	MOVLB 0x01
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001B_arg_sdp, 1
	CALL usb_handle_0001B
label49
	BCF gbl_ucon,4
	RETURN
label50
	MOVLW 0x09
	CPFSEQ usb_handle_0005B_1_pid, 1
	BRA	label54
	MOVLW 0x03
	MOVLB 0x01
	CPFSEQ gbl_control_mode, 1
	BRA	label51
	CALL usb_send_d_0005E
	RETURN
label51
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	BRA	label52
	CLRF gbl_control_mode, 1
	DECF gbl_usb_status, W, 1
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x02
	MOVWF gbl_usb_state, 1
	MOVF gbl_usb_address, W, 1
	MOVWF gbl_uaddr
	CLRF gbl_usb_status, 1
	RETURN
label52
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label53
	NOP
	RETURN
label53
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	RETURN
	CALL usb_handle_00019
	RETURN
label54
	MOVLW 0x02
	CPFSEQ usb_handle_0005B_1_pid, 1
	BRA	label57
	MOVLW 0x03
	MOVLB 0x01
	CPFSEQ gbl_control_mode, 1
	BRA	label55
	CALL usb_send_d_0005E
	RETURN
label55
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	BRA	label56
	CALL usb_handle_00019
	RETURN
label56
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	RETURN
	CLRF gbl_control_mode, 1
	RETURN
label57
	DECF usb_handle_0005B_1_pid, W, 1
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x05
	MOVLB 0x01
	CPFSEQ gbl_control_mode, 1
	BRA	label58
	CLRF gbl_control_mode, 1
	BRA	label60
label58
	MOVLW 0x02
	CPFSEQ gbl_control_mode, 1
	BRA	label59
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVLB 0x02
	MOVWF usb_handle_0001A_arg_data+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF usb_handle_0001A_arg_data, 1
	MOVLB 0x04
	MOVF gbl_bd0out+D'1', W, 1
	MOVLB 0x02
	MOVWF usb_handle_0001A_arg_count, 1
	CLRF usb_handle_0001A_arg_count+D'1', 1
	CALL usb_handle_0001A
	BRA	label60
label59
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label60
	CLRF gbl_control_mode, 1
label60
	CALL usb_prime__00061
	RETURN
label61
	BTFSS gbl_ustat,2
	BRA	label62
	MOVLB 0x01
	LFSR 0x00, gbl_ep_in_bd_location
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF CompTempVar1428, 1
	BCF STATUS,C
	RLCF CompTempVar1428, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_handle_0005B_83_bd, 1
	MOVF INDF0, W
	MOVWF usb_handle_0005B_83_bd+D'1', 1
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF usb_ep_dat_00023_arg_end_point, 1
	MOVF usb_handle_0005B_83_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_handle_0005B_83_bd, W, 1
	MOVWF FSR0L
	MOVF PREINC0, W
	MOVWF usb_ep_dat_00023_arg_byte_count, 1
	CLRF usb_ep_dat_00023_arg_byte_count+D'1', 1
	CALL usb_ep_dat_00023
	RETURN
label62
	MOVLB 0x01
	LFSR 0x00, gbl_ep_out_bd_location
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF CompTempVar1431, 1
	BCF STATUS,C
	RLCF CompTempVar1431, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_handle_0005B_83_bd, 1
	MOVF INDF0, W
	MOVWF usb_handle_0005B_83_bd+D'1', 1
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF usb_ep_dat_00021_arg_end_point, 1
	MOVLB 0x01
	LFSR 0x00, gbl_ep_out_buffer_location
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF CompTempVar1438, 1
	BCF STATUS,C
	RLCF CompTempVar1438, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_ep_dat_00021_arg_buffer, 1
	MOVF INDF0, W
	MOVWF usb_ep_dat_00021_arg_buffer+D'1', 1
	MOVF usb_handle_0005B_83_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_handle_0005B_83_bd, W, 1
	MOVWF FSR0L
	MOVF PREINC0, W
	MOVWF usb_ep_dat_00021_arg_byte_count, 1
	CLRF usb_ep_dat_00021_arg_byte_count+D'1', 1
	CALL usb_ep_dat_00021
	MOVLB 0x01
	LFSR 0x00, gbl_ep_out_buffer_size
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_handle_0005B_1_end_point, W, 1
	MOVWF CompTempVar1441, 1
	BCF STATUS,C
	RLCF CompTempVar1441, F, 1
	MOVF CompTempVar1441, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF CompTempVar1443, 1
	MOVF INDF0, W
	MOVWF CompTempVar1443+D'1', 1
	MOVF usb_handle_0005B_83_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_handle_0005B_83_bd, W, 1
	MOVWF FSR0L
	MOVF CompTempVar1443, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	BCF INDF0,6
	BCF INDF0,5
	BCF INDF0,4
	BCF INDF0,3
	BCF INDF0,2
	BCF INDF0,1
	BCF INDF0,0
	BSF INDF0,7
	RETURN
; } usb_handle_transaction function end

	ORG 0x000007C6
usb_handle_00013
; { usb_handle_isr ; function begin
	BTFSS gbl_pir2,5
	RETURN
	BCF gbl_pir2,5
	BTFSC gbl_uir,4
	BCF gbl_uir,4
	BTFSS gbl_uir,3
	BRA	label63
	CALL usb_handle_0005B
	BCF gbl_uir,3
label63
	BTFSS gbl_uir,0
	BRA	label64
	CALL usb_handle_0005C
	BCF gbl_uir,0
label64
	BTFSS gbl_uir,5
	BRA	label65
	CALL usb_handle_0005D
	BCF gbl_uir,5
label65
	BTFSC gbl_uir,6
	BCF gbl_uir,6
	RETURN
; } usb_handle_isr function end

	ORG 0x000007F4
rtc_handle_00025
; { rtc_handle_timer ; function begin
	MOVLW HIGH(gbl_rtc_ticks+D'2')
	MOVLB 0x02
	MOVWF CompTempVar1062+D'1', 1
	MOVLW LOW(gbl_rtc_ticks+D'2')
	MOVWF CompTempVar1062, 1
	MOVF CompTempVar1062+D'1', W, 1
	MOVWF FSR0H
	MOVF CompTempVar1062, W, 1
	MOVWF FSR0L
	MOVF POSTINC0, W
	MOVWF CompTempVar1064, 1
	MOVF POSTINC0, W
	MOVWF CompTempVar1064+D'1', 1
	MOVF POSTINC0, W
	MOVWF CompTempVar1064+D'2', 1
	INCF CompTempVar1064, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar1064+D'1', F, 1
	BTFSC STATUS,Z
	INCF CompTempVar1064+D'2', F, 1
	BTFSC STATUS,Z
	INCF INDF0, F
	DECF FSR0L, F
	MOVF CompTempVar1064+D'2', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1064+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1064, W, 1
	MOVWF INDF0
	MOVLW 0x00
	MOVLB 0x01
	ADDWF gbl_rtc_overflows, F, 1
	MOVLW 0x00
	ADDWFC gbl_rtc_overflows+D'1', F, 1
	MOVLW 0x20
	ADDWFC gbl_rtc_overflows+D'2', F, 1
	MOVLW 0x00
	ADDWFC gbl_rtc_overflows+D'3', F, 1
	MOVLW 0xB5
	ADDWF gbl_rtc_100us, F, 1
	MOVLW 0x01
	ADDWFC gbl_rtc_100us+D'1', F, 1
	MOVLW 0x02
	SUBWF gbl_rtc_overflows+D'3', W, 1
	BNZ	label66
	MOVLW 0xDC
	SUBWF gbl_rtc_overflows+D'2', W, 1
	BNZ	label66
	MOVLW 0x6C
	SUBWF gbl_rtc_overflows+D'1', W, 1
	BNZ	label66
	MOVLW 0x00
	SUBWF gbl_rtc_overflows, W, 1
label66
	BTFSS STATUS,C
	RETURN
	CLRF gbl_rtc_100us, 1
	CLRF gbl_rtc_100us+D'1', 1
	INCF gbl_rtc_time, F, 1
	BTFSC STATUS,Z
	INCF gbl_rtc_time+D'1', F, 1
	BTFSC STATUS,Z
	INCF gbl_rtc_time+D'2', F, 1
	BTFSC STATUS,Z
	INCF gbl_rtc_time+D'3', F, 1
	MOVLW 0x00
	SUBWF gbl_rtc_overflows, F, 1
	MOVLW 0x6C
	SUBWFB gbl_rtc_overflows+D'1', F, 1
	MOVLW 0xDC
	SUBWFB gbl_rtc_overflows+D'2', F, 1
	MOVLW 0x02
	SUBWFB gbl_rtc_overflows+D'3', F, 1
	RETURN
; } rtc_handle_timer function end

	ORG 0x0000088A
serial_sen_0003C
; { serial_send_byte ; function begin
label67
	BTFSS gbl_txsta,1
	BRA	label67
	MOVF serial_sen_0003C_arg_byte, W, 1
	MOVWF gbl_txreg
	RETURN
; } serial_send_byte function end

	ORG 0x00000894
__rem_32_3_00002
; { __rem_32_32 ; function begin
	CLRF CompTempVarRet485, 1
	CLRF CompTempVarRet485+D'1', 1
	CLRF CompTempVarRet485+D'2', 1
	CLRF CompTempVarRet485+D'3', 1
	CLRF __rem_32_3_00002_1_c, 1
	CLRF __rem_32_3_00002_1_c+D'1', 1
	CLRF __rem_32_3_00002_1_c+D'2', 1
	CLRF __rem_32_3_00002_1_c+D'3', 1
	CLRF __rem_32_3_00002_1_i, 1
label68
	MOVLW 0x20
	ANDWF __rem_32_3_00002_1_i, W, 1
	MOVWF CompTempVar487, 1
	TSTFSZ CompTempVar487, 1
	RETURN
	BCF STATUS,C
	RLCF __rem_32_3_00002_1_c, F, 1
	RLCF __rem_32_3_00002_1_c+D'1', F, 1
	RLCF __rem_32_3_00002_1_c+D'2', F, 1
	RLCF __rem_32_3_00002_1_c+D'3', F, 1
	RLCF __rem_32_3_00002_arg_a, F, 1
	RLCF __rem_32_3_00002_arg_a+D'1', F, 1
	RLCF __rem_32_3_00002_arg_a+D'2', F, 1
	RLCF __rem_32_3_00002_arg_a+D'3', F, 1
	RLCF CompTempVarRet485, F, 1
	RLCF CompTempVarRet485+D'1', F, 1
	RLCF CompTempVarRet485+D'2', F, 1
	RLCF CompTempVarRet485+D'3', F, 1
	MOVF __rem_32_3_00002_arg_b+D'3', W, 1
	SUBWF CompTempVarRet485+D'3', W, 1
	BNZ	label69
	MOVF __rem_32_3_00002_arg_b+D'2', W, 1
	SUBWF CompTempVarRet485+D'2', W, 1
	BNZ	label69
	MOVF __rem_32_3_00002_arg_b+D'1', W, 1
	SUBWF CompTempVarRet485+D'1', W, 1
	BNZ	label69
	MOVF __rem_32_3_00002_arg_b, W, 1
	SUBWF CompTempVarRet485, W, 1
label69
	BNC	label70
	MOVF __rem_32_3_00002_arg_b, W, 1
	SUBWF CompTempVarRet485, F, 1
	MOVF __rem_32_3_00002_arg_b+D'1', W, 1
	SUBWFB CompTempVarRet485+D'1', F, 1
	MOVF __rem_32_3_00002_arg_b+D'2', W, 1
	SUBWFB CompTempVarRet485+D'2', F, 1
	MOVF __rem_32_3_00002_arg_b+D'3', W, 1
	SUBWFB CompTempVarRet485+D'3', F, 1
	BSF __rem_32_3_00002_1_c,0, 1
label70
	INCF __rem_32_3_00002_1_i, F, 1
	BRA	label68
; } __rem_32_32 function end

	ORG 0x000008F8
__rem_16_1_00004
; { __rem_16_16 ; function begin
	CLRF CompTempVarRet491, 1
	CLRF CompTempVarRet491+D'1', 1
	CLRF __rem_16_1_00004_1_c, 1
	CLRF __rem_16_1_00004_1_c+D'1', 1
	CLRF __rem_16_1_00004_1_i, 1
label71
	MOVLW 0x10
	ANDWF __rem_16_1_00004_1_i, W, 1
	MOVWF CompTempVar493, 1
	TSTFSZ CompTempVar493, 1
	RETURN
	BCF STATUS,C
	RLCF __rem_16_1_00004_1_c, F, 1
	RLCF __rem_16_1_00004_1_c+D'1', F, 1
	RLCF __rem_16_1_00004_arg_a, F, 1
	RLCF __rem_16_1_00004_arg_a+D'1', F, 1
	RLCF CompTempVarRet491, F, 1
	RLCF CompTempVarRet491+D'1', F, 1
	MOVF __rem_16_1_00004_arg_b, W, 1
	SUBWF CompTempVarRet491, W, 1
	MOVF __rem_16_1_00004_arg_b+D'1', W, 1
	CPFSEQ CompTempVarRet491+D'1', 1
	SUBWF CompTempVarRet491+D'1', W, 1
	BNC	label72
	MOVF __rem_16_1_00004_arg_b, W, 1
	SUBWF CompTempVarRet491, F, 1
	MOVF __rem_16_1_00004_arg_b+D'1', W, 1
	SUBWFB CompTempVarRet491+D'1', F, 1
	BSF __rem_16_1_00004_1_c,0, 1
label72
	INCF __rem_16_1_00004_1_i, F, 1
	BRA	label71
; } __rem_16_16 function end

	ORG 0x00000934
__div_32_3_00001
; { __div_32_32 ; function begin
	CLRF __div_32_3_00001_1_r, 1
	CLRF __div_32_3_00001_1_r+D'1', 1
	CLRF __div_32_3_00001_1_r+D'2', 1
	CLRF __div_32_3_00001_1_r+D'3', 1
	CLRF CompTempVarRet482, 1
	CLRF CompTempVarRet482+D'1', 1
	CLRF CompTempVarRet482+D'2', 1
	CLRF CompTempVarRet482+D'3', 1
	CLRF __div_32_3_00001_1_i, 1
label73
	MOVLW 0x20
	ANDWF __div_32_3_00001_1_i, W, 1
	MOVWF CompTempVar484, 1
	TSTFSZ CompTempVar484, 1
	RETURN
	BCF STATUS,C
	RLCF CompTempVarRet482, F, 1
	RLCF CompTempVarRet482+D'1', F, 1
	RLCF CompTempVarRet482+D'2', F, 1
	RLCF CompTempVarRet482+D'3', F, 1
	RLCF __div_32_3_00001_arg_a, F, 1
	RLCF __div_32_3_00001_arg_a+D'1', F, 1
	RLCF __div_32_3_00001_arg_a+D'2', F, 1
	RLCF __div_32_3_00001_arg_a+D'3', F, 1
	RLCF __div_32_3_00001_1_r, F, 1
	RLCF __div_32_3_00001_1_r+D'1', F, 1
	RLCF __div_32_3_00001_1_r+D'2', F, 1
	RLCF __div_32_3_00001_1_r+D'3', F, 1
	MOVF __div_32_3_00001_arg_b+D'3', W, 1
	SUBWF __div_32_3_00001_1_r+D'3', W, 1
	BNZ	label74
	MOVF __div_32_3_00001_arg_b+D'2', W, 1
	SUBWF __div_32_3_00001_1_r+D'2', W, 1
	BNZ	label74
	MOVF __div_32_3_00001_arg_b+D'1', W, 1
	SUBWF __div_32_3_00001_1_r+D'1', W, 1
	BNZ	label74
	MOVF __div_32_3_00001_arg_b, W, 1
	SUBWF __div_32_3_00001_1_r, W, 1
label74
	BNC	label75
	MOVF __div_32_3_00001_arg_b, W, 1
	SUBWF __div_32_3_00001_1_r, F, 1
	MOVF __div_32_3_00001_arg_b+D'1', W, 1
	SUBWFB __div_32_3_00001_1_r+D'1', F, 1
	MOVF __div_32_3_00001_arg_b+D'2', W, 1
	SUBWFB __div_32_3_00001_1_r+D'2', F, 1
	MOVF __div_32_3_00001_arg_b+D'3', W, 1
	SUBWFB __div_32_3_00001_1_r+D'3', F, 1
	BSF CompTempVarRet482,0, 1
label75
	INCF __div_32_3_00001_1_i, F, 1
	BRA	label73
; } __div_32_32 function end

	ORG 0x00000998
__div_16_1_00003
; { __div_16_16 ; function begin
	CLRF __div_16_1_00003_1_r, 1
	CLRF __div_16_1_00003_1_r+D'1', 1
	CLRF CompTempVarRet488, 1
	CLRF CompTempVarRet488+D'1', 1
	CLRF __div_16_1_00003_1_i, 1
label76
	MOVLW 0x10
	ANDWF __div_16_1_00003_1_i, W, 1
	MOVWF CompTempVar490, 1
	TSTFSZ CompTempVar490, 1
	RETURN
	BCF STATUS,C
	RLCF CompTempVarRet488, F, 1
	RLCF CompTempVarRet488+D'1', F, 1
	RLCF __div_16_1_00003_arg_a, F, 1
	RLCF __div_16_1_00003_arg_a+D'1', F, 1
	RLCF __div_16_1_00003_1_r, F, 1
	RLCF __div_16_1_00003_1_r+D'1', F, 1
	MOVF __div_16_1_00003_arg_b, W, 1
	SUBWF __div_16_1_00003_1_r, W, 1
	MOVF __div_16_1_00003_arg_b+D'1', W, 1
	CPFSEQ __div_16_1_00003_1_r+D'1', 1
	SUBWF __div_16_1_00003_1_r+D'1', W, 1
	BNC	label77
	MOVF __div_16_1_00003_arg_b, W, 1
	SUBWF __div_16_1_00003_1_r, F, 1
	MOVF __div_16_1_00003_arg_b+D'1', W, 1
	SUBWFB __div_16_1_00003_1_r+D'1', F, 1
	BSF CompTempVarRet488,0, 1
label77
	INCF __div_16_1_00003_1_i, F, 1
	BRA	label76
; } __div_16_16 function end

	ORG 0x000009D4
usb_send_d_00015
; { usb_send_data ; function begin
	MOVLB 0x01
	LFSR 0x00, gbl_ep_in_buffer_location
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_send_d_00015_arg_ep, W, 1
	MOVWF CompTempVar1446, 1
	BCF STATUS,C
	RLCF CompTempVar1446, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_00015_1_buffer, 1
	MOVF INDF0, W
	MOVWF usb_send_d_00015_1_buffer+D'1', 1
	MOVLB 0x01
	LFSR 0x00, gbl_ep_in_bd_location
	MOVF FSR0L, W
	MOVLB 0x02
	MOVF usb_send_d_00015_arg_ep, W, 1
	MOVWF CompTempVar1449, 1
	BCF STATUS,C
	RLCF CompTempVar1449, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_00015_1_bd, 1
	MOVF INDF0, W
	MOVWF usb_send_d_00015_1_bd+D'1', 1
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BTFSC INDF0,7
	RETURN
	CLRF usb_send_d_00015_1_count, 1
label78
	MOVF usb_send_d_00015_arg_send_count, W, 1
	CPFSLT usb_send_d_00015_1_count, 1
	BRA	label79
	MOVF usb_send_d_00015_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_arg_data, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_00015_1_count, W, 1
	MOVWF CompTempVar1452, 1
	MOVF CompTempVar1452, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar1453, 1
	MOVF usb_send_d_00015_1_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_buffer, W, 1
	ADDWF usb_send_d_00015_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar1453, W, 1
	MOVWF INDF0
	INCF usb_send_d_00015_1_count, F, 1
	BRA	label78
label79
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_00015_1_count, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF usb_send_d_00015_1_buffer, W, 1
	MOVWF CompTempVar1454, 1
	MOVF usb_send_d_00015_1_buffer+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1454, W, 1
	MOVWF INDF0
	BTFSS usb_send_d_00015_arg_first,2, 1
	BRA	label80
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BCF INDF0,6
label80
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BTFSS INDF0,6
	BRA	label81
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BCF INDF0,6
	BRA	label82
label81
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BSF INDF0,6
label82
	MOVF usb_send_d_00015_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_00015_1_bd, W, 1
	MOVWF FSR0L
	BCF INDF0,5
	BCF INDF0,4
	BSF INDF0,3
	BCF INDF0,2
	BCF INDF0,1
	BCF INDF0,0
	BSF INDF0,7
	RETURN
; } usb_send_data function end

	ORG 0x00000AB0
serial_sen_0003E
; { serial_send_string ; function begin
label83
	MOVF serial_sen_0003E_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF serial_sen_0003E_arg_data, W, 1
	MOVWF FSR0L
	MOVF INDF0, F
	BTFSC STATUS,Z
	RETURN
	MOVF serial_sen_0003E_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF serial_sen_0003E_arg_data, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	INFSNZ serial_sen_0003E_arg_data, F, 1
	INCF serial_sen_0003E_arg_data+D'1', F, 1
	BRA	label83
; } serial_send_string function end

	ORG 0x00000AD4
ltoa_00000
; { ltoa ; function begin
	CLRF ltoa_00000_1_signChar, 1
	CLRF ltoa_00000_1_digitWidth, 1
	BTFSS ltoa_00000_arg_val+D'3',7, 1
	BRA	label84
	MOVLW 0x0A
	CPFSEQ ltoa_00000_arg_radix, 1
	BRA	label84
	MOVF ltoa_00000_arg_val, W, 1
	SUBLW 0x00
	MOVWF CompTempVar882, 1
	MOVLW 0x00
	MOVWF CompTempVar883, 1
	MOVF ltoa_00000_arg_val+D'1', W, 1
	SUBWFB CompTempVar883, F, 1
	MOVLW 0x00
	MOVWF CompTempVar884, 1
	MOVF ltoa_00000_arg_val+D'2', W, 1
	SUBWFB CompTempVar884, F, 1
	MOVLW 0x00
	MOVWF CompTempVar885, 1
	MOVF ltoa_00000_arg_val+D'3', W, 1
	SUBWFB CompTempVar885, F, 1
	MOVF CompTempVar882, W, 1
	MOVWF ltoa_00000_arg_val, 1
	MOVF CompTempVar883, W, 1
	MOVWF ltoa_00000_arg_val+D'1', 1
	MOVF CompTempVar884, W, 1
	MOVWF ltoa_00000_arg_val+D'2', 1
	MOVF CompTempVar885, W, 1
	MOVWF ltoa_00000_arg_val+D'3', 1
	MOVLW 0x2D
	MOVWF ltoa_00000_1_signChar, 1
	INCF ltoa_00000_1_digitWidth, F, 1
label84
	MOVF ltoa_00000_arg_val, W, 1
	MOVWF ltoa_00000_1_valu, 1
	MOVF ltoa_00000_arg_val+D'1', W, 1
	MOVWF ltoa_00000_1_valu+D'1', 1
	MOVF ltoa_00000_arg_val+D'2', W, 1
	MOVWF ltoa_00000_1_valu+D'2', 1
	MOVF ltoa_00000_arg_val+D'3', W, 1
	MOVWF ltoa_00000_1_valu+D'3', 1
label85
	INCF ltoa_00000_1_digitWidth, F, 1
	MOVF ltoa_00000_1_valu, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF ltoa_00000_1_valu+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF ltoa_00000_1_valu+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF ltoa_00000_1_valu+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	MOVF ltoa_00000_arg_radix, W, 1
	MOVWF __div_32_3_00001_arg_b, 1
	CLRF __div_32_3_00001_arg_b+D'1', 1
	CLRF __div_32_3_00001_arg_b+D'2', 1
	CLRF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVWF ltoa_00000_1_valu, 1
	MOVF CompTempVarRet482+D'1', W, 1
	MOVWF ltoa_00000_1_valu+D'1', 1
	MOVF CompTempVarRet482+D'2', W, 1
	MOVWF ltoa_00000_1_valu+D'2', 1
	MOVF CompTempVarRet482+D'3', W, 1
	MOVWF ltoa_00000_1_valu+D'3', 1
	MOVF ltoa_00000_1_valu, W, 1
	IORWF ltoa_00000_1_valu+D'1', W, 1
	IORWF ltoa_00000_1_valu+D'2', W, 1
	IORWF ltoa_00000_1_valu+D'3', W, 1
	ANDLW 0xFF
	BNZ	label85
	MOVF ltoa_00000_arg_val, W, 1
	MOVWF ltoa_00000_1_valu, 1
	MOVF ltoa_00000_arg_val+D'1', W, 1
	MOVWF ltoa_00000_1_valu+D'1', 1
	MOVF ltoa_00000_arg_val+D'2', W, 1
	MOVWF ltoa_00000_1_valu+D'2', 1
	MOVF ltoa_00000_arg_val+D'3', W, 1
	MOVWF ltoa_00000_1_valu+D'3', 1
	CLRF ltoa_00000_1_c, 1
label86
	INCF ltoa_00000_1_digitWidth, W, 1
	BZ	label90
	MOVF ltoa_00000_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF ltoa_00000_arg_buffer, W, 1
	ADDWF ltoa_00000_1_digitWidth, W, 1
	MOVWF FSR0L
	MOVF ltoa_00000_1_c, W, 1
	MOVWF INDF0
	DECFSZ ltoa_00000_1_digitWidth, F, 1
	BRA	label87
	MOVF ltoa_00000_1_signChar, F, 1
	BZ	label87
	MOVF ltoa_00000_1_signChar, W, 1
	MOVWF ltoa_00000_1_c, 1
	BRA	label86
label87
	MOVF ltoa_00000_1_valu, W, 1
	MOVWF __rem_32_3_00002_arg_a, 1
	MOVF ltoa_00000_1_valu+D'1', W, 1
	MOVWF __rem_32_3_00002_arg_a+D'1', 1
	MOVF ltoa_00000_1_valu+D'2', W, 1
	MOVWF __rem_32_3_00002_arg_a+D'2', 1
	MOVF ltoa_00000_1_valu+D'3', W, 1
	MOVWF __rem_32_3_00002_arg_a+D'3', 1
	MOVF ltoa_00000_arg_radix, W, 1
	MOVWF __rem_32_3_00002_arg_b, 1
	CLRF __rem_32_3_00002_arg_b+D'1', 1
	CLRF __rem_32_3_00002_arg_b+D'2', 1
	CLRF __rem_32_3_00002_arg_b+D'3', 1
	CALL __rem_32_3_00002
	MOVF CompTempVarRet485, W, 1
	MOVWF CompTempVar887, 1
	MOVF CompTempVar887, W, 1
	MOVWF ltoa_00000_1_c, 1
	MOVLW 0x09
	CPFSGT ltoa_00000_1_c, 1
	BRA	label88
	MOVLW 0x37
	ADDWF ltoa_00000_1_c, F, 1
	BRA	label89
label88
	MOVLW 0x30
	ADDWF ltoa_00000_1_c, F, 1
label89
	MOVF ltoa_00000_1_valu, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF ltoa_00000_1_valu+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF ltoa_00000_1_valu+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF ltoa_00000_1_valu+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	MOVF ltoa_00000_arg_radix, W, 1
	MOVWF __div_32_3_00001_arg_b, 1
	CLRF __div_32_3_00001_arg_b+D'1', 1
	CLRF __div_32_3_00001_arg_b+D'2', 1
	CLRF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVWF ltoa_00000_1_valu, 1
	MOVF CompTempVarRet482+D'1', W, 1
	MOVWF ltoa_00000_1_valu+D'1', 1
	MOVF CompTempVarRet482+D'2', W, 1
	MOVWF ltoa_00000_1_valu+D'2', 1
	MOVF CompTempVarRet482+D'3', W, 1
	MOVWF ltoa_00000_1_valu+D'3', 1
	BRA	label86
label90
	MOVF ltoa_00000_arg_buffer, W, 1
	MOVWF CompTempVarRet881, 1
	MOVF ltoa_00000_arg_buffer+D'1', W, 1
	MOVWF CompTempVarRet881+D'1', 1
	RETURN
; } ltoa function end

	ORG 0x00000C04
itoa_00000
; { itoa ; function begin
	CLRF itoa_00000_1_signChar, 1
	CLRF itoa_00000_1_digitWidth, 1
	BTFSS itoa_00000_arg_val+D'1',7, 1
	BRA	label91
	MOVLW 0x0A
	CPFSEQ itoa_00000_arg_radix, 1
	BRA	label91
	COMF itoa_00000_arg_val, F, 1
	COMF itoa_00000_arg_val+D'1', F, 1
	INCF itoa_00000_arg_val, F, 1
	BTFSC STATUS,Z
	INCF itoa_00000_arg_val+D'1', F, 1
	MOVLW 0x2D
	MOVWF itoa_00000_1_signChar, 1
	INCF itoa_00000_1_digitWidth, F, 1
label91
	MOVF itoa_00000_arg_val, W, 1
	MOVWF itoa_00000_1_valu, 1
	MOVF itoa_00000_arg_val+D'1', W, 1
	MOVWF itoa_00000_1_valu+D'1', 1
label92
	INCF itoa_00000_1_digitWidth, F, 1
	MOVF itoa_00000_1_valu, W, 1
	MOVWF __div_16_1_00003_arg_a, 1
	MOVF itoa_00000_1_valu+D'1', W, 1
	MOVWF __div_16_1_00003_arg_a+D'1', 1
	MOVF itoa_00000_arg_radix, W, 1
	MOVWF __div_16_1_00003_arg_b, 1
	CLRF __div_16_1_00003_arg_b+D'1', 1
	CALL __div_16_1_00003
	MOVF CompTempVarRet488, W, 1
	MOVWF itoa_00000_1_valu, 1
	MOVF CompTempVarRet488+D'1', W, 1
	MOVWF itoa_00000_1_valu+D'1', 1
	MOVF itoa_00000_1_valu, F, 1
	BNZ	label92
	MOVF itoa_00000_1_valu+D'1', F, 1
	BNZ	label92
	MOVF itoa_00000_arg_val, W, 1
	MOVWF itoa_00000_1_valu, 1
	MOVF itoa_00000_arg_val+D'1', W, 1
	MOVWF itoa_00000_1_valu+D'1', 1
	CLRF itoa_00000_1_c, 1
label93
	INCF itoa_00000_1_digitWidth, W, 1
	BZ	label97
	MOVF itoa_00000_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF itoa_00000_arg_buffer, W, 1
	ADDWF itoa_00000_1_digitWidth, W, 1
	MOVWF FSR0L
	MOVF itoa_00000_1_c, W, 1
	MOVWF INDF0
	DECFSZ itoa_00000_1_digitWidth, F, 1
	BRA	label94
	MOVF itoa_00000_1_signChar, F, 1
	BZ	label94
	MOVF itoa_00000_1_signChar, W, 1
	MOVWF itoa_00000_1_c, 1
	BRA	label93
label94
	MOVF itoa_00000_1_valu, W, 1
	MOVWF __rem_16_1_00004_arg_a, 1
	MOVF itoa_00000_1_valu+D'1', W, 1
	MOVWF __rem_16_1_00004_arg_a+D'1', 1
	MOVF itoa_00000_arg_radix, W, 1
	MOVWF __rem_16_1_00004_arg_b, 1
	CLRF __rem_16_1_00004_arg_b+D'1', 1
	CALL __rem_16_1_00004
	MOVF CompTempVarRet491, W, 1
	MOVWF CompTempVar880, 1
	MOVF CompTempVar880, W, 1
	MOVWF itoa_00000_1_c, 1
	MOVLW 0x09
	CPFSGT itoa_00000_1_c, 1
	BRA	label95
	MOVLW 0x37
	ADDWF itoa_00000_1_c, F, 1
	BRA	label96
label95
	MOVLW 0x30
	ADDWF itoa_00000_1_c, F, 1
label96
	MOVF itoa_00000_1_valu, W, 1
	MOVWF __div_16_1_00003_arg_a, 1
	MOVF itoa_00000_1_valu+D'1', W, 1
	MOVWF __div_16_1_00003_arg_a+D'1', 1
	MOVF itoa_00000_arg_radix, W, 1
	MOVWF __div_16_1_00003_arg_b, 1
	CLRF __div_16_1_00003_arg_b+D'1', 1
	CALL __div_16_1_00003
	MOVF CompTempVarRet488, W, 1
	MOVWF itoa_00000_1_valu, 1
	MOVF CompTempVarRet488+D'1', W, 1
	MOVWF itoa_00000_1_valu+D'1', 1
	BRA	label93
label97
	MOVF itoa_00000_arg_buffer, W, 1
	MOVWF CompTempVarRet876, 1
	MOVF itoa_00000_arg_buffer+D'1', W, 1
	MOVWF CompTempVarRet876+D'1', 1
	RETURN
; } itoa function end

	ORG 0x00000CC8
eeprom_wri_00008
; { eeprom_write ; function begin
	BCF gbl_eecon1,6
label98
	BTFSC gbl_eecon1,1
	BRA	label98
	MOVF eeprom_wri_00008_arg_address, W, 1
	MOVWF gbl_eeadr
	MOVF eeprom_wri_00008_arg_data, W, 1
	MOVWF gbl_eedata
	BCF gbl_eecon1,7
	BSF gbl_eecon1,2
	BCF eeprom_wri_00008_1_intState,2, 1
	BTFSC gbl_intcon,7
	BSF eeprom_wri_00008_1_intState,2, 1
	BCF gbl_intcon,7
	MOVLW 0x55
	MOVWF gbl_eecon2
	MOVLW 0xAA
	MOVWF gbl_eecon2
	BSF gbl_eecon1,1
	BCF gbl_eecon1,2
	BTFSC eeprom_wri_00008_1_intState,2, 1
	BSF gbl_intcon,7
	BTFSS eeprom_wri_00008_1_intState,2, 1
	BCF gbl_intcon,7
	RETURN
; } eeprom_write function end

	ORG 0x00000CF8
usbhid_sen_0000B
; { usbhid_send_data ; function begin
	MOVLB 0x01
	MOVF gbl_outgoing, F, 1
	BZ	label99
	MOVLW 0x01
	MOVLB 0x02
	MOVWF CompTempVarRet1397, 1
	RETURN
label99
	MOVLW 0x01
	MOVLB 0x02
	MOVWF usb_send_d_00015_arg_ep, 1
	MOVF usbhid_sen_0000B_arg_buffer, W, 1
	MOVWF usb_send_d_00015_arg_data, 1
	MOVF usbhid_sen_0000B_arg_buffer+D'1', W, 1
	MOVWF usb_send_d_00015_arg_data+D'1', 1
	MOVLW 0x40
	MOVWF usb_send_d_00015_arg_send_count, 1
	BCF usb_send_d_00015_arg_first,2, 1
	CALL usb_send_d_00015
	MOVLW 0x01
	MOVLB 0x01
	MOVWF gbl_outgoing, 1
	MOVLB 0x02
	CLRF CompTempVarRet1397, 1
	RETURN
; } usbhid_send_data function end

	ORG 0x00000D2A
usb_setup_00000
; { usb_setup ; function begin
	MOVLB 0x01
	CLRF gbl_usb_state, 1
	BCF gbl_ucfg,3
	BSF gbl_ucfg,2
	BSF gbl_ucfg,4
	BCF gbl_ucfg,1
	BCF gbl_ucfg,0
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_ep_in_bd_location+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_ep_in_bd_location, 1
	MOVLW HIGH(gbl_bd1in+D'0')
	MOVWF gbl_ep_in_bd_location+D'3', 1
	MOVLW LOW(gbl_bd1in+D'0')
	MOVWF gbl_ep_in_bd_location+D'2', 1
	MOVLW HIGH(gbl_bd0out+D'0')
	MOVWF gbl_ep_out_bd_location+D'1', 1
	MOVLW LOW(gbl_bd0out+D'0')
	MOVWF gbl_ep_out_bd_location, 1
	MOVLW HIGH(gbl_bd1out+D'0')
	MOVWF gbl_ep_out_bd_location+D'3', 1
	MOVLW LOW(gbl_bd1out+D'0')
	MOVWF gbl_ep_out_bd_location+D'2', 1
	BSF gbl_uep0,4
	BSF gbl_uep0,2
	BSF gbl_uep0,1
	BCF gbl_uep0,3
	BSF gbl_uie,5
	BSF gbl_uie,3
	BSF gbl_uie,0
	BSF gbl_pie2,5
	RETURN
; } usb_setup function end

	ORG 0x00000D6A
toupper_00000
; { toupper ; function begin
	MOVLW 0x61
	CPFSLT toupper_00000_arg_ch, 1
	BRA	label100
	BRA	label101
label100
	MOVF toupper_00000_arg_ch, W, 1
	SUBLW 0x7A
	BNC	label101
	MOVLW 0xDF
	ANDWF toupper_00000_arg_ch, W, 1
	MOVWF CompTempVarRet821, 1
	RETURN
label101
	MOVF toupper_00000_arg_ch, W, 1
	MOVWF CompTempVarRet821, 1
	RETURN
; } toupper function end

	ORG 0x00000D86
serial_sen_00042
; { serial_send_long ; function begin
	MOVF serial_sen_00042_arg_val, W, 1
	MOVWF ltoa_00000_arg_val, 1
	MOVF serial_sen_00042_arg_val+D'1', W, 1
	MOVWF ltoa_00000_arg_val+D'1', 1
	MOVF serial_sen_00042_arg_val+D'2', W, 1
	MOVWF ltoa_00000_arg_val+D'2', 1
	MOVF serial_sen_00042_arg_val+D'3', W, 1
	MOVWF ltoa_00000_arg_val+D'3', 1
	MOVLW HIGH(serial_sen_00042_1_str+D'0')
	MOVWF ltoa_00000_arg_buffer+D'1', 1
	MOVLW LOW(serial_sen_00042_1_str+D'0')
	MOVWF ltoa_00000_arg_buffer, 1
	MOVLW 0x0A
	MOVWF ltoa_00000_arg_radix, 1
	CALL ltoa_00000
	MOVLW HIGH(serial_sen_00042_1_str+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(serial_sen_00042_1_str+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	RETURN
; } serial_send_long function end

	ORG 0x00000DB4
serial_sen_00041
; { serial_send_int ; function begin
	MOVF serial_sen_00041_arg_val, W, 1
	MOVWF itoa_00000_arg_val, 1
	MOVF serial_sen_00041_arg_val+D'1', W, 1
	MOVWF itoa_00000_arg_val+D'1', 1
	MOVLW HIGH(serial_sen_00041_1_str+D'0')
	MOVWF itoa_00000_arg_buffer+D'1', 1
	MOVLW LOW(serial_sen_00041_1_str+D'0')
	MOVWF itoa_00000_arg_buffer, 1
	MOVLW 0x0A
	MOVWF itoa_00000_arg_radix, 1
	CALL itoa_00000
	MOVLW HIGH(serial_sen_00041_1_str+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(serial_sen_00041_1_str+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	RETURN
; } serial_send_int function end

	ORG 0x00000DDA
rtc_get_ti_00026
; { rtc_get_time ; function begin
	MOVLB 0x01
	MOVF gbl_rtc_time, W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet1065, 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'1', W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet1065+D'1', 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'2', W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet1065+D'2', 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'3', W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet1065+D'3', 1
	RETURN
; } rtc_get_time function end

	ORG 0x00000DFC
isspace_00000
; { isspace ; function begin
	MOVLW 0x20
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label102
	BRA	label107
label102
	MOVLW 0x09
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label103
	BRA	label107
label103
	MOVLW 0x0B
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label104
	BRA	label107
label104
	MOVLW 0x0A
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label105
	BRA	label107
label105
	MOVLW 0x0D
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label106
	BRA	label107
label106
	MOVLW 0x0C
	CPFSEQ isspace_00000_arg_ch, 1
	BRA	label108
label107
	MOVLW 0x01
	MOVWF CompTempVarRet796, 1
	RETURN
label108
	CLRF CompTempVarRet796, 1
	RETURN
; } isspace function end

	ORG 0x00000E34
eeprom_wri_00050
; { eeprom_write_array ; function begin
	CLRF eeprom_wri_00050_2_i, 1
label109
	MOVF eeprom_wri_00050_arg_len, W, 1
	CPFSLT eeprom_wri_00050_2_i, 1
	RETURN
	MOVF eeprom_wri_00050_arg_adr, W, 1
	MOVWF eeprom_wri_00008_arg_address, 1
	MOVF eeprom_wri_00050_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF eeprom_wri_00050_arg_data, W, 1
	ADDWF eeprom_wri_00050_2_i, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF eeprom_wri_00008_arg_data, 1
	CALL eeprom_wri_00008
	INCF eeprom_wri_00050_arg_adr, F, 1
	INCF eeprom_wri_00050_2_i, F, 1
	BRA	label109
; } eeprom_write_array function end

	ORG 0x00000E58
eeprom_rea_00007
; { eeprom_read ; function begin
label110
	BTFSC gbl_eecon1,1
	BRA	label110
	MOVF eeprom_rea_00007_arg_address, W, 1
	MOVWF gbl_eeadr
	BCF gbl_eecon1,7
	BCF gbl_eecon1,6
	BSF gbl_eecon1,0
	MOVF gbl_eedata, W
	MOVWF CompTempVarRet2650, 1
	RETURN
; } eeprom_read function end

	ORG 0x00000E6C
__mul_32_3_00006
; { __mul_32_32 ; function begin
	CLRF CompTempVarRet724, 1
	CLRF CompTempVarRet724+D'1', 1
	CLRF CompTempVarRet724+D'2', 1
	CLRF CompTempVarRet724+D'3', 1
	CLRF CompTempVarRet724+D'2', 1
	CLRF CompTempVarRet724+D'3', 1
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	MOVWF CompTempVarRet724, 1
	MOVF gbl_prodh, W
	MOVWF CompTempVarRet724+D'1', 1
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'1', F, 1
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet724+D'2', F, 1
	BTFSC gbl_status,0
	INCF CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a+D'2', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'2', F, 1
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a+D'3', W, 1
	MULWF __mul_32_3_00006_arg_b, 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'1', F, 1
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet724+D'2', F, 1
	BTFSC gbl_status,0
	INCF CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'2', F, 1
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a+D'2', W, 1
	MULWF __mul_32_3_00006_arg_b+D'1', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'2', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'2', F, 1
	MOVF gbl_prodh, W
	ADDWFC CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a+D'1', W, 1
	MULWF __mul_32_3_00006_arg_b+D'2', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'3', F, 1
	MOVF __mul_32_3_00006_arg_a, W, 1
	MULWF __mul_32_3_00006_arg_b+D'3', 1
	MOVF gbl_prodl, W
	ADDWF CompTempVarRet724+D'3', F, 1
	RETURN
; } __mul_32_32 function end

	ORG 0x00000EEA
usbhid_wai_00012
; { usbhid_wait_outgoing ; function begin
	MOVLB 0x02
	CLRF usbhid_wai_00012_1_i, 1
label111
	MOVLB 0x01
	MOVF gbl_outgoing, F, 1
	BZ	label112
	MOVLW 0xC8
	MOVLB 0x02
	CPFSLT usbhid_wai_00012_1_i, 1
	BRA	label112
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	INCF usbhid_wai_00012_1_i, F, 1
	BRA	label111
label112
	MOVLB 0x02
	CLRF CompTempVar1405, 1
	INCF CompTempVar1405, F, 1
	MOVLB 0x01
	TSTFSZ gbl_outgoing, 1
	BRA	label113
	BRA	label114
label113
	MOVLB 0x02
	BCF CompTempVar1405,0, 1
label114
	MOVLB 0x02
	BCF CompTempVarRet1404,2, 1
	MOVF CompTempVar1405, W, 1
	BTFSS STATUS,Z
	BSF CompTempVarRet1404,2, 1
	RETURN
; } usbhid_wait_outgoing function end

	ORG 0x00000F26
usbhid_con_00009
; { usbhid_configure_system ; function begin
label115
	BCF gbl_intcon,7
	BTFSC gbl_intcon,7
	BRA	label115
	CALL usb_setup_00000
	BSF gbl_intcon,6
	BSF gbl_intcon,7
	RETURN
; } usbhid_configure_system function end

	ORG 0x00000F36
usb_enable_00014
; { usb_enable_module ; function begin
	CLRF gbl_uir
	BSF gbl_ucon,3
	MOVLW 0x01
	MOVLB 0x01
	MOVWF gbl_usb_state, 1
	RETURN
; } usb_enable_module function end

	ORG 0x00000F42
usb_config_0004B
; { usb_configure_structures ; function begin
	MOVLW 0x12
	MOVWF gbl_my_device_descriptor
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'1'
	MOVLW 0x10
	MOVWF gbl_my_device_descriptor+D'2'
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'3'
	CLRF gbl_my_device_descriptor+D'4'
	CLRF gbl_my_device_descriptor+D'5'
	CLRF gbl_my_device_descriptor+D'6'
	MOVLW 0x08
	MOVWF gbl_my_device_descriptor+D'7'
	MOVLW 0xD8
	MOVWF gbl_my_device_descriptor+D'8'
	MOVLW 0x04
	MOVWF gbl_my_device_descriptor+D'9'
	MOVLW 0x0C
	MOVWF gbl_my_device_descriptor+D'10'
	CLRF gbl_my_device_descriptor+D'11'
	CLRF gbl_my_device_descriptor+D'12'
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'13'
	MOVWF gbl_my_device_descriptor+D'14'
	MOVLW 0x02
	MOVWF gbl_my_device_descriptor+D'15'
	CLRF gbl_my_device_descriptor+D'16'
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'17'
	MOVLW 0x09
	MOVLB 0x01
	MOVWF gbl_my_config, 1
	MOVLW 0x02
	MOVWF gbl_my_config+D'1', 1
	MOVLW 0x29
	MOVWF gbl_my_config+D'2', 1
	CLRF gbl_my_config+D'3', 1
	MOVLW 0x01
	MOVWF gbl_my_config+D'4', 1
	MOVWF gbl_my_config+D'5', 1
	CLRF gbl_my_config+D'6', 1
	MOVLW 0x80
	MOVWF gbl_my_config+D'7', 1
	MOVLW 0x4B
	MOVWF gbl_my_config+D'8', 1
	MOVLW 0x09
	MOVWF gbl_my_interface, 1
	MOVLW 0x04
	MOVWF gbl_my_interface+D'1', 1
	CLRF gbl_my_interface+D'2', 1
	CLRF gbl_my_interface+D'3', 1
	MOVLW 0x02
	MOVWF gbl_my_interface+D'4', 1
	MOVLW 0x03
	MOVWF gbl_my_interface+D'5', 1
	CLRF gbl_my_interface+D'6', 1
	CLRF gbl_my_interface+D'7', 1
	CLRF gbl_my_interface+D'8', 1
	MOVLW 0x09
	MOVWF gbl_my_hid, 1
	MOVLW 0x21
	MOVWF gbl_my_hid+D'1', 1
	MOVLW 0x10
	MOVWF gbl_my_hid+D'2', 1
	MOVLW 0x01
	MOVWF gbl_my_hid+D'3', 1
	CLRF gbl_my_hid+D'4', 1
	MOVLW 0x01
	MOVWF gbl_my_hid+D'5', 1
	MOVLW 0x22
	MOVWF gbl_my_hid+D'6', 1
	MOVLW 0x1D
	MOVWF gbl_my_hid+D'7', 1
	CLRF gbl_my_hid+D'8', 1
	MOVLW 0x07
	MOVWF gbl_my_ep, 1
	MOVLW 0x05
	MOVWF gbl_my_ep+D'1', 1
	MOVLW 0x81
	MOVWF gbl_my_ep+D'2', 1
	MOVLW 0x03
	MOVWF gbl_my_ep+D'3', 1
	MOVLW 0x40
	MOVWF gbl_my_ep+D'4', 1
	CLRF gbl_my_ep+D'5', 1
	MOVLW 0x64
	MOVWF gbl_my_ep+D'6', 1
	MOVLW 0x07
	MOVWF gbl_my_ep2, 1
	MOVLW 0x05
	MOVWF gbl_my_ep2+D'1', 1
	MOVLW 0x01
	MOVWF gbl_my_ep2+D'2', 1
	MOVLW 0x03
	MOVWF gbl_my_ep2+D'3', 1
	MOVLW 0x40
	MOVWF gbl_my_ep2+D'4', 1
	CLRF gbl_my_ep2+D'5', 1
	MOVLW 0x64
	MOVWF gbl_my_ep2+D'6', 1
	MOVF gbl_my_config+D'8', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'8', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'7', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'7', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'6', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'5', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'5', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'4', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'4', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'3', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'3', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'2', 1
	MOVLB 0x01
	MOVF gbl_my_config+D'1', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'1', 1
	MOVLB 0x01
	MOVF gbl_my_config, W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration, 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'8', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'17', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'7', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'16', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'15', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'5', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'14', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'4', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'13', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'3', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'12', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'11', 1
	MOVLB 0x01
	MOVF gbl_my_interface+D'1', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'10', 1
	MOVLB 0x01
	MOVF gbl_my_interface, W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'9', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'8', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'26', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'7', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'25', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'24', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'5', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'23', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'4', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'22', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'3', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'21', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'20', 1
	MOVLB 0x01
	MOVF gbl_my_hid+D'1', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'19', 1
	MOVLB 0x01
	MOVF gbl_my_hid, W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'18', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'33', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'5', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'32', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'4', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'31', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'3', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'30', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'29', 1
	MOVLB 0x01
	MOVF gbl_my_ep+D'1', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'28', 1
	MOVLB 0x01
	MOVF gbl_my_ep, W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'27', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'40', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'5', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'39', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'4', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'38', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'3', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'37', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'36', 1
	MOVLB 0x01
	MOVF gbl_my_ep2+D'1', W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'35', 1
	MOVLB 0x01
	MOVF gbl_my_ep2, W, 1
	MOVLB 0x00
	MOVWF gbl_complete_HID_configuration+D'34', 1
	RETURN
; } usb_configure_structures function end

	ORG 0x00001152
strtol_00000
; { strtol ; function begin
	CLRF strtol_00000_1_x, 1
	CLRF strtol_00000_1_x+D'1', 1
	CLRF strtol_00000_1_x+D'2', 1
	CLRF strtol_00000_1_x+D'3', 1
	BCF strtol_00000_1_neg,2, 1
	BCF strtol_00000_1_overflow,3, 1
	SETF strtol_00000_1_i, 1
	MOVLW 0x01
	MOVWF strtol_00000_1_mode, 1
label116
	INCF strtol_00000_1_i, F, 1
	MOVF strtol_00000_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF strtol_00000_arg_buffer, W, 1
	ADDWF strtol_00000_1_i, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF strtol_00000_2_c, 1
	BTFSS strtol_00000_1_mode,0, 1
	BRA	label117
	MOVF strtol_00000_2_c, W, 1
	MOVWF isspace_00000_arg_ch, 1
	CALL isspace_00000
	MOVF CompTempVarRet796, F, 1
	BNZ	label116
	MOVLW 0x08
	MOVWF strtol_00000_1_mode, 1
label117
	BTFSS strtol_00000_1_mode,3, 1
	BRA	label119
	MOVLW 0x02
	MOVWF strtol_00000_1_mode, 1
	MOVLW 0x2D
	CPFSEQ strtol_00000_2_c, 1
	BRA	label118
	BSF strtol_00000_1_neg,2, 1
	BRA	label116
label118
	MOVLW 0x2B
	CPFSEQ strtol_00000_2_c, 1
	BRA	label119
	BRA	label116
label119
	BTFSS strtol_00000_1_mode,1, 1
	BRA	label122
	MOVF strtol_00000_arg_radix, F, 1
	BNZ	label121
	MOVLW 0x30
	CPFSEQ strtol_00000_2_c, 1
	BRA	label120
	MOVLW 0x08
	MOVWF strtol_00000_arg_radix, 1
	MOVLW 0x04
	MOVWF strtol_00000_1_mode, 1
	BRA	label116
label120
	MOVLW 0x0A
	MOVWF strtol_00000_arg_radix, 1
label121
	MOVLW 0x10
	MOVWF strtol_00000_1_mode, 1
label122
	BTFSS strtol_00000_1_mode,2, 1
	BRA	label123
	MOVLW 0x10
	MOVWF strtol_00000_1_mode, 1
	MOVLW 0x78
	CPFSEQ strtol_00000_2_c, 1
	BRA	label123
	MOVLW 0x10
	MOVWF strtol_00000_arg_radix, 1
	BRA	label116
label123
	MOVF strtol_00000_2_c, W, 1
	MOVWF toupper_00000_arg_ch, 1
	CALL toupper_00000
	MOVF CompTempVarRet821, W, 1
	MOVWF strtol_00000_2_c, 1
	MOVLW 0x0A
	CPFSGT strtol_00000_arg_radix, 1
	BRA	label125
	MOVLW 0x41
	CPFSLT strtol_00000_2_c, 1
	BRA	label124
	BRA	label125
label124
	MOVLW 0x37
	SUBWF strtol_00000_2_c, F, 1
	BRA	label126
label125
	MOVLW 0x30
	SUBWF strtol_00000_2_c, F, 1
label126
	MOVF strtol_00000_2_c, W, 1
	CPFSLT strtol_00000_arg_radix, 1
	BRA	label127
	BRA	label131
label127
	MOVF strtol_00000_1_x, W, 1
	MOVWF strtol_00000_29_xOld, 1
	MOVF strtol_00000_1_x+D'1', W, 1
	MOVWF strtol_00000_29_xOld+D'1', 1
	MOVF strtol_00000_1_x+D'2', W, 1
	MOVWF strtol_00000_29_xOld+D'2', 1
	MOVF strtol_00000_1_x+D'3', W, 1
	MOVWF strtol_00000_29_xOld+D'3', 1
	MOVF strtol_00000_1_x, W, 1
	MOVWF __mul_32_3_00006_arg_a, 1
	MOVF strtol_00000_1_x+D'1', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'1', 1
	MOVF strtol_00000_1_x+D'2', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'2', 1
	MOVF strtol_00000_1_x+D'3', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'3', 1
	MOVF strtol_00000_arg_radix, W, 1
	MOVWF __mul_32_3_00006_arg_b, 1
	CLRF __mul_32_3_00006_arg_b+D'1', 1
	CLRF __mul_32_3_00006_arg_b+D'2', 1
	CLRF __mul_32_3_00006_arg_b+D'3', 1
	CALL __mul_32_3_00006
	MOVF CompTempVarRet724, W, 1
	MOVWF CompTempVar907, 1
	MOVF CompTempVarRet724+D'1', W, 1
	MOVWF CompTempVar908, 1
	MOVF CompTempVarRet724+D'2', W, 1
	MOVWF CompTempVar909, 1
	MOVF CompTempVarRet724+D'3', W, 1
	MOVWF CompTempVar910, 1
	MOVF CompTempVar907, W, 1
	MOVWF strtol_00000_1_x, 1
	MOVF CompTempVar908, W, 1
	MOVWF strtol_00000_1_x+D'1', 1
	MOVF CompTempVar909, W, 1
	MOVWF strtol_00000_1_x+D'2', 1
	MOVF CompTempVar910, W, 1
	MOVWF strtol_00000_1_x+D'3', 1
	MOVF strtol_00000_2_c, W, 1
	MOVWF CompTempVar911, 1
	CLRF CompTempVar911+D'1', 1
	CLRF CompTempVar911+D'2', 1
	CLRF CompTempVar911+D'3', 1
	MOVF CompTempVar911, W, 1
	ADDWF strtol_00000_1_x, F, 1
	MOVF CompTempVar911+D'1', W, 1
	ADDWFC strtol_00000_1_x+D'1', F, 1
	MOVF CompTempVar911+D'2', W, 1
	ADDWFC strtol_00000_1_x+D'2', F, 1
	MOVF CompTempVar911+D'3', W, 1
	ADDWFC strtol_00000_1_x+D'3', F, 1
	CLRF CompTempVar912, 1
	MOVF strtol_00000_1_x, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF strtol_00000_1_x+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF strtol_00000_1_x+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF strtol_00000_1_x+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	BTFSS strtol_00000_1_x+D'3',7, 1
	BRA	label128
	COMF __div_32_3_00001_arg_a, F, 1
	COMF __div_32_3_00001_arg_a+D'1', F, 1
	COMF __div_32_3_00001_arg_a+D'2', F, 1
	COMF __div_32_3_00001_arg_a+D'3', F, 1
	INCF __div_32_3_00001_arg_a, F, 1
	BTFSC STATUS,Z
	INCF __div_32_3_00001_arg_a+D'1', F, 1
	BTFSC STATUS,Z
	INCF __div_32_3_00001_arg_a+D'2', F, 1
	BTFSC STATUS,Z
	INCF __div_32_3_00001_arg_a+D'3', F, 1
	INCF CompTempVar912, F, 1
label128
	MOVF strtol_00000_arg_radix, W, 1
	MOVWF __div_32_3_00001_arg_b, 1
	CLRF __div_32_3_00001_arg_b+D'1', 1
	CLRF __div_32_3_00001_arg_b+D'2', 1
	CLRF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVWF CompTempVar903, 1
	MOVF CompTempVarRet482+D'1', W, 1
	MOVWF CompTempVar904, 1
	MOVF CompTempVarRet482+D'2', W, 1
	MOVWF CompTempVar905, 1
	MOVF CompTempVarRet482+D'3', W, 1
	MOVWF CompTempVar906, 1
	BTFSS CompTempVar912,0, 1
	BRA	label129
	COMF CompTempVar903, F, 1
	COMF CompTempVar904, F, 1
	COMF CompTempVar905, F, 1
	COMF CompTempVar906, F, 1
	INCF CompTempVar903, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar904, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar905, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar906, F, 1
label129
	MOVF CompTempVar903, W, 1
	SUBWF strtol_00000_29_xOld, W, 1
	BNZ	label130
	MOVF CompTempVar904, W, 1
	SUBWF strtol_00000_29_xOld+D'1', W, 1
	BNZ	label130
	MOVF CompTempVar905, W, 1
	SUBWF strtol_00000_29_xOld+D'2', W, 1
	BNZ	label130
	MOVF CompTempVar906, W, 1
	SUBWF strtol_00000_29_xOld+D'3', W, 1
	BTFSS STATUS,Z
label130
	BSF strtol_00000_1_overflow,3, 1
	BRA	label116
label131
	MOVF strtol_00000_arg_endPtr, F, 1
	BNZ	label132
	MOVF strtol_00000_arg_endPtr+D'1', F, 1
	BZ	label133
label132
	MOVF strtol_00000_1_i, W, 1
	MOVWF CompTempVar916, 1
	CLRF CompTempVar915, 1
	MOVF strtol_00000_arg_buffer, W, 1
	ADDWF CompTempVar916, F, 1
	MOVF strtol_00000_arg_buffer+D'1', W, 1
	ADDWFC CompTempVar915, F, 1
	MOVF strtol_00000_arg_endPtr+D'1', W, 1
	MOVWF FSR0H
	MOVF strtol_00000_arg_endPtr, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF CompTempVar915, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar916, W, 1
	MOVWF INDF0
label133
	BTFSS strtol_00000_1_overflow,3, 1
	BRA	label134
	SETF strtol_00000_1_x, 1
	SETF strtol_00000_1_x+D'1', 1
	SETF strtol_00000_1_x+D'2', 1
	MOVLW 0x7F
	MOVWF strtol_00000_1_x+D'3', 1
label134
	BTFSS strtol_00000_1_neg,2, 1
	BRA	label135
	MOVF strtol_00000_1_x, W, 1
	SUBLW 0x00
	MOVWF CompTempVar917, 1
	MOVLW 0x00
	MOVWF CompTempVar918, 1
	MOVF strtol_00000_1_x+D'1', W, 1
	SUBWFB CompTempVar918, F, 1
	MOVLW 0x00
	MOVWF CompTempVar919, 1
	MOVF strtol_00000_1_x+D'2', W, 1
	SUBWFB CompTempVar919, F, 1
	MOVLW 0x00
	MOVWF CompTempVar920, 1
	MOVF strtol_00000_1_x+D'3', W, 1
	SUBWFB CompTempVar920, F, 1
	MOVF CompTempVar917, W, 1
	MOVWF strtol_00000_1_x, 1
	MOVF CompTempVar918, W, 1
	MOVWF strtol_00000_1_x+D'1', 1
	MOVF CompTempVar919, W, 1
	MOVWF strtol_00000_1_x+D'2', 1
	MOVF CompTempVar920, W, 1
	MOVWF strtol_00000_1_x+D'3', 1
label135
	MOVF strtol_00000_1_x, W, 1
	MOVWF CompTempVarRet901, 1
	MOVF strtol_00000_1_x+D'1', W, 1
	MOVWF CompTempVarRet901+D'1', 1
	MOVF strtol_00000_1_x+D'2', W, 1
	MOVWF CompTempVarRet901+D'2', 1
	MOVF strtol_00000_1_x+D'3', W, 1
	MOVWF CompTempVarRet901+D'3', 1
	RETURN
; } strtol function end

	ORG 0x00001368
strtoi_00000
; { strtoi ; function begin
	CLRF strtoi_00000_1_x, 1
	CLRF strtoi_00000_1_x+D'1', 1
	BCF strtoi_00000_1_neg,2, 1
	BCF strtoi_00000_1_overflow,3, 1
	SETF strtoi_00000_1_i, 1
	MOVLW 0x01
	MOVWF strtoi_00000_1_mode, 1
label136
	INCF strtoi_00000_1_i, F, 1
	MOVF strtoi_00000_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF strtoi_00000_arg_buffer, W, 1
	ADDWF strtoi_00000_1_i, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF strtoi_00000_2_c, 1
	BTFSS strtoi_00000_1_mode,0, 1
	BRA	label137
	MOVF strtoi_00000_2_c, W, 1
	MOVWF isspace_00000_arg_ch, 1
	CALL isspace_00000
	MOVF CompTempVarRet796, F, 1
	BNZ	label136
	MOVLW 0x08
	MOVWF strtoi_00000_1_mode, 1
label137
	BTFSS strtoi_00000_1_mode,3, 1
	BRA	label139
	MOVLW 0x02
	MOVWF strtoi_00000_1_mode, 1
	MOVLW 0x2D
	CPFSEQ strtoi_00000_2_c, 1
	BRA	label138
	BSF strtoi_00000_1_neg,2, 1
	BRA	label136
label138
	MOVLW 0x2B
	CPFSEQ strtoi_00000_2_c, 1
	BRA	label139
	BRA	label136
label139
	BTFSS strtoi_00000_1_mode,1, 1
	BRA	label142
	MOVF strtoi_00000_arg_radix, F, 1
	BNZ	label141
	MOVLW 0x30
	CPFSEQ strtoi_00000_2_c, 1
	BRA	label140
	MOVLW 0x08
	MOVWF strtoi_00000_arg_radix, 1
	MOVLW 0x04
	MOVWF strtoi_00000_1_mode, 1
	BRA	label136
label140
	MOVLW 0x0A
	MOVWF strtoi_00000_arg_radix, 1
label141
	MOVLW 0x10
	MOVWF strtoi_00000_1_mode, 1
label142
	BTFSS strtoi_00000_1_mode,2, 1
	BRA	label143
	MOVLW 0x10
	MOVWF strtoi_00000_1_mode, 1
	MOVLW 0x78
	CPFSEQ strtoi_00000_2_c, 1
	BRA	label143
	MOVLW 0x10
	MOVWF strtoi_00000_arg_radix, 1
	BRA	label136
label143
	MOVF strtoi_00000_2_c, W, 1
	MOVWF toupper_00000_arg_ch, 1
	CALL toupper_00000
	MOVF CompTempVarRet821, W, 1
	MOVWF strtoi_00000_2_c, 1
	MOVLW 0x0A
	CPFSGT strtoi_00000_arg_radix, 1
	BRA	label145
	MOVLW 0x41
	CPFSLT strtoi_00000_2_c, 1
	BRA	label144
	BRA	label145
label144
	MOVLW 0x37
	SUBWF strtoi_00000_2_c, F, 1
	BRA	label146
label145
	MOVLW 0x30
	SUBWF strtoi_00000_2_c, F, 1
label146
	MOVF strtoi_00000_2_c, W, 1
	CPFSLT strtoi_00000_arg_radix, 1
	BRA	label147
	BRA	label151
label147
	MOVF strtoi_00000_1_x, W, 1
	MOVWF strtoi_00000_29_xOld, 1
	MOVF strtoi_00000_1_x+D'1', W, 1
	MOVWF strtoi_00000_29_xOld+D'1', 1
	MOVF strtoi_00000_arg_radix, W, 1
	MULWF strtoi_00000_1_x, 1
	MOVF PRODL, W
	MOVWF CompTempVar892, 1
	MOVF PRODH, W
	MOVWF CompTempVar893, 1
	MOVF strtoi_00000_arg_radix, W, 1
	MULWF strtoi_00000_1_x+D'1', 1
	MOVF PRODL, W
	ADDWF CompTempVar893, F, 1
	MOVF CompTempVar892, W, 1
	MOVWF strtoi_00000_1_x, 1
	MOVF CompTempVar893, W, 1
	MOVWF strtoi_00000_1_x+D'1', 1
	MOVF strtoi_00000_2_c, W, 1
	ADDWF strtoi_00000_1_x, F, 1
	BTFSC STATUS,C
	INCF strtoi_00000_1_x+D'1', F, 1
	CLRF CompTempVar894, 1
	MOVF strtoi_00000_1_x, W, 1
	MOVWF __div_16_1_00003_arg_a, 1
	MOVF strtoi_00000_1_x+D'1', W, 1
	MOVWF __div_16_1_00003_arg_a+D'1', 1
	BTFSS strtoi_00000_1_x+D'1',7, 1
	BRA	label148
	COMF __div_16_1_00003_arg_a, F, 1
	COMF __div_16_1_00003_arg_a+D'1', F, 1
	INCF __div_16_1_00003_arg_a, F, 1
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F, 1
	INCF CompTempVar894, F, 1
label148
	MOVF strtoi_00000_arg_radix, W, 1
	MOVWF __div_16_1_00003_arg_b, 1
	CLRF __div_16_1_00003_arg_b+D'1', 1
	CALL __div_16_1_00003
	MOVF CompTempVarRet488, W, 1
	MOVWF CompTempVar890, 1
	MOVF CompTempVarRet488+D'1', W, 1
	MOVWF CompTempVar891, 1
	BTFSS CompTempVar894,0, 1
	BRA	label149
	COMF CompTempVar890, F, 1
	COMF CompTempVar891, F, 1
	INCF CompTempVar890, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar891, F, 1
label149
	MOVF CompTempVar890, W, 1
	CPFSEQ strtoi_00000_29_xOld, 1
	BRA	label150
	MOVF CompTempVar891, W, 1
	CPFSEQ strtoi_00000_29_xOld+D'1', 1
	CPFSEQ CompTempVar891, 1
	BRA	label136
label150
	BSF strtoi_00000_1_overflow,3, 1
	BRA	label136
label151
	MOVF strtoi_00000_arg_endPtr, F, 1
	BNZ	label152
	MOVF strtoi_00000_arg_endPtr+D'1', F, 1
	BZ	label153
label152
	MOVF strtoi_00000_1_i, W, 1
	MOVWF CompTempVar898, 1
	CLRF CompTempVar897, 1
	MOVF strtoi_00000_arg_buffer, W, 1
	ADDWF CompTempVar898, F, 1
	MOVF strtoi_00000_arg_buffer+D'1', W, 1
	ADDWFC CompTempVar897, F, 1
	MOVF strtoi_00000_arg_endPtr+D'1', W, 1
	MOVWF FSR0H
	MOVF strtoi_00000_arg_endPtr, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF CompTempVar897, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar898, W, 1
	MOVWF INDF0
label153
	BTFSS strtoi_00000_1_overflow,3, 1
	BRA	label154
	SETF strtoi_00000_1_x, 1
	MOVLW 0x7F
	MOVWF strtoi_00000_1_x+D'1', 1
label154
	BTFSS strtoi_00000_1_neg,2, 1
	BRA	label155
	COMF strtoi_00000_1_x, F, 1
	COMF strtoi_00000_1_x+D'1', F, 1
	INCF strtoi_00000_1_x, F, 1
	BTFSC STATUS,Z
	INCF strtoi_00000_1_x+D'1', F, 1
label155
	MOVF strtoi_00000_1_x, W, 1
	MOVWF CompTempVarRet888, 1
	MOVF strtoi_00000_1_x+D'1', W, 1
	MOVWF CompTempVarRet888+D'1', 1
	RETURN
; } strtoi function end

	ORG 0x000014D8
strncmp8_00000
; { strncmp8 ; function begin
	CLRF strncmp8_00000_1_i, 1
label156
	MOVF strncmp8_00000_arg_len, W, 1
	MOVWF CompTempVar572, 1
	DECF strncmp8_00000_arg_len, F, 1
	MOVF CompTempVar572, F, 1
	BZ	label159
	MOVF strncmp8_00000_arg_ptr1+D'1', W, 1
	MOVWF FSR0H
	MOVF strncmp8_00000_arg_ptr1, W, 1
	ADDWF strncmp8_00000_1_i, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF strncmp8_00000_1_c1, 1
	MOVF strncmp8_00000_arg_ptr2+D'1', W, 1
	MOVWF FSR0H
	MOVF strncmp8_00000_arg_ptr2, W, 1
	MOVWF FSR0L
	MOVF strncmp8_00000_1_i, W, 1
	INCF strncmp8_00000_1_i, F, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF strncmp8_00000_1_c2, 1
	MOVF strncmp8_00000_1_c2, W, 1
	CPFSLT strncmp8_00000_1_c1, 1
	BRA	label157
	SETF CompTempVarRet571, 1
	RETURN
label157
	MOVF strncmp8_00000_1_c1, W, 1
	CPFSLT strncmp8_00000_1_c2, 1
	BRA	label158
	MOVLW 0x01
	MOVWF CompTempVarRet571, 1
	RETURN
label158
	TSTFSZ strncmp8_00000_1_c1, 1
	BRA	label156
	CLRF CompTempVarRet571, 1
	RETURN
label159
	CLRF CompTempVarRet571, 1
	RETURN
; } strncmp8 function end

	ORG 0x00001526
strlen8_00000
; { strlen8 ; function begin
	CLRF CompTempVarRet500, 1
label160
	MOVF strlen8_00000_arg_ptr+D'1', W, 1
	MOVWF FSR0H
	MOVF strlen8_00000_arg_ptr, W, 1
	MOVWF FSR0L
	MOVF CompTempVarRet500, W, 1
	INCF CompTempVarRet500, F, 1
	ADDWF FSR0L, F
	MOVF INDF0, F
	BNZ	label160
	DECF CompTempVarRet500, F, 1
	RETURN
; } strlen8 function end

	ORG 0x0000153E
strcat8_00000
; { strcat8 ; function begin
	CLRF strcat8_00000_1_i, 1
label161
	MOVF strcat8_00000_arg_dst+D'1', W, 1
	MOVWF FSR0H
	MOVF strcat8_00000_arg_dst, W, 1
	MOVWF FSR0L
	MOVF INDF0, F
	BZ	label162
	INFSNZ strcat8_00000_arg_dst, F, 1
	INCF strcat8_00000_arg_dst+D'1', F, 1
	BRA	label161
label162
	MOVF strcat8_00000_arg_src+D'1', W, 1
	MOVWF FSR0H
	MOVF strcat8_00000_arg_src, W, 1
	MOVWF FSR0L
	MOVF strcat8_00000_1_i, W, 1
	INCF strcat8_00000_1_i, F, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar521, 1
	MOVF strcat8_00000_arg_dst+D'1', W, 1
	MOVWF FSR0H
	MOVF strcat8_00000_arg_dst, W, 1
	MOVWF FSR0L
	INFSNZ strcat8_00000_arg_dst, F, 1
	INCF strcat8_00000_arg_dst+D'1', F, 1
	MOVF CompTempVar521, W, 1
	MOVWF INDF0
	BNZ	label162
	RETURN
; } strcat8 function end

	ORG 0x00001578
set_PWM_00000
; { set_PWM ; function begin
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	SUBLW 0x0C
	BNZ	label163
	MOVF gbl_duty_cycle, W, 1
	SUBLW 0x7C
label163
	BC	label164
	MOVLW 0x7C
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val, 1
	MOVLW 0x0C
	MOVWF set_PWM_00000_arg_val+D'1', 1
label164
	MOVLB 0x02
	MOVF set_PWM_00000_arg_val, W, 1
	MOVLB 0x01
	MOVWF gbl_duty_cycle, 1
	MOVLB 0x02
	MOVF set_PWM_00000_arg_val+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_duty_cycle+D'1', 1
	MOVLB 0x02
	MOVF set_PWM_00000_arg_val, W, 1
	MOVLB 0x01
	MOVWF gbl_hw_duty_cycle, 1
	MOVLB 0x02
	RRCF set_PWM_00000_arg_val+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_hw_duty_cycle+D'1', 1
	RRCF gbl_hw_duty_cycle, F, 1
	RRCF gbl_hw_duty_cycle+D'1', F, 1
	RRCF gbl_hw_duty_cycle, F, 1
	MOVLW 0x3F
	ANDWF gbl_hw_duty_cycle+D'1', F, 1
	MOVLW 0x03
	MOVLB 0x02
	ANDWF set_PWM_00000_arg_val, W, 1
	MOVLB 0x01
	MOVWF gbl_sw_duty_cycle, 1
	MOVF gbl_hw_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF CompTempVar938, 1
	MOVLB 0x01
	RRCF gbl_hw_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF CompTempVar939, 1
	RRCF CompTempVar938, F, 1
	RRCF CompTempVar939, F, 1
	RRCF CompTempVar938, F, 1
	MOVF CompTempVar938, W, 1
	MOVWF gbl_ccpr1l
	MOVLW 0x0F
	ANDWF gbl_ccp1con, F
	MOVLB 0x01
	BTFSC gbl_hw_duty_cycle,0, 1
	BSF gbl_ccp1con,4
	BTFSC gbl_hw_duty_cycle,1, 1
	BSF gbl_ccp1con,5
	RETURN
; } set_PWM function end

	ORG 0x000015EC
send_usb_p_00056
; { send_usb_packet ; function begin
	MOVLW 0x44
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data, 1
	MOVLW 0x01
	MOVWF send_usb_p_00056_1_data+D'1', 1
	CLRF send_usb_p_00056_1_data+D'2', 1
	CLRF send_usb_p_00056_1_data+D'3', 1
	MOVLB 0x01
	BTFSS gbl_auto_adjust_pwm,2, 1
	BRA	label165
	MOVLW 0x01
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'2', 1
	CLRF send_usb_p_00056_1_data+D'3', 1
label165
	MOVLB 0x01
	BTFSS gbl_remote_watchdog,1, 1
	BRA	label166
	MOVLW 0x02
	MOVLB 0x02
	ADDWF send_usb_p_00056_1_data+D'2', F, 1
	BTFSC STATUS,C
	INCF send_usb_p_00056_1_data+D'3', F, 1
label166
	MOVLB 0x01
	BTFSS gbl_auto_usb,3, 1
	BRA	label167
	MOVLW 0x04
	MOVLB 0x02
	ADDWF send_usb_p_00056_1_data+D'2', F, 1
	BTFSC STATUS,C
	INCF send_usb_p_00056_1_data+D'3', F, 1
label167
	MOVLB 0x00
	MOVF gbl_big_geiger_counter, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'4', 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'5', 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'2', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'6', 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'3', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'7', 1
	CALL rtc_get_ti_00026
	MOVF CompTempVarRet1065, W, 1
	MOVWF send_usb_p_00056_1_data+D'12', 1
	MOVF CompTempVarRet1065+D'1', W, 1
	MOVWF send_usb_p_00056_1_data+D'13', 1
	MOVF CompTempVarRet1065+D'2', W, 1
	MOVWF send_usb_p_00056_1_data+D'14', 1
	MOVF CompTempVarRet1065+D'3', W, 1
	MOVWF send_usb_p_00056_1_data+D'15', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start, W, 1
	MOVLB 0x02
	SUBWF send_usb_p_00056_1_data+D'12', W, 1
	MOVWF send_usb_p_00056_1_data+D'8', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'1', W, 1
	MOVLB 0x02
	SUBWFB send_usb_p_00056_1_data+D'13', W, 1
	MOVWF send_usb_p_00056_1_data+D'9', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'2', W, 1
	MOVLB 0x02
	SUBWFB send_usb_p_00056_1_data+D'14', W, 1
	MOVWF send_usb_p_00056_1_data+D'10', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'3', W, 1
	MOVLB 0x02
	SUBWFB send_usb_p_00056_1_data+D'15', W, 1
	MOVWF send_usb_p_00056_1_data+D'11', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'16', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'17', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'2', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'18', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'3', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'19', 1
	MOVLB 0x01
	MOVF gbl_detect_threshold, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'20', 1
	MOVLB 0x01
	MOVF gbl_detect_threshold+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'21', 1
	MOVLB 0x01
	MOVF gbl_last_time, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'22', 1
	MOVLB 0x01
	MOVF gbl_last_time+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'23', 1
	MOVLB 0x01
	MOVF gbl_adc_value, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'24', 1
	MOVLB 0x01
	MOVF gbl_adc_value+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'25', 1
	MOVLB 0x01
	MOVF gbl_error, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'26', 1
	MOVLB 0x01
	MOVF gbl_error+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'27', 1
	MOVLB 0x01
	MOVF gbl_watchdogs, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'28', 1
	MOVLB 0x01
	MOVF gbl_watchdogs+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'29', 1
	MOVLB 0x01
	MOVF gbl_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'30', 1
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'31', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time, W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'32', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'1', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'33', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'2', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'34', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'3', W, 1
	MOVLB 0x02
	MOVWF send_usb_p_00056_1_data+D'35', 1
	MOVLW 0x7C
	MOVWF send_usb_p_00056_1_data+D'36', 1
	MOVLW 0x0C
	MOVWF send_usb_p_00056_1_data+D'37', 1
	CLRF send_usb_p_00056_1_data+D'38', 1
	MOVLW HIGH(send_usb_p_00056_1_data+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer+D'1', 1
	MOVLW LOW(send_usb_p_00056_1_data+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer, 1
	MOVLW 0x40
	MOVWF usbhid_sen_0000B_arg_size, 1
	CALL usbhid_sen_0000B
	RETURN
; } send_usb_packet function end

	ORG 0x00001740
send_seria_00057
; { send_serial_packet ; function begin
	MOVLW 0x4F
	MOVLB 0x02
	MOVWF CompTempVar979, 1
	MOVLW 0x4B
	MOVWF CompTempVar979+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar979+D'2', 1
	CLRF CompTempVar979+D'3', 1
	MOVLW HIGH(CompTempVar979+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(CompTempVar979+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	MOVLB 0x00
	MOVF gbl_big_geiger_counter, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val, 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'1', 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'2', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'2', 1
	MOVLB 0x00
	MOVF gbl_big_geiger_counter+D'3', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'3', 1
	CALL serial_sen_00042
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	CALL rtc_get_ti_00026
	MOVLB 0x01
	MOVF gbl_time_counting_start, W, 1
	MOVLB 0x02
	SUBWF CompTempVarRet1065, W, 1
	MOVWF serial_sen_00042_arg_val, 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'1', W, 1
	MOVLB 0x02
	SUBWFB CompTempVarRet1065+D'1', W, 1
	MOVWF serial_sen_00042_arg_val+D'1', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'2', W, 1
	MOVLB 0x02
	SUBWFB CompTempVarRet1065+D'2', W, 1
	MOVWF serial_sen_00042_arg_val+D'2', 1
	MOVLB 0x01
	MOVF gbl_time_counting_start+D'3', W, 1
	MOVLB 0x02
	SUBWFB CompTempVarRet1065+D'3', W, 1
	MOVWF serial_sen_00042_arg_val+D'3', 1
	CALL serial_sen_00042
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	CALL rtc_get_ti_00026
	MOVF CompTempVarRet1065, W, 1
	MOVWF serial_sen_00042_arg_val, 1
	MOVF CompTempVarRet1065+D'1', W, 1
	MOVWF serial_sen_00042_arg_val+D'1', 1
	MOVF CompTempVarRet1065+D'2', W, 1
	MOVWF serial_sen_00042_arg_val+D'2', 1
	MOVF CompTempVarRet1065+D'3', W, 1
	MOVWF serial_sen_00042_arg_val+D'3', 1
	CALL serial_sen_00042
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_adc_calibration, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val, 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'1', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'2', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'2', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'3', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'3', 1
	CALL serial_sen_00042
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_detect_threshold, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_detect_threshold+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_last_time, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_last_time+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_adc_value, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_adc_value+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_error, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_error+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_watchdogs, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_watchdogs+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val, 1
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLB 0x01
	MOVF gbl_last_detect_time, W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val, 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'1', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'1', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'2', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'2', 1
	MOVLB 0x01
	MOVF gbl_last_detect_time+D'3', W, 1
	MOVLB 0x02
	MOVWF serial_sen_00042_arg_val+D'3', 1
	CALL serial_sen_00042
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	CLRF send_seria_00057_1_flags, 1
	CLRF send_seria_00057_1_flags+D'1', 1
	MOVLB 0x01
	BTFSS gbl_auto_adjust_pwm,2, 1
	BRA	label168
	MOVLW 0x01
	MOVLB 0x02
	MOVWF send_seria_00057_1_flags, 1
	CLRF send_seria_00057_1_flags+D'1', 1
label168
	MOVLB 0x01
	BTFSS gbl_remote_watchdog,1, 1
	BRA	label169
	MOVLW 0x02
	MOVLB 0x02
	ADDWF send_seria_00057_1_flags, F, 1
	BTFSC STATUS,C
	INCF send_seria_00057_1_flags+D'1', F, 1
label169
	MOVLB 0x01
	BTFSS gbl_auto_usb,3, 1
	BRA	label170
	MOVLW 0x04
	MOVLB 0x02
	ADDWF send_seria_00057_1_flags, F, 1
	BTFSC STATUS,C
	INCF send_seria_00057_1_flags+D'1', F, 1
label170
	MOVLB 0x02
	MOVF send_seria_00057_1_flags, W, 1
	MOVWF serial_sen_00041_arg_val, 1
	MOVF send_seria_00057_1_flags+D'1', W, 1
	MOVWF serial_sen_00041_arg_val+D'1', 1
	CALL serial_sen_00041
	MOVLW 0x2C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLW 0x7C
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	MOVLW 0x0A
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
	RETURN
; } send_serial_packet function end

	ORG 0x0000193A
save_setti_00054
; { save_settings ; function begin
	MOVLW 0x45
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings, 1
	MOVLW 0x23
	MOVWF save_setti_00054_1_settings+D'1', 1
	MOVLW 0xA1
	MOVWF save_setti_00054_1_settings+D'2', 1
	MOVLW 0xA5
	MOVWF save_setti_00054_1_settings+D'3', 1
	MOVLB 0x01
	MOVF gbl_detect_threshold, W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'12', 1
	MOVLB 0x01
	MOVF gbl_detect_threshold+D'1', W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'13', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration, W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'4', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'1', W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'5', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'2', W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'6', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'3', W, 1
	MOVLB 0x02
	MOVWF save_setti_00054_1_settings+D'7', 1
	MOVLW HIGH(save_setti_00054_1_settings+D'0')
	MOVWF eeprom_wri_00050_arg_data+D'1', 1
	MOVLW LOW(save_setti_00054_1_settings+D'0')
	MOVWF eeprom_wri_00050_arg_data, 1
	CLRF eeprom_wri_00050_arg_adr, 1
	MOVLW 0x0E
	MOVWF eeprom_wri_00050_arg_len, 1
	CALL eeprom_wri_00050
	RETURN
; } save_settings function end

	ORG 0x00001990
rtc_get_ti_00059
; { rtc_get_tick_copy ; function begin
label171
	MOVLW 0xC8
	CPFSGT gbl_tmr1l
	BRA	label172
	INCF gbl_tmr1h, W
	BZ	label171
label172
	MOVF gbl_tmr1l, W
	MOVLB 0x01
	MOVWF gbl_rtc_ticks, 1
	MOVF gbl_tmr1h, W
	MOVWF gbl_rtc_ticks+D'1', 1
	RETURN
; } rtc_get_tick_copy function end

	ORG 0x000019A6
reset_coun_0004E
; { reset_counter ; function begin
	MOVLB 0x00
	CLRF gbl_geiger_counter, 1
	MOVLB 0x01
	CLRF gbl_previous_counter, 1
	MOVLB 0x00
	CLRF gbl_big_geiger_counter, 1
	CLRF gbl_big_geiger_counter+D'1', 1
	CLRF gbl_big_geiger_counter+D'2', 1
	CLRF gbl_big_geiger_counter+D'3', 1
	CALL rtc_get_ti_00026
	MOVF CompTempVarRet1065, W, 1
	MOVLB 0x01
	MOVWF gbl_time_counting_start, 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_time_counting_start+D'1', 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'2', W, 1
	MOVLB 0x01
	MOVWF gbl_time_counting_start+D'2', 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'3', W, 1
	MOVLB 0x01
	MOVWF gbl_time_counting_start+D'3', 1
	RETURN
; } reset_counter function end

	ORG 0x000019DC
eeprom_wri_00052
; { eeprom_write_long ; function begin
	MOVLW HIGH(eeprom_wri_00052_arg_value+D'0')
	MOVWF eeprom_wri_00050_arg_data+D'1', 1
	MOVLW LOW(eeprom_wri_00052_arg_value+D'0')
	MOVWF eeprom_wri_00050_arg_data, 1
	MOVF eeprom_wri_00052_arg_adr, W, 1
	MOVWF eeprom_wri_00050_arg_adr, 1
	MOVLW 0x04
	MOVWF eeprom_wri_00050_arg_len, 1
	CALL eeprom_wri_00050
	RETURN
; } eeprom_write_long function end

	ORG 0x000019F2
eeprom_rea_0004F
; { eeprom_read_array ; function begin
	CLRF eeprom_rea_0004F_2_i, 1
label173
	MOVF eeprom_rea_0004F_arg_len, W, 1
	CPFSLT eeprom_rea_0004F_2_i, 1
	RETURN
	MOVF eeprom_rea_0004F_arg_adr, W, 1
	MOVWF eeprom_rea_00007_arg_address, 1
	CALL eeprom_rea_00007
	MOVF eeprom_rea_0004F_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF eeprom_rea_0004F_arg_data, W, 1
	ADDWF eeprom_rea_0004F_2_i, W, 1
	MOVWF FSR0L
	MOVF CompTempVarRet2650, W, 1
	MOVWF INDF0
	INCF eeprom_rea_0004F_arg_adr, F, 1
	INCF eeprom_rea_0004F_2_i, F, 1
	BRA	label173
; } eeprom_read_array function end

	ORG 0x00001A16
usbhid_rec_0000D
; { usbhid_receive_data ; function begin
	MOVLW 0x40
	CPFSGT usbhid_rec_0000D_arg_len, 1
	BRA	label174
	MOVLW 0x40
	MOVWF usbhid_rec_0000D_arg_len, 1
label174
	MOVF usbhid_rec_0000D_arg_buffer, W, 1
	MOVWF memcpy8_00000_arg_dst, 1
	MOVF usbhid_rec_0000D_arg_buffer+D'1', W, 1
	MOVWF memcpy8_00000_arg_dst+D'1', 1
	MOVLW HIGH(gbl_HID_USB_OUT_BUFFER+D'0')
	MOVWF memcpy8_00000_arg_src+D'1', 1
	MOVLW LOW(gbl_HID_USB_OUT_BUFFER+D'0')
	MOVWF memcpy8_00000_arg_src, 1
	MOVF usbhid_rec_0000D_arg_len, W, 1
	MOVWF memcpy8_00000_arg_len, 1
	CALL memcpy8_00000
	RETURN
; } usbhid_receive_data function end

	ORG 0x00001A3A
usbhid_out_0000F
; { usbhid_outgoing ; function begin
	MOVLB 0x02
	CLRF CompTempVar1403, 1
	MOVLB 0x01
	TSTFSZ gbl_outgoing, 1
	BRA	label175
	BRA	label176
label175
	MOVLB 0x02
	BSF CompTempVar1403,0, 1
label176
	MOVLB 0x02
	BCF CompTempVarRet1402,1, 1
	MOVF CompTempVar1403, W, 1
	BTFSS STATUS,Z
	BSF CompTempVarRet1402,1, 1
	RETURN
; } usbhid_outgoing function end

	ORG 0x00001A56
usbhid_ini_0000A
; { usbhid_initialise_hid ; function begin
	CALL usb_config_0004B
	CALL usbhid_con_00009
	MOVLW 0x64
	MOVLB 0x02
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	CALL usb_enable_00014
	MOVLB 0x02
	CLRF usbhid_ini_0000A_1_delay_counter, 1
	CLRF usbhid_ini_0000A_1_delay_counter+D'1', 1
	CLRF CompTempVarRet1396, 1
	RETURN
; } usbhid_initialise_hid function end

	ORG 0x00001A76
usbhid_con_0000E
; { usbhid_connected ; function begin
	MOVLB 0x02
	CLRF CompTempVar1401, 1
	MOVLB 0x01
	TSTFSZ gbl_HID_USB_status, 1
	BRA	label177
	BRA	label178
label177
	MOVLB 0x02
	BSF CompTempVar1401,0, 1
label178
	MOVLB 0x02
	BCF CompTempVarRet1400,1, 1
	MOVF CompTempVar1401, W, 1
	BTFSS STATUS,Z
	BSF CompTempVarRet1400,1, 1
	RETURN
; } usbhid_connected function end

	ORG 0x00001A92
usbhid_che_0000C
; { usbhid_check_rx ; function begin
	MOVLB 0x02
	CLRF usbhid_che_0000C_1_retval, 1
	MOVLB 0x01
	MOVF gbl_incoming, F, 1
	BZ	label179
	MOVF gbl_incoming, W, 1
	MOVLB 0x02
	MOVWF usbhid_che_0000C_1_retval, 1
	MOVLB 0x01
	CLRF gbl_incoming, 1
label179
	MOVLB 0x02
	MOVF usbhid_che_0000C_1_retval, W, 1
	MOVWF CompTempVarRet1398, 1
	RETURN
; } usbhid_check_rx function end

	ORG 0x00001AAE
serial_ini_0003B
; { serial_init ; function begin
	BSF gbl_trisc,6
	BSF gbl_trisc,7
	BSF gbl_txsta,2
	BSF gbl_baudcon,3
	MOVLW 0x04
	MOVWF gbl_spbrgh
	MOVLW 0xE1
	MOVWF gbl_spbrg
	BCF gbl_txsta,4
	BSF gbl_rcsta,7
	BSF gbl_txsta,5
	BSF gbl_rcsta,4
	BSF gbl_pie1,5
	RETURN
; } serial_init function end

	ORG 0x00001ACA
rtc_init_00000
; { rtc_init ; function begin
	BCF gbl_t1con,0
	MOVLB 0x01
	CLRF gbl_rtc_overflows, 1
	CLRF gbl_rtc_overflows+D'1', 1
	CLRF gbl_rtc_overflows+D'2', 1
	CLRF gbl_rtc_overflows+D'3', 1
	CLRF gbl_rtc_time, 1
	CLRF gbl_rtc_time+D'1', 1
	CLRF gbl_rtc_time+D'2', 1
	CLRF gbl_rtc_time+D'3', 1
	CLRF gbl_rtc_boot, 1
	CLRF gbl_rtc_boot+D'1', 1
	CLRF gbl_rtc_boot+D'2', 1
	CLRF gbl_rtc_boot+D'3', 1
	CLRF gbl_rtc_100us, 1
	CLRF gbl_rtc_100us+D'1', 1
	CLRF gbl_rtc_ticks, 1
	CLRF gbl_rtc_ticks+D'1', 1
	CLRF gbl_rtc_ticks+D'2', 1
	CLRF gbl_rtc_ticks+D'3', 1
	CLRF gbl_rtc_ticks+D'4', 1
	CLRF gbl_rtc_ticks+D'5', 1
	BCF gbl_rtc_daylightsaving,4, 1
	BCF gbl_auto_adjust_daylightsaving,6, 1
	CLRF gbl_tmr1l
	CLRF gbl_tmr1h
	BCF gbl_ipr1,0
	BSF gbl_pie1,0
	BSF gbl_t1con,7
	BSF gbl_t1con,5
	BSF gbl_t1con,4
	BCF gbl_t1con,1
	BCF gbl_rtc_is_set,5, 1
	CLRF gbl_rtc_sync, 1
	CLRF gbl_rtc_sync+D'1', 1
	CLRF gbl_rtc_sync+D'2', 1
	CLRF gbl_rtc_sync+D'3', 1
	BSF gbl_t1con,0
	RETURN
; } rtc_init function end

	ORG 0x00001B18
rtc_get_ti_00035
; { rtc_get_tick ; function begin
	CALL rtc_get_ti_00059
	MOVLW HIGH(gbl_rtc_ticks+D'0')
	MOVLB 0x02
	MOVWF CompTempVar1325+D'1', 1
	MOVLW LOW(gbl_rtc_ticks+D'0')
	MOVWF CompTempVar1325, 1
	MOVF CompTempVar1325+D'1', W, 1
	MOVWF FSR0H
	MOVF CompTempVar1325, W, 1
	MOVWF FSR0L
	MOVF POSTINC0, W
	MOVWF CompTempVar1327, 1
	MOVF POSTINC0, W
	MOVWF CompTempVar1327+D'1', 1
	MOVF POSTINC0, W
	MOVWF CompTempVar1327+D'2', 1
	MOVF CompTempVar1327, W, 1
	MOVWF CompTempVarRet1323, 1
	MOVF CompTempVar1327+D'1', W, 1
	MOVWF CompTempVarRet1323+D'1', 1
	MOVF CompTempVar1327+D'2', W, 1
	MOVWF CompTempVarRet1323+D'2', 1
	MOVF INDF0, W
	MOVWF CompTempVarRet1323+D'3', 1
	RETURN
; } rtc_get_tick function end

	ORG 0x00001B4C
rtc_get_se_0002C
; { rtc_get_sec ; function begin
	MOVLB 0x01
	MOVF gbl_rtc_time, W, 1
	MOVLB 0x02
	MOVWF __rem_32_3_00002_arg_a, 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'1', W, 1
	MOVLB 0x02
	MOVWF __rem_32_3_00002_arg_a+D'1', 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'2', W, 1
	MOVLB 0x02
	MOVWF __rem_32_3_00002_arg_a+D'2', 1
	MOVLB 0x01
	MOVF gbl_rtc_time+D'3', W, 1
	MOVLB 0x02
	MOVWF __rem_32_3_00002_arg_a+D'3', 1
	MOVLW 0x3C
	MOVWF __rem_32_3_00002_arg_b, 1
	CLRF __rem_32_3_00002_arg_b+D'1', 1
	CLRF __rem_32_3_00002_arg_b+D'2', 1
	CLRF __rem_32_3_00002_arg_b+D'3', 1
	CALL __rem_32_3_00002
	MOVF CompTempVarRet485, W, 1
	MOVWF CompTempVarRet1094, 1
	RETURN
; } rtc_get_sec function end

	ORG 0x00001B80
load_setti_00053
; { load_settings ; function begin
	MOVLB 0x01
	BSF gbl_auto_usb,3, 1
	BCF gbl_remote_watchdog,1, 1
	BSF gbl_auto_adjust_pwm,2, 1
	MOVLW 0x40
	MOVWF gbl_adc_calibration, 1
	MOVLW 0x42
	MOVWF gbl_adc_calibration+D'1', 1
	MOVLW 0x0F
	MOVWF gbl_adc_calibration+D'2', 1
	CLRF gbl_adc_calibration+D'3', 1
	MOVLW 0x41
	MOVWF gbl_detect_threshold, 1
	CLRF gbl_detect_threshold+D'1', 1
	MOVLW HIGH(load_setti_00053_1_settings+D'0')
	MOVLB 0x02
	MOVWF eeprom_rea_0004F_arg_data+D'1', 1
	MOVLW LOW(load_setti_00053_1_settings+D'0')
	MOVWF eeprom_rea_0004F_arg_data, 1
	CLRF eeprom_rea_0004F_arg_adr, 1
	MOVLW 0x0E
	MOVWF eeprom_rea_0004F_arg_len, 1
	CALL eeprom_rea_0004F
	MOVF load_setti_00053_1_settings, W, 1
	SUBLW 0x45
	BNZ	label180
	MOVF load_setti_00053_1_settings+D'1', W, 1
	SUBLW 0x23
	BNZ	label180
	MOVF load_setti_00053_1_settings+D'2', W, 1
	SUBLW 0xA1
	BNZ	label180
	MOVF load_setti_00053_1_settings+D'3', W, 1
	SUBLW 0xA5
	BNZ	label180
	MOVF load_setti_00053_1_settings+D'4', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration, 1
	MOVLB 0x02
	MOVF load_setti_00053_1_settings+D'5', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'1', 1
	MOVLB 0x02
	MOVF load_setti_00053_1_settings+D'6', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'2', 1
	MOVLB 0x02
	MOVF load_setti_00053_1_settings+D'7', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'3', 1
	MOVLB 0x02
	MOVF load_setti_00053_1_settings+D'12', W, 1
	MOVLB 0x01
	MOVWF gbl_detect_threshold, 1
	MOVLB 0x02
	MOVF load_setti_00053_1_settings+D'13', W, 1
	MOVLB 0x01
	MOVWF gbl_detect_threshold+D'1', 1
label180
	MOVLW 0x0A
	MOVLB 0x01
	SUBWF gbl_detect_threshold, W, 1
	BC	label181
	TSTFSZ gbl_detect_threshold+D'1', 1
	BRA	label181
	BRA	label183
label181
	MOVF gbl_detect_threshold+D'1', W, 1
	SUBLW 0x01
	BNZ	label182
	MOVF gbl_detect_threshold, W, 1
	SUBLW 0xF4
label182
	BC	label184
label183
	MOVLW 0x41
	MOVWF gbl_detect_threshold, 1
	CLRF gbl_detect_threshold+D'1', 1
label184
	MOVF gbl_adc_calibration+D'3', W, 1
	SUBLW 0x00
	BNZ	label185
	MOVF gbl_adc_calibration+D'2', W, 1
	SUBLW 0x16
	BNZ	label185
	MOVF gbl_adc_calibration+D'1', W, 1
	SUBLW 0xE3
	BNZ	label185
	MOVF gbl_adc_calibration, W, 1
	SUBLW 0x60
label185
	BNC	label187
	MOVLW 0x00
	SUBWF gbl_adc_calibration+D'3', W, 1
	BNZ	label186
	MOVLW 0x07
	SUBWF gbl_adc_calibration+D'2', W, 1
	BNZ	label186
	MOVLW 0xA1
	SUBWF gbl_adc_calibration+D'1', W, 1
	BNZ	label186
	MOVLW 0x20
	SUBWF gbl_adc_calibration, W, 1
label186
	BTFSC STATUS,C
	RETURN
label187
	MOVLW 0x40
	MOVWF gbl_adc_calibration, 1
	MOVLW 0x42
	MOVWF gbl_adc_calibration+D'1', 1
	MOVLW 0x0F
	MOVWF gbl_adc_calibration+D'2', 1
	CLRF gbl_adc_calibration+D'3', 1
	RETURN
; } load_settings function end

	ORG 0x00001C58
init_count_00055
; { init_counter ; function begin
	CALL reset_coun_0004E
	CLRF gbl_last_time, 1
	CLRF gbl_last_time+D'1', 1
	CLRF gbl_last_detect_time, 1
	CLRF gbl_last_detect_time+D'1', 1
	CLRF gbl_last_detect_time+D'2', 1
	CLRF gbl_last_detect_time+D'3', 1
	CLRF gbl_error, 1
	CLRF gbl_error+D'1', 1
	BSF gbl_trisb,0
	BSF gbl_trisb,1
	BCF gbl_trisc,0
	BCF gbl_portc,0
	BSF gbl_intcon3,6
	BCF gbl_intcon2,6
	BSF gbl_intcon2,5
	BCF gbl_intcon,1
	BSF gbl_intcon,4
	BCF gbl_intcon3,0
	BSF gbl_intcon3,3
	BSF gbl_intcon,6
	BSF gbl_pie2,1
	BCF gbl_ipr2,1
	BSF gbl_t3con,7
	BSF gbl_t3con,5
	BSF gbl_t3con,4
	BCF gbl_t3con,1
	RETURN
; } init_counter function end

	ORG 0x00001C92
init_TMR0_00000
; { init_TMR0 ; function begin
	BSF gbl_t0con,6
	BCF gbl_t0con,5
	BSF gbl_t0con,3
	BSF gbl_intcon,5
	BSF gbl_intcon,7
	BSF gbl_t0con,7
	BCF gbl_trisb,3
	BCF gbl_trisb,4
	MOVLW 0xC7
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	CLRF gbl_boost_val
	RETURN
; } init_TMR0 function end

	ORG 0x00001CAC
init_PWM_00000
; { init_PWM ; function begin
	BCF gbl_trisc,2
	MOVLW 0x0C
	MOVWF gbl_ccp1con
	MOVLW 0xC7
	MOVWF gbl_pr2
	BSF gbl_pie1,1
	BSF gbl_t2con,0
	BCF gbl_t2con,1
	BCF gbl_t2con,3
	BCF gbl_t2con,4
	BCF gbl_t2con,5
	BCF gbl_t2con,6
	BSF gbl_t2con,2
	CLRWDT
	MOVLW 0x64
	MOVLB 0x01
	MOVWF gbl_duty_cycle, 1
	CLRF gbl_duty_cycle+D'1', 1
label188
	MOVLW 0x0B
	MOVLB 0x01
	SUBWF gbl_duty_cycle+D'1', W, 1
	BNZ	label189
	MOVLW 0xB8
	SUBWF gbl_duty_cycle, W, 1
label189
	BTFSC STATUS,C
	RETURN
	MOVLB 0x02
	CLRF set_PWM_00000_arg_val+D'1', 1
	MOVLW 0x04
	MOVLB 0x01
	ADDWF gbl_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val, 1
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	MOVLB 0x02
	ADDWFC set_PWM_00000_arg_val+D'1', F, 1
	CALL set_PWM_00000
	MOVLW 0x02
	MOVLB 0x02
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	BRA	label188
; } init_PWM function end

	ORG 0x00001D06
init_ADC_00000
; { init_ADC ; function begin
	CLRF gbl_adcon0
	BCF gbl_adcon1,5
	BSF gbl_adcon1,4
	MOVLW 0x0E
	IORWF gbl_adcon1, F
	BSF gbl_adcon2,7
	BSF gbl_adcon2,2
	BSF gbl_adcon2,1
	BCF gbl_adcon2,0
	BSF gbl_adcon2,5
	BCF gbl_adcon2,4
	BCF gbl_adcon2,3
	MOVLW 0x01
	MOVWF gbl_adcon0
	MOVLB 0x01
	CLRF gbl_adc_value, 1
	CLRF gbl_adc_value+D'1', 1
	RETURN
; } init_ADC function end

	ORG 0x00001D2A
handle_PWM_00000
; { handle_PWM ; function begin
	MOVLB 0x01
	MOVF gbl_adc_value, W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_a, 1
	MOVLB 0x01
	MOVF gbl_adc_value+D'1', W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_a+D'1', 1
	CLRF __mul_32_3_00006_arg_a+D'2', 1
	CLRF __mul_32_3_00006_arg_a+D'3', 1
	MOVLW 0x70
	MOVWF __mul_32_3_00006_arg_b, 1
	MOVLW 0x52
	MOVWF __mul_32_3_00006_arg_b+D'1', 1
	MOVLW 0x3D
	MOVWF __mul_32_3_00006_arg_b+D'2', 1
	MOVLW 0x00
	MOVWF __mul_32_3_00006_arg_b+D'3', 1
	CALL __mul_32_3_00006
	MOVF CompTempVarRet724, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF CompTempVarRet724+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF CompTempVarRet724+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF CompTempVarRet724+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	MOVLW 0xE8
	MOVWF __div_32_3_00001_arg_b, 1
	MOVLW 0x03
	MOVWF __div_32_3_00001_arg_b+D'1', 1
	CLRF __div_32_3_00001_arg_b+D'2', 1
	CLRF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF CompTempVarRet482+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF CompTempVarRet482+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF CompTempVarRet482+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	MOVLW 0x5C
	MOVWF __div_32_3_00001_arg_b, 1
	MOVLW 0x12
	MOVWF __div_32_3_00001_arg_b+D'1', 1
	CLRF __div_32_3_00001_arg_b+D'2', 1
	CLRF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVWF __mul_32_3_00006_arg_a, 1
	MOVF CompTempVarRet482+D'1', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'1', 1
	MOVF CompTempVarRet482+D'2', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'2', 1
	MOVF CompTempVarRet482+D'3', W, 1
	MOVWF __mul_32_3_00006_arg_a+D'3', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration, W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_b, 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'1', W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_b+D'1', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'2', W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_b+D'2', 1
	MOVLB 0x01
	MOVF gbl_adc_calibration+D'3', W, 1
	MOVLB 0x02
	MOVWF __mul_32_3_00006_arg_b+D'3', 1
	CALL __mul_32_3_00006
	MOVF CompTempVarRet724, W, 1
	MOVWF __div_32_3_00001_arg_a, 1
	MOVF CompTempVarRet724+D'1', W, 1
	MOVWF __div_32_3_00001_arg_a+D'1', 1
	MOVF CompTempVarRet724+D'2', W, 1
	MOVWF __div_32_3_00001_arg_a+D'2', 1
	MOVF CompTempVarRet724+D'3', W, 1
	MOVWF __div_32_3_00001_arg_a+D'3', 1
	MOVLW 0x40
	MOVWF __div_32_3_00001_arg_b, 1
	MOVLW 0x42
	MOVWF __div_32_3_00001_arg_b+D'1', 1
	MOVLW 0x0F
	MOVWF __div_32_3_00001_arg_b+D'2', 1
	MOVLW 0x00
	MOVWF __div_32_3_00001_arg_b+D'3', 1
	CALL __div_32_3_00001
	MOVF CompTempVarRet482, W, 1
	MOVLB 0x01
	MOVWF gbl_Uout, 1
	MOVLB 0x02
	MOVF CompTempVarRet482+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_Uout+D'1', 1
	MOVLB 0x02
	MOVF CompTempVarRet482+D'2', W, 1
	MOVLB 0x01
	MOVWF gbl_Uout+D'2', 1
	MOVLB 0x02
	MOVF CompTempVarRet482+D'3', W, 1
	MOVLB 0x01
	MOVWF gbl_Uout+D'3', 1
	BTFSS gbl_auto_adjust_pwm,2, 1
	RETURN
	MOVLW 0x00
	SUBWF gbl_Uout+D'3', W, 1
	BNZ	label190
	MOVLW 0x00
	SUBWF gbl_Uout+D'2', W, 1
	BNZ	label190
	MOVLW 0x01
	SUBWF gbl_Uout+D'1', W, 1
	BNZ	label190
	MOVLW 0xBD
	SUBWF gbl_Uout, W, 1
label190
	BC	label191
	INFSNZ gbl_duty_cycle, F, 1
	INCF gbl_duty_cycle+D'1', F, 1
	MOVF gbl_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val, 1
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val+D'1', 1
	CALL set_PWM_00000
	RETURN
label191
	MOVF gbl_Uout+D'3', W, 1
	SUBLW 0x00
	BNZ	label192
	MOVF gbl_Uout+D'2', W, 1
	SUBLW 0x00
	BNZ	label192
	MOVF gbl_Uout+D'1', W, 1
	SUBLW 0x01
	BNZ	label192
	MOVF gbl_Uout, W, 1
	SUBLW 0xCC
label192
	BTFSC STATUS,C
	RETURN
	MOVLW 0x01
	CPFSGT gbl_duty_cycle, 1
	TSTFSZ gbl_duty_cycle+D'1', 1
	BRA	label193
	BRA	label194
label193
	MOVF gbl_duty_cycle, F, 1
	BTFSC STATUS,Z
	DECF gbl_duty_cycle+D'1', F, 1
	DECF gbl_duty_cycle, F, 1
label194
	MOVF gbl_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val, 1
	MOVLB 0x01
	MOVF gbl_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF set_PWM_00000_arg_val+D'1', 1
	CALL set_PWM_00000
	RETURN
; } handle_PWM function end

	ORG 0x00001E7C
execute_co_00058
; { execute_command ; function begin
	BCF execute_co_00058_1_cmd_ok,1, 1
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x67
	MOVWF CompTempVar985, 1
	MOVLW 0x65
	MOVWF CompTempVar985+D'1', 1
	MOVLW 0x74
	MOVWF CompTempVar985+D'2', 1
	CLRF CompTempVar985+D'3', 1
	MOVLW HIGH(CompTempVar985+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar985+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x03
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label196
	CLRWDT
	DECF execute_co_00058_arg_source, W, 1
	BNZ	label195
	CALL usbhid_wai_00012
	CALL send_usb_p_00056
	BRA	label219
label195
	CALL send_seria_00057
	BRA	label219
label196
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x77
	MOVWF CompTempVar987, 1
	MOVLW 0x64
	MOVWF CompTempVar987+D'1', 1
	MOVLW 0x74
	MOVWF CompTempVar987+D'2', 1
	CLRF CompTempVar987+D'3', 1
	MOVLW HIGH(CompTempVar987+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar987+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x03
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label197
	BSF execute_co_00058_1_cmd_ok,1, 1
	CLRWDT
	BRA	label219
label197
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x65
	MOVWF CompTempVar989+D'1', 1
	MOVWF CompTempVar989+D'3', 1
	MOVLW 0x72
	MOVWF CompTempVar989, 1
	MOVLW 0x73
	MOVWF CompTempVar989+D'2', 1
	MOVLW 0x74
	MOVWF CompTempVar989+D'4', 1
	CLRF CompTempVar989+D'5', 1
	MOVLW HIGH(CompTempVar989+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar989+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x05
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label198
	BSF execute_co_00058_1_cmd_ok,1, 1
	RESET
	BRA	label219
label198
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x63
	MOVWF CompTempVar991, 1
	MOVLW 0x6C
	MOVWF CompTempVar991+D'1', 1
	MOVLW 0x65
	MOVWF CompTempVar991+D'2', 1
	MOVLW 0x61
	MOVWF CompTempVar991+D'3', 1
	MOVLW 0x72
	MOVWF CompTempVar991+D'4', 1
	CLRF CompTempVar991+D'5', 1
	MOVLW HIGH(CompTempVar991+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar991+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x05
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label199
	BSF execute_co_00058_1_cmd_ok,1, 1
	CALL reset_coun_0004E
	BRA	label219
label199
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x63
	MOVWF CompTempVar993, 1
	MOVLW 0x61
	MOVWF CompTempVar993+D'1', 1
	MOVLW 0x6C
	MOVWF CompTempVar993+D'2', 1
	CLRF CompTempVar993+D'3', 1
	MOVLW HIGH(CompTempVar993+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar993+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x03
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label202
	MOVLW 0x04
	MOVWF strtol_00000_arg_buffer, 1
	CLRF strtol_00000_arg_buffer+D'1', 1
	MOVF execute_co_00058_arg_string, W, 1
	ADDWF strtol_00000_arg_buffer, F, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	ADDWFC strtol_00000_arg_buffer+D'1', F, 1
	CLRF strtol_00000_arg_endPtr, 1
	CLRF strtol_00000_arg_endPtr+D'1', 1
	MOVLW 0x0A
	MOVWF strtol_00000_arg_radix, 1
	CALL strtol_00000
	MOVF CompTempVarRet901, W, 1
	MOVWF execute_co_00058_51_value, 1
	MOVF CompTempVarRet901+D'1', W, 1
	MOVWF execute_co_00058_51_value+D'1', 1
	MOVF CompTempVarRet901+D'2', W, 1
	MOVWF execute_co_00058_51_value+D'2', 1
	MOVF CompTempVarRet901+D'3', W, 1
	MOVWF execute_co_00058_51_value+D'3', 1
	MOVF execute_co_00058_51_value+D'3', W, 1
	SUBLW 0x00
	BNZ	label200
	MOVF execute_co_00058_51_value+D'2', W, 1
	SUBLW 0x07
	BNZ	label200
	MOVF execute_co_00058_51_value+D'1', W, 1
	SUBLW 0xA1
	BNZ	label200
	MOVF execute_co_00058_51_value, W, 1
	SUBLW 0x20
label200
	BTFSC STATUS,C
	BRA	label219
	MOVLW 0x00
	SUBWF execute_co_00058_51_value+D'3', W, 1
	BNZ	label201
	MOVLW 0x16
	SUBWF execute_co_00058_51_value+D'2', W, 1
	BNZ	label201
	MOVLW 0xE3
	SUBWF execute_co_00058_51_value+D'1', W, 1
	BNZ	label201
	MOVLW 0x60
	SUBWF execute_co_00058_51_value, W, 1
label201
	BTFSC STATUS,C
	BRA	label219
	BSF execute_co_00058_1_cmd_ok,1, 1
	MOVF execute_co_00058_51_value, W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration, 1
	MOVLB 0x02
	MOVF execute_co_00058_51_value+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'1', 1
	MOVLB 0x02
	MOVF execute_co_00058_51_value+D'2', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'2', 1
	MOVLB 0x02
	MOVF execute_co_00058_51_value+D'3', W, 1
	MOVLB 0x01
	MOVWF gbl_adc_calibration+D'3', 1
	BRA	label219
label202
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x73
	MOVWF CompTempVar999, 1
	MOVLW 0x61
	MOVWF CompTempVar999+D'1', 1
	MOVLW 0x76
	MOVWF CompTempVar999+D'2', 1
	MOVLW 0x65
	MOVWF CompTempVar999+D'3', 1
	CLRF CompTempVar999+D'4', 1
	MOVLW HIGH(CompTempVar999+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar999+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x04
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label203
	BSF execute_co_00058_1_cmd_ok,1, 1
	CALL save_setti_00054
	BRA	label219
label203
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x64
	MOVWF CompTempVar1001, 1
	MOVLW 0x65
	MOVWF CompTempVar1001+D'1', 1
	MOVLW 0x66
	MOVWF CompTempVar1001+D'2', 1
	MOVLW 0x61
	MOVWF CompTempVar1001+D'3', 1
	MOVLW 0x75
	MOVWF CompTempVar1001+D'4', 1
	MOVLW 0x6C
	MOVWF CompTempVar1001+D'5', 1
	MOVLW 0x74
	MOVWF CompTempVar1001+D'6', 1
	CLRF CompTempVar1001+D'7', 1
	MOVLW HIGH(CompTempVar1001+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1001+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x07
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label204
	CLRF eeprom_wri_00052_arg_adr, 1
	CLRF eeprom_wri_00052_arg_value, 1
	CLRF eeprom_wri_00052_arg_value+D'1', 1
	CLRF eeprom_wri_00052_arg_value+D'2', 1
	CLRF eeprom_wri_00052_arg_value+D'3', 1
	CALL eeprom_wri_00052
	BSF execute_co_00058_1_cmd_ok,1, 1
	BRA	label219
label204
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x72
	MOVWF CompTempVar1003, 1
	MOVLW 0x65
	MOVWF CompTempVar1003+D'1', 1
	MOVLW 0x6D
	MOVWF CompTempVar1003+D'2', 1
	MOVLW 0x20
	MOVWF CompTempVar1003+D'3', 1
	MOVLW 0x77
	MOVWF CompTempVar1003+D'4', 1
	MOVLW 0x61
	MOVWF CompTempVar1003+D'5', 1
	MOVLW 0x74
	MOVWF CompTempVar1003+D'6', 1
	MOVLW 0x63
	MOVWF CompTempVar1003+D'7', 1
	MOVLW 0x68
	MOVWF CompTempVar1003+D'8', 1
	MOVLW 0x64
	MOVWF CompTempVar1003+D'9', 1
	MOVLW 0x6F
	MOVWF CompTempVar1003+D'10', 1
	MOVLW 0x67
	MOVWF CompTempVar1003+D'11', 1
	CLRF CompTempVar1003+D'12', 1
	MOVLW HIGH(CompTempVar1003+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1003+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x0C
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label207
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF FSR0H
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF FSR0L
	MOVLW 0x0D
	ADDWF FSR0L, F
	CLRF CompTempVar1006, 1
	MOVLW 0x31
	CPFSEQ INDF0
	BRA	label205
	INCF CompTempVar1006, F, 1
label205
	MOVLB 0x01
	BCF gbl_remote_watchdog,1, 1
	MOVLB 0x02
	BTFSS CompTempVar1006,0, 1
	BRA	label206
	MOVLB 0x01
	BSF gbl_remote_watchdog,1, 1
label206
	MOVLB 0x02
	BSF execute_co_00058_1_cmd_ok,1, 1
	BRA	label219
label207
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x64
	MOVWF CompTempVar1007+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar1007+D'3', 1
	MOVLW 0x68
	MOVWF CompTempVar1007+D'1', 1
	MOVWF CompTempVar1007+D'5', 1
	MOVLW 0x6C
	MOVWF CompTempVar1007+D'7', 1
	MOVLW 0x6F
	MOVWF CompTempVar1007+D'6', 1
	MOVLW 0x72
	MOVWF CompTempVar1007+D'2', 1
	MOVLW 0x73
	MOVWF CompTempVar1007+D'4', 1
	MOVLW 0x74
	MOVWF CompTempVar1007, 1
	CLRF CompTempVar1007+D'9', 1
	MOVLW HIGH(CompTempVar1007+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1007+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x09
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label210
	MOVLW 0x0A
	MOVWF strtoi_00000_arg_buffer, 1
	CLRF strtoi_00000_arg_buffer+D'1', 1
	MOVF execute_co_00058_arg_string, W, 1
	ADDWF strtoi_00000_arg_buffer, F, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	ADDWFC strtoi_00000_arg_buffer+D'1', F, 1
	CLRF strtoi_00000_arg_endPtr, 1
	CLRF strtoi_00000_arg_endPtr+D'1', 1
	MOVLW 0x0A
	MOVWF strtoi_00000_arg_radix, 1
	CALL strtoi_00000
	MOVF CompTempVarRet888, W, 1
	MOVWF execute_co_00058_88_threshold, 1
	MOVF CompTempVarRet888+D'1', W, 1
	MOVWF execute_co_00058_88_threshold+D'1', 1
	MOVLW 0x00
	CPFSGT execute_co_00058_88_threshold, 1
	TSTFSZ execute_co_00058_88_threshold+D'1', 1
	BRA	label208
	BRA	label209
label208
	MOVF execute_co_00058_88_threshold, W, 1
	MOVLB 0x01
	MOVWF gbl_detect_threshold, 1
	MOVLB 0x02
	MOVF execute_co_00058_88_threshold+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_detect_threshold+D'1', 1
label209
	MOVLB 0x02
	BSF execute_co_00058_1_cmd_ok,1, 1
	BRA	label219
label210
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x70
	MOVWF CompTempVar1013, 1
	MOVLW 0x77
	MOVWF CompTempVar1013+D'1', 1
	MOVLW 0x6D
	MOVWF CompTempVar1013+D'2', 1
	CLRF CompTempVar1013+D'3', 1
	MOVLW HIGH(CompTempVar1013+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1013+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x03
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label211
	MOVLW 0x04
	MOVWF strtoi_00000_arg_buffer, 1
	CLRF strtoi_00000_arg_buffer+D'1', 1
	MOVF execute_co_00058_arg_string, W, 1
	ADDWF strtoi_00000_arg_buffer, F, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	ADDWFC strtoi_00000_arg_buffer+D'1', F, 1
	CLRF strtoi_00000_arg_endPtr, 1
	CLRF strtoi_00000_arg_endPtr+D'1', 1
	MOVLW 0x0A
	MOVWF strtoi_00000_arg_radix, 1
	CALL strtoi_00000
	MOVF CompTempVarRet888, W, 1
	MOVWF execute_co_00058_99_pwm_val, 1
	MOVF CompTempVarRet888+D'1', W, 1
	MOVWF execute_co_00058_99_pwm_val+D'1', 1
	MOVF execute_co_00058_99_pwm_val, W, 1
	MOVWF set_PWM_00000_arg_val, 1
	MOVF execute_co_00058_99_pwm_val+D'1', W, 1
	MOVWF set_PWM_00000_arg_val+D'1', 1
	CALL set_PWM_00000
	MOVLB 0x02
	BSF execute_co_00058_1_cmd_ok,1, 1
	BRA	label219
label211
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x61
	MOVWF CompTempVar1019, 1
	MOVLW 0x75
	MOVWF CompTempVar1019+D'1', 1
	MOVLW 0x74
	MOVWF CompTempVar1019+D'2', 1
	MOVLW 0x6F
	MOVWF CompTempVar1019+D'3', 1
	MOVLW 0x20
	MOVWF CompTempVar1019+D'4', 1
	MOVLW 0x70
	MOVWF CompTempVar1019+D'5', 1
	MOVLW 0x77
	MOVWF CompTempVar1019+D'6', 1
	MOVLW 0x6D
	MOVWF CompTempVar1019+D'7', 1
	CLRF CompTempVar1019+D'8', 1
	MOVLW HIGH(CompTempVar1019+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1019+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x08
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label214
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF FSR0H
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF FSR0L
	MOVLW 0x09
	ADDWF FSR0L, F
	CLRF CompTempVar1022, 1
	MOVLW 0x31
	CPFSEQ INDF0
	BRA	label212
	INCF CompTempVar1022, F, 1
label212
	MOVLB 0x01
	BCF gbl_auto_adjust_pwm,2, 1
	MOVLB 0x02
	BTFSS CompTempVar1022,0, 1
	BRA	label213
	MOVLB 0x01
	BSF gbl_auto_adjust_pwm,2, 1
label213
	MOVLB 0x02
	BSF execute_co_00058_1_cmd_ok,1, 1
	BRA	label219
label214
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1023+D'4', 1
	MOVLW 0x61
	MOVWF CompTempVar1023, 1
	MOVLW 0x62
	MOVWF CompTempVar1023+D'7', 1
	MOVLW 0x6F
	MOVWF CompTempVar1023+D'3', 1
	MOVLW 0x73
	MOVWF CompTempVar1023+D'6', 1
	MOVLW 0x74
	MOVWF CompTempVar1023+D'2', 1
	MOVLW 0x75
	MOVWF CompTempVar1023+D'1', 1
	MOVWF CompTempVar1023+D'5', 1
	CLRF CompTempVar1023+D'8', 1
	MOVLW HIGH(CompTempVar1023+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1023+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x08
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label217
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF FSR0H
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF FSR0L
	MOVLW 0x09
	ADDWF FSR0L, F
	CLRF CompTempVar1026, 1
	MOVLW 0x31
	CPFSEQ INDF0
	BRA	label215
	INCF CompTempVar1026, F, 1
label215
	MOVLB 0x01
	BCF gbl_auto_usb,3, 1
	MOVLB 0x02
	BTFSS CompTempVar1026,0, 1
	BRA	label216
	MOVLB 0x01
	BSF gbl_auto_usb,3, 1
label216
	BRA	label219
label217
	MOVF execute_co_00058_arg_string, W, 1
	MOVWF strncmp8_00000_arg_ptr1, 1
	MOVF execute_co_00058_arg_string+D'1', W, 1
	MOVWF strncmp8_00000_arg_ptr1+D'1', 1
	MOVLW 0x73
	MOVWF CompTempVar1027, 1
	MOVLW 0x77
	MOVWF CompTempVar1027+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1027+D'2', 1
	MOVLW 0x76
	MOVWF CompTempVar1027+D'3', 1
	MOVLW 0x65
	MOVWF CompTempVar1027+D'4', 1
	MOVLW 0x72
	MOVWF CompTempVar1027+D'5', 1
	CLRF CompTempVar1027+D'6', 1
	MOVLW HIGH(CompTempVar1027+D'0')
	MOVWF strncmp8_00000_arg_ptr2+D'1', 1
	MOVLW LOW(CompTempVar1027+D'0')
	MOVWF strncmp8_00000_arg_ptr2, 1
	MOVLW 0x06
	MOVWF strncmp8_00000_arg_len, 1
	CALL strncmp8_00000
	MOVF CompTempVarRet571, F, 1
	BNZ	label219
	DECF execute_co_00058_arg_source, W, 1
	BNZ	label218
	CALL usbhid_wai_00012
	CLRF execute_co_00058_126_tmp, 1
	MOVLW HIGH(execute_co_00058_126_tmp+D'0')
	MOVWF strcat8_00000_arg_dst+D'1', 1
	MOVLW LOW(execute_co_00058_126_tmp+D'0')
	MOVWF strcat8_00000_arg_dst, 1
	MOVLW 0x4F
	MOVWF CompTempVar1030, 1
	MOVLW 0x4B
	MOVWF CompTempVar1030+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1030+D'2', 1
	CLRF CompTempVar1030+D'3', 1
	MOVLW HIGH(CompTempVar1030+D'0')
	MOVWF strcat8_00000_arg_src+D'1', 1
	MOVLW LOW(CompTempVar1030+D'0')
	MOVWF strcat8_00000_arg_src, 1
	CALL strcat8_00000
	MOVLW HIGH(execute_co_00058_126_tmp+D'0')
	MOVWF strcat8_00000_arg_dst+D'1', 1
	MOVLW LOW(execute_co_00058_126_tmp+D'0')
	MOVWF strcat8_00000_arg_dst, 1
	MOVLW 0x33
	MOVWF CompTempVar1033, 1
	MOVLW 0x2E
	MOVWF CompTempVar1033+D'1', 1
	MOVLW 0x30
	MOVWF CompTempVar1033+D'2', 1
	MOVLW 0x31
	MOVWF CompTempVar1033+D'3', 1
	CLRF CompTempVar1033+D'4', 1
	MOVLW HIGH(CompTempVar1033+D'0')
	MOVWF strcat8_00000_arg_src+D'1', 1
	MOVLW LOW(CompTempVar1033+D'0')
	MOVWF strcat8_00000_arg_src, 1
	CALL strcat8_00000
	MOVLW HIGH(execute_co_00058_126_tmp+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer+D'1', 1
	MOVLW LOW(execute_co_00058_126_tmp+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer, 1
	MOVLW HIGH(execute_co_00058_126_tmp+D'0')
	MOVWF strlen8_00000_arg_ptr+D'1', 1
	MOVLW LOW(execute_co_00058_126_tmp+D'0')
	MOVWF strlen8_00000_arg_ptr, 1
	CALL strlen8_00000
	INCF CompTempVarRet500, W, 1
	MOVWF usbhid_sen_0000B_arg_size, 1
	CALL usbhid_sen_0000B
	BRA	label219
label218
	MOVLW 0x4F
	MOVWF CompTempVar1038, 1
	MOVLW 0x4B
	MOVWF CompTempVar1038+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1038+D'2', 1
	CLRF CompTempVar1038+D'3', 1
	MOVLW HIGH(CompTempVar1038+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(CompTempVar1038+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	MOVLW 0x33
	MOVWF CompTempVar1040, 1
	MOVLW 0x2E
	MOVWF CompTempVar1040+D'1', 1
	MOVLW 0x30
	MOVWF CompTempVar1040+D'2', 1
	MOVLW 0x31
	MOVWF CompTempVar1040+D'3', 1
	CLRF CompTempVar1040+D'4', 1
	MOVLW HIGH(CompTempVar1040+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(CompTempVar1040+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	MOVLW 0x0A
	MOVWF serial_sen_0003C_arg_byte, 1
	CALL serial_sen_0003C
label219
	MOVLB 0x02
	BTFSS execute_co_00058_1_cmd_ok,1, 1
	RETURN
	DECF execute_co_00058_arg_source, W, 1
	BNZ	label220
	CALL usbhid_wai_00012
	MOVLW 0x4F
	MOVWF CompTempVar1042, 1
	MOVLW 0x4B
	MOVWF CompTempVar1042+D'1', 1
	CLRF CompTempVar1042+D'2', 1
	MOVLW HIGH(CompTempVar1042+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer+D'1', 1
	MOVLW LOW(CompTempVar1042+D'0')
	MOVWF usbhid_sen_0000B_arg_buffer, 1
	MOVLW 0x03
	MOVWF usbhid_sen_0000B_arg_size, 1
	CALL usbhid_sen_0000B
	RETURN
label220
	MOVLW 0x4F
	MOVWF CompTempVar1044, 1
	MOVLW 0x4B
	MOVWF CompTempVar1044+D'1', 1
	MOVLW 0x0A
	MOVWF CompTempVar1044+D'2', 1
	CLRF CompTempVar1044+D'3', 1
	MOVLW HIGH(CompTempVar1044+D'0')
	MOVWF serial_sen_0003E_arg_data+D'1', 1
	MOVLW LOW(CompTempVar1044+D'0')
	MOVWF serial_sen_0003E_arg_data, 1
	CALL serial_sen_0003E
	RETURN
; } execute_command function end

	ORG 0x000023D6
main
; { main ; function begin
	BTFSC gbl_rcon,3
	BRA	label221
	MOVLB 0x01
	INFSNZ gbl_watchdogs, F, 1
	INCF gbl_watchdogs+D'1', F, 1
	BRA	label222
label221
	MOVLB 0x01
	CLRF gbl_watchdogs, 1
	CLRF gbl_watchdogs+D'1', 1
label222
	BCF gbl_ucon,3
	BSF gbl_ucfg,3
	BCF gbl_trisc,2
	BSF gbl_rcon,7
	MOVLW 0x0F
	MOVWF gbl_adcon1
	BCF gbl_ipr2,5
	BCF gbl_trisc,1
	BSF gbl_portc,1
	CALL rtc_init_00000
	CALL load_setti_00053
	CLRWDT
	MOVLW 0x01
	MOVLB 0x02
	MOVWF delay_s_00000_arg_del, 1
	CALL delay_s_00000
	CLRWDT
	CALL usbhid_ini_0000A
	CLRWDT
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del, 1
	CALL delay_s_00000
	CLRWDT
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del, 1
	CALL delay_s_00000
	CLRWDT
	MOVLB 0x01
	CLRF gbl_serial_count, 1
	BCF gbl_serial_cmd,0, 1
	CALL serial_ini_0003B
	CALL init_ADC_00000
	CALL init_TMR0_00000
	CALL init_PWM_00000
	MOVLW 0xFA
	MOVLB 0x02
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	CALL init_count_00055
	CLRWDT
	MOVLB 0x02
	CLRF main_1_blinks, 1
	CLRF main_1_blink_ticks, 1
	CLRF main_1_blink_ticks+D'1', 1
	CLRF main_1_blink_ticks+D'2', 1
	CLRF main_1_blink_ticks+D'3', 1
	BCF main_1_detect_output_state,0, 1
	CLRF main_1_previous_sec, 1
	CLRF main_1_usb_watchdog, 1
	CLRF main_1_usb_watchdog+D'1', 1
	CLRF main_1_usb_watchdog+D'2', 1
	CLRF main_1_usb_watchdog+D'3', 1
label223
	MOVLB 0x01
	MOVF gbl_previous_counter, W, 1
	MOVLB 0x00
	CPFSEQ gbl_geiger_counter, 1
	BRA	label224
	BRA	label225
label224
	MOVLB 0x01
	CPFSEQ gbl_previous_counter, 1
label225
	BRA	label226
	CALL rtc_get_ti_00026
	MOVF CompTempVarRet1065, W, 1
	MOVLB 0x01
	MOVWF gbl_last_detect_time, 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_last_detect_time+D'1', 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'2', W, 1
	MOVLB 0x01
	MOVWF gbl_last_detect_time+D'2', 1
	MOVLB 0x02
	MOVF CompTempVarRet1065+D'3', W, 1
	MOVLB 0x01
	MOVWF gbl_last_detect_time+D'3', 1
	INCF gbl_previous_counter, F, 1
	MOVLB 0x00
	INCF gbl_big_geiger_counter, F, 1
	BTFSC STATUS,Z
	INCF gbl_big_geiger_counter+D'1', F, 1
	BTFSC STATUS,Z
	INCF gbl_big_geiger_counter+D'2', F, 1
	BTFSC STATUS,Z
	INCF gbl_big_geiger_counter+D'3', F, 1
	MOVLB 0x02
	INCF main_1_blinks, F, 1
	BRA	label223
label226
	CALL rtc_get_ti_00035
	MOVF main_1_blink_ticks, W, 1
	SUBWF CompTempVarRet1323, W, 1
	MOVWF CompTempVar1046, 1
	MOVF main_1_blink_ticks+D'1', W, 1
	SUBWFB CompTempVarRet1323+D'1', W, 1
	MOVWF CompTempVar1047, 1
	MOVF main_1_blink_ticks+D'2', W, 1
	SUBWFB CompTempVarRet1323+D'2', W, 1
	MOVWF CompTempVar1048, 1
	MOVF main_1_blink_ticks+D'3', W, 1
	SUBWFB CompTempVarRet1323+D'3', W, 1
	MOVWF CompTempVar1049, 1
	MOVF CompTempVar1049, W, 1
	SUBLW 0x00
	BNZ	label227
	MOVF CompTempVar1048, W, 1
	SUBLW 0x02
	BNZ	label227
	MOVF CompTempVar1047, W, 1
	SUBLW 0x49
	BNZ	label227
	MOVF CompTempVar1046, W, 1
	SUBLW 0xF0
label227
	BC	label229
	MOVLW 0x00
	CPFSGT main_1_blinks, 1
	BRA	label228
	BTFSC main_1_detect_output_state,0, 1
	DECF main_1_blinks, F, 1
	MOVLW 0xFF
	BTFSC main_1_detect_output_state,0, 1
	MOVLW 0xFE
	MOVWF CompTempVar1050, 1
	BCF main_1_detect_output_state,0, 1
	BTFSC CompTempVar1050,0, 1
	BSF main_1_detect_output_state,0, 1
	BTFSC main_1_detect_output_state,0, 1
	BSF gbl_portc,0
	BTFSS main_1_detect_output_state,0, 1
	BCF gbl_portc,0
label228
	BCF gbl_pir1,6
	BSF gbl_adcon0,1
	CALL rtc_get_ti_00035
	MOVF CompTempVarRet1323, W, 1
	MOVWF main_1_blink_ticks, 1
	MOVF CompTempVarRet1323+D'1', W, 1
	MOVWF main_1_blink_ticks+D'1', 1
	MOVF CompTempVarRet1323+D'2', W, 1
	MOVWF main_1_blink_ticks+D'2', 1
	MOVF CompTempVarRet1323+D'3', W, 1
	MOVWF main_1_blink_ticks+D'3', 1
label229
	BTFSS gbl_pir1,6
	BRA	label230
	MOVF gbl_adresl, W
	MOVLB 0x01
	MOVWF gbl_adc_value, 1
	MOVF gbl_adresh, W
	MOVWF gbl_adc_value+D'1', 1
	CALL handle_PWM_00000
	BCF gbl_pir1,6
label230
	CALL usbhid_con_0000E
	BTFSS CompTempVarRet1400,1, 1
	BRA	label232
	MOVLB 0x01
	BTFSS gbl_auto_usb,3, 1
	BRA	label231
	CALL usbhid_out_0000F
	BTFSS CompTempVarRet1402,1, 1
	CALL send_usb_p_00056
label231
	CALL usbhid_che_0000C
	MOVF CompTempVarRet1398, W, 1
	MOVWF main_96_rx, 1
	MOVF main_96_rx, F, 1
	BZ	label232
	MOVLW HIGH(main_103_usb_data+D'0')
	MOVWF usbhid_rec_0000D_arg_buffer+D'1', 1
	MOVLW LOW(main_103_usb_data+D'0')
	MOVWF usbhid_rec_0000D_arg_buffer, 1
	MOVLW 0x40
	MOVWF usbhid_rec_0000D_arg_len, 1
	CALL usbhid_rec_0000D
	MOVLW HIGH(main_103_usb_data+D'0')
	MOVWF execute_co_00058_arg_string+D'1', 1
	MOVLW LOW(main_103_usb_data+D'0')
	MOVWF execute_co_00058_arg_string, 1
	MOVLW 0x01
	MOVWF execute_co_00058_arg_source, 1
	CALL execute_co_00058
label232
	CALL rtc_get_se_0002C
	MOVF CompTempVarRet1094, W, 1
	CPFSEQ main_1_previous_sec, 1
	CPFSEQ CompTempVarRet1094, 1
	BRA	label233
	MOVLW 0xFF
	BTFSC gbl_portc,1
	MOVLW 0xFE
	MOVWF CompTempVar1053, 1
	BTFSC CompTempVar1053,0, 1
	BSF gbl_portc,1
	BTFSS CompTempVar1053,0, 1
	BCF gbl_portc,1
	CALL rtc_get_se_0002C
	MOVF CompTempVarRet1094, W, 1
	MOVWF main_1_previous_sec, 1
label233
	MOVLB 0x01
	BTFSS gbl_serial_cmd,0, 1
	BRA	label234
	MOVLW HIGH(gbl_serial_data+D'0')
	MOVLB 0x02
	MOVWF execute_co_00058_arg_string+D'1', 1
	MOVLW LOW(gbl_serial_data+D'0')
	MOVWF execute_co_00058_arg_string, 1
	CLRF execute_co_00058_arg_source, 1
	CALL execute_co_00058
	MOVLB 0x01
	CLRF gbl_serial_count, 1
	BCF gbl_serial_cmd,0, 1
label234
	BTFSC gbl_remote_watchdog,1, 1
	BRA	label223
	CLRWDT
	BRA	label223
; } main function end

	ORG 0x000025C0
interrupt_low
; { interrupt_low ; function begin
	MOVFF STATUS,  Int2Context
	MOVFF BSR,  Int2Context+D'1'
	MOVFF FSR0H,  Int2Context+D'2'
	MOVFF FSR0L,  Int2Context+D'3'
	MOVFF PRODH,  Int2Context+D'4'
	MOVFF PRODL,  Int2Context+D'5'
	MOVWF Int2Context+D'6'
	BTFSS gbl_pir1,0
	BRA	label235
	CALL rtc_handle_00025
	BCF gbl_pir1,0
label235
	BTFSS gbl_pir2,1
	BRA	label236
	BCF gbl_intcon,6
	BCF gbl_t3con,0
	CLRF gbl_tmr3h
	CLRF gbl_tmr3l
	BCF gbl_pir2,1
	MOVLB 0x01
	CLRF gbl_last_time, 1
	CLRF gbl_last_time+D'1', 1
	INFSNZ gbl_error, F, 1
	INCF gbl_error+D'1', F, 1
label236
	CALL usb_handle_00013
	MOVF Int2Context+D'6', W
	MOVFF Int2Context+D'5',  PRODL
	MOVFF Int2Context+D'4',  PRODH
	MOVFF Int2Context+D'3',  FSR0L
	MOVFF Int2Context+D'2',  FSR0H
	MOVFF Int2Context+D'1',  BSR
	MOVFF Int2Context,  STATUS
	RETFIE
; } interrupt_low function end

	ORG 0x0000261C
_startup
	MOVLW 0x00
	MOVLB 0x01
	MOVWF gbl_month_str, 1
	MOVLW 0x01
	MOVWF gbl_wday_str, 1
	MOVLW 0x02
	MOVWF gbl_tformat, 1
	MOVLW 0x03
	MOVWF gbl_days_month, 1
	MOVLW 0x26
	MOVLB 0x00
	MOVWF gbl_USB_USBNAME, 1
	MOVLW 0x03
	MOVWF gbl_USB_USBNAME+D'1', 1
	MOVLW 0x55
	MOVWF gbl_USB_USBNAME+D'2', 1
	CLRF gbl_USB_USBNAME+D'3', 1
	MOVLW 0x53
	MOVWF gbl_USB_USBNAME+D'4', 1
	CLRF gbl_USB_USBNAME+D'5', 1
	MOVLW 0x42
	MOVWF gbl_USB_USBNAME+D'6', 1
	CLRF gbl_USB_USBNAME+D'7', 1
	MOVLW 0x20
	MOVWF gbl_USB_USBNAME+D'8', 1
	CLRF gbl_USB_USBNAME+D'9', 1
	MOVLW 0x47
	MOVWF gbl_USB_USBNAME+D'10', 1
	CLRF gbl_USB_USBNAME+D'11', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBNAME+D'12', 1
	CLRF gbl_USB_USBNAME+D'13', 1
	MOVLW 0x69
	MOVWF gbl_USB_USBNAME+D'14', 1
	CLRF gbl_USB_USBNAME+D'15', 1
	MOVLW 0x67
	MOVWF gbl_USB_USBNAME+D'16', 1
	CLRF gbl_USB_USBNAME+D'17', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBNAME+D'18', 1
	CLRF gbl_USB_USBNAME+D'19', 1
	MOVLW 0x72
	MOVWF gbl_USB_USBNAME+D'20', 1
	CLRF gbl_USB_USBNAME+D'21', 1
	MOVLW 0x20
	MOVWF gbl_USB_USBNAME+D'22', 1
	CLRF gbl_USB_USBNAME+D'23', 1
	MOVLW 0x43
	MOVWF gbl_USB_USBNAME+D'24', 1
	CLRF gbl_USB_USBNAME+D'25', 1
	MOVLW 0x6F
	MOVWF gbl_USB_USBNAME+D'26', 1
	CLRF gbl_USB_USBNAME+D'27', 1
	MOVLW 0x75
	MOVWF gbl_USB_USBNAME+D'28', 1
	CLRF gbl_USB_USBNAME+D'29', 1
	MOVLW 0x6E
	MOVWF gbl_USB_USBNAME+D'30', 1
	CLRF gbl_USB_USBNAME+D'31', 1
	MOVLW 0x74
	MOVWF gbl_USB_USBNAME+D'32', 1
	CLRF gbl_USB_USBNAME+D'33', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBNAME+D'34', 1
	CLRF gbl_USB_USBNAME+D'35', 1
	MOVLW 0x72
	MOVWF gbl_USB_USBNAME+D'36', 1
	CLRF gbl_USB_USBNAME+D'37', 1
	MOVLW 0x26
	MOVLB 0x01
	MOVWF gbl_USB_USBMFR, 1
	MOVLW 0x03
	MOVWF gbl_USB_USBMFR+D'1', 1
	MOVLW 0x55
	MOVWF gbl_USB_USBMFR+D'2', 1
	CLRF gbl_USB_USBMFR+D'3', 1
	MOVLW 0x53
	MOVWF gbl_USB_USBMFR+D'4', 1
	CLRF gbl_USB_USBMFR+D'5', 1
	MOVLW 0x42
	MOVWF gbl_USB_USBMFR+D'6', 1
	CLRF gbl_USB_USBMFR+D'7', 1
	MOVLW 0x20
	MOVWF gbl_USB_USBMFR+D'8', 1
	CLRF gbl_USB_USBMFR+D'9', 1
	MOVLW 0x47
	MOVWF gbl_USB_USBMFR+D'10', 1
	CLRF gbl_USB_USBMFR+D'11', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBMFR+D'12', 1
	CLRF gbl_USB_USBMFR+D'13', 1
	MOVLW 0x69
	MOVWF gbl_USB_USBMFR+D'14', 1
	CLRF gbl_USB_USBMFR+D'15', 1
	MOVLW 0x67
	MOVWF gbl_USB_USBMFR+D'16', 1
	CLRF gbl_USB_USBMFR+D'17', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBMFR+D'18', 1
	CLRF gbl_USB_USBMFR+D'19', 1
	MOVLW 0x72
	MOVWF gbl_USB_USBMFR+D'20', 1
	CLRF gbl_USB_USBMFR+D'21', 1
	MOVLW 0x20
	MOVWF gbl_USB_USBMFR+D'22', 1
	CLRF gbl_USB_USBMFR+D'23', 1
	MOVLW 0x43
	MOVWF gbl_USB_USBMFR+D'24', 1
	CLRF gbl_USB_USBMFR+D'25', 1
	MOVLW 0x6F
	MOVWF gbl_USB_USBMFR+D'26', 1
	CLRF gbl_USB_USBMFR+D'27', 1
	MOVLW 0x75
	MOVWF gbl_USB_USBMFR+D'28', 1
	CLRF gbl_USB_USBMFR+D'29', 1
	MOVLW 0x6E
	MOVWF gbl_USB_USBMFR+D'30', 1
	CLRF gbl_USB_USBMFR+D'31', 1
	MOVLW 0x74
	MOVWF gbl_USB_USBMFR+D'32', 1
	CLRF gbl_USB_USBMFR+D'33', 1
	MOVLW 0x65
	MOVWF gbl_USB_USBMFR+D'34', 1
	CLRF gbl_USB_USBMFR+D'35', 1
	MOVLW 0x72
	MOVWF gbl_USB_USBMFR+D'36', 1
	CLRF gbl_USB_USBMFR+D'37', 1
	MOVLW 0x06
	MOVWF gbl_device_report_descriptor, 1
	CLRF gbl_device_report_descriptor+D'1', 1
	SETF gbl_device_report_descriptor+D'2', 1
	MOVLW 0x09
	MOVWF gbl_device_report_descriptor+D'3', 1
	MOVLW 0x01
	MOVWF gbl_device_report_descriptor+D'4', 1
	MOVLW 0xA1
	MOVWF gbl_device_report_descriptor+D'5', 1
	MOVLW 0x01
	MOVWF gbl_device_report_descriptor+D'6', 1
	MOVLW 0x19
	MOVWF gbl_device_report_descriptor+D'7', 1
	MOVLW 0x01
	MOVWF gbl_device_report_descriptor+D'8', 1
	MOVLW 0x29
	MOVWF gbl_device_report_descriptor+D'9', 1
	MOVLW 0x40
	MOVWF gbl_device_report_descriptor+D'10', 1
	MOVLW 0x15
	MOVWF gbl_device_report_descriptor+D'11', 1
	CLRF gbl_device_report_descriptor+D'12', 1
	MOVLW 0x26
	MOVWF gbl_device_report_descriptor+D'13', 1
	SETF gbl_device_report_descriptor+D'14', 1
	CLRF gbl_device_report_descriptor+D'15', 1
	MOVLW 0x75
	MOVWF gbl_device_report_descriptor+D'16', 1
	MOVLW 0x08
	MOVWF gbl_device_report_descriptor+D'17', 1
	MOVLW 0x95
	MOVWF gbl_device_report_descriptor+D'18', 1
	MOVLW 0x40
	MOVWF gbl_device_report_descriptor+D'19', 1
	MOVLW 0x81
	MOVWF gbl_device_report_descriptor+D'20', 1
	MOVLW 0x02
	MOVWF gbl_device_report_descriptor+D'21', 1
	MOVLW 0x19
	MOVWF gbl_device_report_descriptor+D'22', 1
	MOVLW 0x01
	MOVWF gbl_device_report_descriptor+D'23', 1
	MOVLW 0x29
	MOVWF gbl_device_report_descriptor+D'24', 1
	MOVLW 0x40
	MOVWF gbl_device_report_descriptor+D'25', 1
	MOVLW 0x91
	MOVWF gbl_device_report_descriptor+D'26', 1
	MOVLW 0x02
	MOVWF gbl_device_report_descriptor+D'27', 1
	MOVLW 0xC0
	MOVWF gbl_device_report_descriptor+D'28', 1
	MOVLW 0x0A
	MOVLB 0x00
	MOVWF gbl_USB_SERIAL, 1
	MOVLW 0x03
	MOVWF gbl_USB_SERIAL+D'1', 1
	MOVLW 0x30
	MOVWF gbl_USB_SERIAL+D'2', 1
	CLRF gbl_USB_SERIAL+D'3', 1
	MOVLW 0x30
	MOVWF gbl_USB_SERIAL+D'4', 1
	CLRF gbl_USB_SERIAL+D'5', 1
	MOVLW 0x30
	MOVWF gbl_USB_SERIAL+D'6', 1
	CLRF gbl_USB_SERIAL+D'7', 1
	MOVLW 0x31
	MOVWF gbl_USB_SERIAL+D'8', 1
	CLRF gbl_USB_SERIAL+D'9', 1
	MOVLB 0x01
	CLRF gbl_incoming, 1
	CLRF gbl_outgoing, 1
	CLRF gbl_HID_USB_status, 1
	CLRF gbl_usb_state, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF CompGblVar118, 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_ep_in_buffer_location, 1
	MOVF CompGblVar118, W, 1
	MOVWF gbl_ep_in_buffer_location+D'1', 1
	MOVLW HIGH(gbl_buffer_1_in+D'0')
	MOVWF CompGblVar119, 1
	MOVLW LOW(gbl_buffer_1_in+D'0')
	MOVWF gbl_ep_in_buffer_location+D'2', 1
	MOVF CompGblVar119, W, 1
	MOVWF gbl_ep_in_buffer_location+D'3', 1
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF CompGblVar120, 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF gbl_ep_out_buffer_location, 1
	MOVF CompGblVar120, W, 1
	MOVWF gbl_ep_out_buffer_location+D'1', 1
	MOVLW HIGH(gbl_buffer_1_out+D'0')
	MOVWF CompGblVar121, 1
	MOVLW LOW(gbl_buffer_1_out+D'0')
	MOVWF gbl_ep_out_buffer_location+D'2', 1
	MOVF CompGblVar121, W, 1
	MOVWF gbl_ep_out_buffer_location+D'3', 1
	MOVLW 0x08
	MOVWF gbl_ep_in_buffer_size, 1
	CLRF gbl_ep_in_buffer_size+D'1', 1
	MOVLW 0x40
	MOVWF gbl_ep_in_buffer_size+D'2', 1
	CLRF gbl_ep_in_buffer_size+D'3', 1
	MOVLW 0x08
	MOVWF gbl_ep_out_buffer_size, 1
	CLRF gbl_ep_out_buffer_size+D'1', 1
	MOVLW 0x40
	MOVWF gbl_ep_out_buffer_size+D'2', 1
	CLRF gbl_ep_out_buffer_size+D'3', 1
	MOVLW 0x04
	MOVWF gbl_string_00, 1
	MOVLW 0x03
	MOVWF gbl_string_00+D'1', 1
	MOVLW 0x09
	MOVWF gbl_string_00+D'2', 1
	MOVLW 0x04
	MOVWF gbl_string_00+D'3', 1
	CLRF gbl_hid_rx_start, 1
	CLRF gbl_hid_rx_end, 1
	CLRF gbl_29_gbl_aSig, 1
	CLRF gbl_29_gbl_aSig+D'1', 1
	CLRF gbl_29_gbl_aSig+D'2', 1
	CLRF gbl_29_gbl_aSig+D'3', 1
	CLRF gbl_29_gbl_bSig, 1
	CLRF gbl_29_gbl_bSig+D'1', 1
	CLRF gbl_29_gbl_bSig+D'2', 1
	CLRF gbl_29_gbl_bSig+D'3', 1
	CLRF gbl_29_gbl_zSig, 1
	CLRF gbl_29_gbl_zSig+D'1', 1
	CLRF gbl_29_gbl_zSig+D'2', 1
	CLRF gbl_29_gbl_zSig+D'3', 1
	MOVLB 0x02
	CLRF gbl_29_gbl_aExp, 1
	CLRF gbl_29_gbl_bExp, 1
	MOVLB 0x01
	CLRF gbl_29_gbl_zExp, 1
	CLRF gbl_29_gbl_zExp+D'1', 1
	MOVLB 0x02
	CLRF gbl_29_gbl_aSign, 1
	CLRF gbl_29_gbl_bSign, 1
	CLRF gbl_29_gbl_zSign, 1
	CLRF gbl_29_gbl_zSigZero, 1
	MOVLB 0x01
	CLRF gbl_29_gbl_ret, 1
	CLRF gbl_29_gbl_ret+D'1', 1
	CLRF gbl_29_gbl_ret+D'2', 1
	CLRF gbl_29_gbl_ret+D'3', 1
	CLRF gbl_float_rounding_mode, 1
	MOVLB 0x02
	CLRF gbl_float_exception_flags, 1
	MOVLB 0x01
	CLRF gbl_float_detect_tininess, 1
	GOTO	main
	ORG 0x00002852
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	BTFSS gbl_pir1,1
	BRA	label241
	MOVLB 0x01
	MOVF gbl_sw_duty_cycle, W, 1
	CPFSLT gbl_sw_duty_cycle_index, 1
	BRA	label238
	MOVF gbl_hw_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF interrupt_2_tmp, 1
	MOVLB 0x01
	MOVF gbl_hw_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF interrupt_2_tmp+D'1', 1
	INCF interrupt_2_tmp, F, 1
	BTFSC STATUS,Z
	INCF interrupt_2_tmp+D'1', F, 1
	BRA	label239
label238
	MOVF gbl_hw_duty_cycle, W, 1
	MOVLB 0x02
	MOVWF interrupt_2_tmp, 1
	MOVLB 0x01
	MOVF gbl_hw_duty_cycle+D'1', W, 1
	MOVLB 0x02
	MOVWF interrupt_2_tmp+D'1', 1
label239
	MOVF interrupt_2_tmp, W, 1
	MOVWF CompTempVar933, 1
	RRCF interrupt_2_tmp+D'1', W, 1
	MOVWF CompTempVar934, 1
	RRCF CompTempVar933, F, 1
	RRCF CompTempVar934, F, 1
	RRCF CompTempVar933, F, 1
	MOVF CompTempVar933, W, 1
	MOVWF gbl_ccpr1l
	BTFSC interrupt_2_tmp,1, 1
	BSF gbl_ccp1con,4
	BTFSS interrupt_2_tmp,1, 1
	BCF gbl_ccp1con,4
	BTFSC interrupt_2_tmp,2, 1
	BSF gbl_ccp1con,5
	BTFSS interrupt_2_tmp,2, 1
	BCF gbl_ccp1con,5
	MOVLW 0x0F
	ANDWF gbl_ccp1con, F
	BTFSC interrupt_2_tmp,0, 1
	BSF gbl_ccp1con,4
	BTFSC interrupt_2_tmp,1, 1
	BSF gbl_ccp1con,5
	MOVLB 0x01
	INCF gbl_sw_duty_cycle_index, F, 1
	MOVLW 0x04
	CPFSEQ gbl_sw_duty_cycle_index, 1
	BRA	label240
	CLRF gbl_sw_duty_cycle_index, 1
label240
	BCF gbl_pir1,1
label241
	BTFSS gbl_intcon,2
	BRA	label244
	MOVF gbl_boost_val, F
	BZ	label242
	MOVLW 0xC7
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	CLRF gbl_boost_val
	BRA	label243
label242
	MOVLW 0x38
	IORWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x01
	MOVWF gbl_boost_val
label243
	BCF gbl_intcon,2
label244
	BTFSS gbl_intcon,1
	BRA	label245
	CLRF gbl_tmr3h
	CLRF gbl_tmr3l
	BSF gbl_t3con,0
	BCF gbl_intcon,1
label245
	BTFSS gbl_intcon3,0
	BRA	label251
	MOVF gbl_tmr3l, W
	MOVLB 0x02
	MOVWF interrupt_32_l, 1
	MOVF gbl_tmr3h, W
	MOVWF interrupt_32_h, 1
	MOVF interrupt_32_l, W, 1
	MOVWF interrupt_32_tmp_time, 1
	MOVF interrupt_32_h, W, 1
	MOVWF interrupt_32_tmp_time+D'1', 1
	MOVLW 0x00
	CPFSGT interrupt_32_tmp_time, 1
	TSTFSZ interrupt_32_tmp_time+D'1', 1
	BRA	label246
	BRA	label247
label246
	BTFSC interrupt_32_tmp_time+D'1',7, 1
	BRA	label247
	MOVF interrupt_32_tmp_time, W, 1
	MOVLB 0x01
	MOVWF gbl_last_time, 1
	MOVLB 0x02
	MOVF interrupt_32_tmp_time+D'1', W, 1
	MOVLB 0x01
	MOVWF gbl_last_time+D'1', 1
label247
	MOVLB 0x02
	MOVF interrupt_32_tmp_time+D'1', W, 1
	MOVLB 0x01
	SUBWF gbl_detect_threshold+D'1', W, 1
	BNZ	label248
	MOVLB 0x02
	MOVF interrupt_32_tmp_time, W, 1
	MOVLB 0x01
	SUBWF gbl_detect_threshold, W, 1
label248
	BNC	label249
	BNZ	label250
label249
	MOVLB 0x02
	BTFSC interrupt_32_tmp_time+D'1',7, 1
	BRA	label250
	MOVLB 0x00
	INCF gbl_geiger_counter, F, 1
	MOVLB 0x01
	MOVF gbl_detect_threshold, W, 1
	MOVLB 0x02
	SUBWF interrupt_32_tmp_time, F, 1
	MOVLB 0x01
	MOVF gbl_detect_threshold+D'1', W, 1
	MOVLB 0x02
	SUBWFB interrupt_32_tmp_time+D'1', F, 1
	BRA	label247
label250
	BCF gbl_t3con,0
	BCF gbl_intcon3,0
label251
	BTFSS gbl_pir1,5
	BRA	label255
	MOVF gbl_rcreg, W
	MOVLB 0x02
	MOVWF interrupt_44_data, 1
	MOVLB 0x01
	BTFSC gbl_serial_cmd,0, 1
	BRA	label255
	MOVLW 0x0D
	MOVLB 0x02
	CPFSEQ interrupt_44_data, 1
	BRA	label252
	BRA	label253
label252
	MOVLW 0x0A
	CPFSEQ interrupt_44_data, 1
	BRA	label254
label253
	MOVLB 0x01
	BSF gbl_serial_cmd,0, 1
	MOVLB 0x02
	CLRF interrupt_44_data, 1
label254
	LFSR 0x00, gbl_serial_data
	MOVF FSR0L, W
	MOVLB 0x01
	MOVF gbl_serial_count, W, 1
	ADDWF FSR0L, F
	MOVLB 0x02
	MOVF interrupt_44_data, W, 1
	MOVWF INDF0
	MOVLB 0x01
	INCF gbl_serial_count, F, 1
label255
	MOVFF Int1Context+D'3',  PRODL
	MOVFF Int1Context+D'2',  PRODH
	MOVFF Int1Context+D'1',  FSR0L
	MOVFF Int1Context,  FSR0H
	RETFIE 1
; } interrupt function end

	ORG 0x00300000
	DW 0x3EE2
	DW 0xF5F7
	ORG 0x00300004
	DW 0x78FF
	DW 0xFFBB
	ORG 0x00300008
	DW 0xFFFF
	DW 0xFFFF
	DW 0xFFFF
	END
