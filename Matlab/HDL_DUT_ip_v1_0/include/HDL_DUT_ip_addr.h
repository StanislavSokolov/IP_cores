/*
 * File Name:         hdl_prj2\ipcore\HDL_DUT_ip_v1_0\include\HDL_DUT_ip_addr.h
 * Description:       C Header File
 * Created:           2023-07-05 15:31:50
*/

#ifndef HDL_DUT_IP_H_
#define HDL_DUT_IP_H_

#define  IPCore_Reset_HDL_DUT_ip       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_HDL_DUT_ip      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_HDL_DUT_ip   0x8  //contains unique IP timestamp (yymmddHHMM): 2307051531
#define  in1_Data_HDL_DUT_ip           0x100  //data register for Inport in1
#define  in2_Data_HDL_DUT_ip           0x104  //data register for Inport in2
#define  out_Data_HDL_DUT_ip           0x108  //data register for Outport out

#endif /* HDL_DUT_IP_H_ */
