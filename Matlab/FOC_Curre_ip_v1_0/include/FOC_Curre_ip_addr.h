/*
 * File Name:         D:\Projects\Matlab\IPcores\test\ipcore\FOC_Curre_ip_v1_0\include\FOC_Curre_ip_addr.h
 * Description:       C Header File
 * Created:           2023-12-01 13:25:45
*/

#ifndef FOC_CURRE_IP_H_
#define FOC_CURRE_IP_H_

#define  IPCore_Reset_FOC_Curre_ip               0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_FOC_Curre_ip              0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_FOC_Curre_ip           0x8  //contains unique IP timestamp (yymmddHHMM): 2312011325
#define  Current_Command_Data_FOC_Curre_ip       0x100  //data register for Inport Current_Command
#define  Electrical_Position_Data_FOC_Curre_ip   0x104  //data register for Inport Electrical_Position
#define  Phase_Current_Data_FOC_Curre_ip         0x108  //data register for Inport Phase_Current, vector with 2 elements, address ends at 0x10C
#define  Phase_Current_Strobe_FOC_Curre_ip       0x110  //strobe register for port Phase_Current
#define  Phase_Voltage_Data_FOC_Curre_ip         0x120  //data register for Outport Phase_Voltage, vector with 3 elements, address ends at 0x128
#define  Phase_Voltage_Strobe_FOC_Curre_ip       0x130  //strobe register for port Phase_Voltage

#endif /* FOC_CURRE_IP_H_ */
