-- -------------------------------------------------------------
-- 
-- File Name: D:\Projects\Matlab\IPcores\test\hdlsrc\hdlcoderFocCurrentFixptHdl\FOC_Curre_ip_src_DQ_Current_Control.vhd
-- Created: 2023-12-01 13:24:03
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FOC_Curre_ip_src_DQ_Current_Control
-- Source Path: hdlcoderFocCurrentFixptHdl/FOC_Current_Control/DQ_Current_Control
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FOC_Curre_ip_src_DQ_Current_Control IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Q_Command                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
        D_Current                         :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En27
        Q_Current                         :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En27
        paramCurrentControlI              :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En3
        paramCurrentControlP              :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        D_Voltage                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En11
        Q_Voltage                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En11
        );
END FOC_Curre_ip_src_DQ_Current_Control;


ARCHITECTURE rtl OF FOC_Curre_ip_src_DQ_Current_Control IS

  -- Component Declarations
  COMPONENT FOC_Curre_ip_src_D_Current_Control
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Current_Command                 :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          Current_Measured                :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En27
          paramCurrentControlI            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En3
          paramCurrentControlP            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          Voltage                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En11
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : FOC_Curre_ip_src_D_Current_Control
    USE ENTITY work.FOC_Curre_ip_src_D_Current_Control(rtl);

  -- Signals
  SIGNAL D_Command_out1                   : signed(15 DOWNTO 0);  -- sfix16_En12
  SIGNAL D_Current_Control_out1           : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Q_Current_Control_out1           : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_D_Current_Control : FOC_Curre_ip_src_D_Current_Control
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Current_Command => std_logic_vector(D_Command_out1),  -- sfix16_En12
              Current_Measured => D_Current,  -- sfix32_En27
              paramCurrentControlI => paramCurrentControlI,  -- sfix16_En3
              paramCurrentControlP => paramCurrentControlP,  -- sfix16_En8
              Voltage => D_Current_Control_out1  -- sfix16_En11
              );

  u_Q_Current_Control : FOC_Curre_ip_src_D_Current_Control
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Current_Command => Q_Command,  -- sfix16_En12
              Current_Measured => Q_Current,  -- sfix32_En27
              paramCurrentControlI => paramCurrentControlI,  -- sfix16_En3
              paramCurrentControlP => paramCurrentControlP,  -- sfix16_En8
              Voltage => Q_Current_Control_out1  -- sfix16_En11
              );

  D_Command_out1 <= to_signed(16#0000#, 16);

  D_Voltage <= D_Current_Control_out1;

  Q_Voltage <= Q_Current_Control_out1;

END rtl;

