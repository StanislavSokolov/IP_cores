-- -------------------------------------------------------------
-- 
-- File Name: D:\Projects\Matlab\IPcores\test\hdlsrc\hdlcoderFocCurrentFixptHdl\FOC_Curre_ip_dut.vhd
-- Created: 2023-12-01 13:25:45
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FOC_Curre_ip_dut
-- Source Path: FOC_Curre_ip/FOC_Curre_ip_dut
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FOC_Curre_ip_dut IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        dut_enable                        :   IN    std_logic;  -- ufix1
        Current_Command                   :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
        Phase_Current_0                   :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
        Phase_Current_1                   :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
        Electrical_Position               :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
        paramCurrentControlI              :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En3
        paramCurrentControlP              :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        ce_out                            :   OUT   std_logic;  -- ufix1
        Phase_Voltage_0                   :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        Phase_Voltage_1                   :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        Phase_Voltage_2                   :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
        );
END FOC_Curre_ip_dut;


ARCHITECTURE rtl OF FOC_Curre_ip_dut IS

  -- Component Declarations
  COMPONENT FOC_Curre_ip_src_FOC_Current_Control
    PORT( clk                             :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          reset                           :   IN    std_logic;
          Current_Command                 :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          Phase_Current_0                 :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          Phase_Current_1                 :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          Electrical_Position             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          paramCurrentControlI            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En3
          paramCurrentControlP            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          ce_out                          :   OUT   std_logic;  -- ufix1
          Phase_Voltage_0                 :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          Phase_Voltage_1                 :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          Phase_Voltage_2                 :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : FOC_Curre_ip_src_FOC_Current_Control
    USE ENTITY work.FOC_Curre_ip_src_FOC_Current_Control(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL Phase_Voltage_0_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Phase_Voltage_1_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Phase_Voltage_2_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_FOC_Curre_ip_src_FOC_Current_Control : FOC_Curre_ip_src_FOC_Current_Control
    PORT MAP( clk => clk,
              clk_enable => enb,
              reset => reset,
              Current_Command => Current_Command,  -- sfix16_En12
              Phase_Current_0 => Phase_Current_0,  -- sfix16_En12
              Phase_Current_1 => Phase_Current_1,  -- sfix16_En12
              Electrical_Position => Electrical_Position,  -- sfix16_En12
              paramCurrentControlI => paramCurrentControlI,  -- sfix16_En3
              paramCurrentControlP => paramCurrentControlP,  -- sfix16_En8
              ce_out => ce_out_sig,  -- ufix1
              Phase_Voltage_0 => Phase_Voltage_0_sig,  -- sfix16_En8
              Phase_Voltage_1 => Phase_Voltage_1_sig,  -- sfix16_En8
              Phase_Voltage_2 => Phase_Voltage_2_sig  -- sfix16_En8
              );

  enb <= dut_enable;

  ce_out <= ce_out_sig;

  Phase_Voltage_0 <= Phase_Voltage_0_sig;

  Phase_Voltage_1 <= Phase_Voltage_1_sig;

  Phase_Voltage_2 <= Phase_Voltage_2_sig;

END rtl;

