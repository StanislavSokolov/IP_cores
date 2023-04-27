-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ssevendenergy.com:user:BusBlock16IN:1.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY AckChecker_BusBlock16IN_2_0 IS
  PORT (
    Bus_16IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Out0 : OUT STD_LOGIC;
    Out1 : OUT STD_LOGIC;
    Out2 : OUT STD_LOGIC;
    Out3 : OUT STD_LOGIC;
    Out4 : OUT STD_LOGIC;
    Out5 : OUT STD_LOGIC;
    Out6 : OUT STD_LOGIC;
    Out7 : OUT STD_LOGIC;
    Out8 : OUT STD_LOGIC;
    Out9 : OUT STD_LOGIC;
    Out10 : OUT STD_LOGIC;
    Out11 : OUT STD_LOGIC;
    Out12 : OUT STD_LOGIC;
    Out13 : OUT STD_LOGIC;
    Out14 : OUT STD_LOGIC;
    Out15 : OUT STD_LOGIC
  );
END AckChecker_BusBlock16IN_2_0;

ARCHITECTURE AckChecker_BusBlock16IN_2_0_arch OF AckChecker_BusBlock16IN_2_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF AckChecker_BusBlock16IN_2_0_arch: ARCHITECTURE IS "yes";
  COMPONENT BusBlock16IN IS
    PORT (
      Bus_16IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Out0 : OUT STD_LOGIC;
      Out1 : OUT STD_LOGIC;
      Out2 : OUT STD_LOGIC;
      Out3 : OUT STD_LOGIC;
      Out4 : OUT STD_LOGIC;
      Out5 : OUT STD_LOGIC;
      Out6 : OUT STD_LOGIC;
      Out7 : OUT STD_LOGIC;
      Out8 : OUT STD_LOGIC;
      Out9 : OUT STD_LOGIC;
      Out10 : OUT STD_LOGIC;
      Out11 : OUT STD_LOGIC;
      Out12 : OUT STD_LOGIC;
      Out13 : OUT STD_LOGIC;
      Out14 : OUT STD_LOGIC;
      Out15 : OUT STD_LOGIC
    );
  END COMPONENT BusBlock16IN;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF AckChecker_BusBlock16IN_2_0_arch: ARCHITECTURE IS "package_project";
BEGIN
  U0 : BusBlock16IN
    PORT MAP (
      Bus_16IN => Bus_16IN,
      Out0 => Out0,
      Out1 => Out1,
      Out2 => Out2,
      Out3 => Out3,
      Out4 => Out4,
      Out5 => Out5,
      Out6 => Out6,
      Out7 => Out7,
      Out8 => Out8,
      Out9 => Out9,
      Out10 => Out10,
      Out11 => Out11,
      Out12 => Out12,
      Out13 => Out13,
      Out14 => Out14,
      Out15 => Out15
    );
END AckChecker_BusBlock16IN_2_0_arch;
