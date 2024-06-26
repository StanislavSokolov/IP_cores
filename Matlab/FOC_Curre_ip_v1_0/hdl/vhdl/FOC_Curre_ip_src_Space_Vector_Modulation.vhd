-- -------------------------------------------------------------
-- 
-- File Name: D:\Projects\Matlab\IPcores\test\hdlsrc\hdlcoderFocCurrentFixptHdl\FOC_Curre_ip_src_Space_Vector_Modulation.vhd
-- Created: 2023-12-01 13:24:03
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FOC_Curre_ip_src_Space_Vector_Modulation
-- Source Path: hdlcoderFocCurrentFixptHdl/FOC_Current_Control/Space_Vector_Modulation
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.FOC_Curre_ip_src_FOC_Current_Control_pkg.ALL;

ENTITY FOC_Curre_ip_src_Space_Vector_Modulation IS
  PORT( ABC_0                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        ABC_1                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        ABC_2                             :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
        ABC_SVM_0                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        ABC_SVM_1                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        ABC_SVM_2                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
        );
END FOC_Curre_ip_src_Space_Vector_Modulation;


ARCHITECTURE rtl OF FOC_Curre_ip_src_Space_Vector_Modulation IS

  -- Component Declarations
  COMPONENT FOC_Curre_ip_src_Max
    PORT( in0_0                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          in0_1                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          in0_2                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          out0                            :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En25
          );
  END COMPONENT;

  COMPONENT FOC_Curre_ip_src_Min
    PORT( in0_0                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          in0_1                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          in0_2                           :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En25
          out0                            :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En25
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : FOC_Curre_ip_src_Max
    USE ENTITY work.FOC_Curre_ip_src_Max(rtl);

  FOR ALL : FOC_Curre_ip_src_Min
    USE ENTITY work.FOC_Curre_ip_src_Min(rtl);

  -- Signals
  SIGNAL ABC                              : vector_of_signed32(0 TO 2);  -- sfix32_En25 [3]
  SIGNAL Max_out1                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Max_out1_signed                  : signed(31 DOWNTO 0);  -- sfix32_En25
  SIGNAL Min_out1                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Min_out1_signed                  : signed(31 DOWNTO 0);  -- sfix32_En25
  SIGNAL Add_add_cast                     : signed(32 DOWNTO 0);  -- sfix33_En25
  SIGNAL Add_add_cast_1                   : signed(32 DOWNTO 0);  -- sfix33_En25
  SIGNAL Add_add_temp                     : signed(32 DOWNTO 0);  -- sfix33_En25
  SIGNAL Add_out1                         : signed(15 DOWNTO 0);  -- sfix16_En8
  SIGNAL Gain_cast                        : signed(31 DOWNTO 0);  -- sfix32_En23
  SIGNAL Gain_out1                        : signed(31 DOWNTO 0);  -- sfix32_En25
  SIGNAL Add1_v                           : signed(32 DOWNTO 0);  -- sfix33_En25
  SIGNAL Add1_sub_cast                    : vector_of_signed33(0 TO 2);  -- sfix33_En25 [3]
  SIGNAL Add1_sub_temp                    : vector_of_signed33(0 TO 2);  -- sfix33_En25 [3]
  SIGNAL Add1_out1                        : vector_of_signed16(0 TO 2);  -- sfix16_En8 [3]

BEGIN
  u_Max : FOC_Curre_ip_src_Max
    PORT MAP( in0_0 => ABC_0,  -- sfix32_En25
              in0_1 => ABC_1,  -- sfix32_En25
              in0_2 => ABC_2,  -- sfix32_En25
              out0 => Max_out1  -- sfix32_En25
              );

  u_Min : FOC_Curre_ip_src_Min
    PORT MAP( in0_0 => ABC_0,  -- sfix32_En25
              in0_1 => ABC_1,  -- sfix32_En25
              in0_2 => ABC_2,  -- sfix32_En25
              out0 => Min_out1  -- sfix32_En25
              );

  ABC(0) <= signed(ABC_0);
  ABC(1) <= signed(ABC_1);
  ABC(2) <= signed(ABC_2);

  Max_out1_signed <= signed(Max_out1);

  Min_out1_signed <= signed(Min_out1);

  Add_add_cast <= resize(Max_out1_signed, 33);
  Add_add_cast_1 <= resize(Min_out1_signed, 33);
  Add_add_temp <= Add_add_cast + Add_add_cast_1;
  Add_out1 <= Add_add_temp(32 DOWNTO 17);

  Gain_cast <= resize(Add_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 32);
  Gain_out1 <= Gain_cast(29 DOWNTO 0) & '0' & '0';

  Add1_v <= resize(Gain_out1, 33);

  Add1_out1_gen: FOR t_0 IN 0 TO 2 GENERATE
    Add1_sub_cast(t_0) <= resize(ABC(t_0), 33);
    Add1_sub_temp(t_0) <= Add1_sub_cast(t_0) - Add1_v;
    Add1_out1(t_0) <= Add1_sub_temp(t_0)(32 DOWNTO 17);
  END GENERATE Add1_out1_gen;


  ABC_SVM_0 <= std_logic_vector(Add1_out1(0));

  ABC_SVM_1 <= std_logic_vector(Add1_out1(1));

  ABC_SVM_2 <= std_logic_vector(Add1_out1(2));

END rtl;

