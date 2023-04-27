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

-- IP VLNV: ssevendenergy.com:user:AckCheckerConcept:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY AckChecker_AckCheckerConcept_0_1 IS
  PORT (
    ackTime : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    AckPr_en : IN STD_LOGIC;
    AckPr : OUT STD_LOGIC;
    acknowledge_in : IN STD_LOGIC;
    Clk : IN STD_LOGIC;
    currentPr_en : IN STD_LOGIC;
    currentPr : OUT STD_LOGIC;
    line : IN STD_LOGIC;
    Ready : IN STD_LOGIC;
    reset : IN STD_LOGIC
  );
END AckChecker_AckCheckerConcept_0_1;

ARCHITECTURE AckChecker_AckCheckerConcept_0_1_arch OF AckChecker_AckCheckerConcept_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF AckChecker_AckCheckerConcept_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT AckCheckerConcept IS
    PORT (
      ackTime : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      AckPr_en : IN STD_LOGIC;
      AckPr : OUT STD_LOGIC;
      acknowledge_in : IN STD_LOGIC;
      Clk : IN STD_LOGIC;
      currentPr_en : IN STD_LOGIC;
      currentPr : OUT STD_LOGIC;
      line : IN STD_LOGIC;
      Ready : IN STD_LOGIC;
      reset : IN STD_LOGIC
    );
  END COMPONENT AckCheckerConcept;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF AckChecker_AckCheckerConcept_0_1_arch: ARCHITECTURE IS "AckCheckerConcept,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF AckChecker_AckCheckerConcept_0_1_arch : ARCHITECTURE IS "AckChecker_AckCheckerConcept_0_1,AckCheckerConcept,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF AckChecker_AckCheckerConcept_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME Clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN AckChecker_Clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 Clk CLK";
BEGIN
  U0 : AckCheckerConcept
    PORT MAP (
      ackTime => ackTime,
      AckPr_en => AckPr_en,
      AckPr => AckPr,
      acknowledge_in => acknowledge_in,
      Clk => Clk,
      currentPr_en => currentPr_en,
      currentPr => currentPr,
      line => line,
      Ready => Ready,
      reset => reset
    );
END AckChecker_AckCheckerConcept_0_1_arch;
