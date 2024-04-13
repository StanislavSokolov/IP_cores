-- -------------------------------------------------------------
-- 
-- File Name: D:\Projects\Matlab\IPcores\test\hdlsrc\hdlcoderFocCurrentFixptHdl\FOC_Curre_ip_src_Min.vhd
-- Created: 2023-12-01 13:24:03
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FOC_Curre_ip_src_Min
-- Source Path: hdlcoderFocCurrentFixptHdl/FOC_Current_Control/Space_Vector_Modulation/Min/Min
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.FOC_Curre_ip_src_FOC_Current_Control_pkg.ALL;

ENTITY FOC_Curre_ip_src_Min IS
  PORT( in0_0                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        in0_1                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        in0_2                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        out0                              :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En25
        );
END FOC_Curre_ip_src_Min;


ARCHITECTURE rtl OF FOC_Curre_ip_src_Min IS

  -- Signals
  SIGNAL in0                              : vector_of_signed32(0 TO 2);  -- sfix32_En25 [3]
  SIGNAL Min_stage1_val                   : vector_of_signed32(0 TO 1);  -- sfix32_En25 [2]
  SIGNAL Min_stage2_val                   : signed(31 DOWNTO 0);  -- sfix32_En25

BEGIN
  in0(0) <= signed(in0_0);
  in0(1) <= signed(in0_1);
  in0(2) <= signed(in0_2);

  ---- Tree min implementation ----
  ---- Tree min stage 1 ----
  
  Min_stage1_val(0) <= in0(0) WHEN in0(0) <= in0(1) ELSE
      in0(1);
  Min_stage1_val(1) <= in0(2);

  ---- Tree min stage 2 ----
  
  Min_stage2_val <= Min_stage1_val(0) WHEN Min_stage1_val(0) <= Min_stage1_val(1) ELSE
      Min_stage1_val(1);

  out0 <= std_logic_vector(Min_stage2_val);

END rtl;
