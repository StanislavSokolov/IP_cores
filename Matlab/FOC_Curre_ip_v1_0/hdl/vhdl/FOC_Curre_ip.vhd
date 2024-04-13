-- -------------------------------------------------------------
-- 
-- File Name: D:\Projects\Matlab\IPcores\test\hdlsrc\hdlcoderFocCurrentFixptHdl\FOC_Curre_ip.vhd
-- Created: 2023-12-01 13:25:45
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: -1
-- Target subsystem base rate: -1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FOC_Curre_ip
-- Source Path: FOC_Curre_ip
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FOC_Curre_ip IS
  PORT( IPCORE_CLK                        :   IN    std_logic;  -- ufix1
        IPCORE_RESETN                     :   IN    std_logic;  -- ufix1
        AXI4_Lite_ACLK                    :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARESETN                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_AWADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_AWVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_WDATA                   :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_WSTRB                   :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_Lite_WVALID                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_BREADY                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_ARVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_RREADY                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_AWREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_WREADY                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_BRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_BVALID                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_ARREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_RDATA                   :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_RRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_RVALID                  :   OUT   std_logic  -- ufix1
        );
END FOC_Curre_ip;


ARCHITECTURE rtl OF FOC_Curre_ip IS

  -- Component Declarations
  COMPONENT FOC_Curre_ip_reset_sync
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset_in                        :   IN    std_logic;  -- ufix1
          reset_out                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT FOC_Curre_ip_dut
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          dut_enable                      :   IN    std_logic;  -- ufix1
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

  COMPONENT FOC_Curre_ip_axi_lite
    PORT( reset                           :   IN    std_logic;
          AXI4_Lite_ACLK                  :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARESETN               :   IN    std_logic;  -- ufix1
          AXI4_Lite_AWADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_AWVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_WDATA                 :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_WSTRB                 :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_Lite_WVALID                :   IN    std_logic;  -- ufix1
          AXI4_Lite_BREADY                :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_ARVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_RREADY                :   IN    std_logic;  -- ufix1
          read_ip_timestamp               :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          read_Phase_Voltage_0            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          read_Phase_Voltage_1            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          read_Phase_Voltage_2            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          AXI4_Lite_AWREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_WREADY                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_BRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_BVALID                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_ARREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_RDATA                 :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_RRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_RVALID                :   OUT   std_logic;  -- ufix1
          write_axi_enable                :   OUT   std_logic;  -- ufix1
          write_Current_Command           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          write_Electrical_Position       :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          write_Phase_Current_0           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          write_Phase_Current_1           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En12
          reset_internal                  :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : FOC_Curre_ip_reset_sync
    USE ENTITY work.FOC_Curre_ip_reset_sync(rtl);

  FOR ALL : FOC_Curre_ip_dut
    USE ENTITY work.FOC_Curre_ip_dut(rtl);

  FOR ALL : FOC_Curre_ip_axi_lite
    USE ENTITY work.FOC_Curre_ip_axi_lite(rtl);

  -- Signals
  SIGNAL reset                            : std_logic;
  SIGNAL ip_timestamp                     : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL paramCurrentControlI_sig         : signed(15 DOWNTO 0);  -- sfix16_En3
  SIGNAL paramCurrentControlP_sig         : signed(15 DOWNTO 0);  -- sfix16_En8
  SIGNAL reset_cm                         : std_logic;  -- ufix1
  SIGNAL reset_internal                   : std_logic;  -- ufix1
  SIGNAL reset_before_sync                : std_logic;  -- ufix1
  SIGNAL write_axi_enable                 : std_logic;  -- ufix1
  SIGNAL write_Current_Command            : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL write_Phase_Current_0            : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL write_Phase_Current_1            : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL write_Electrical_Position        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL Phase_Voltage_0_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Phase_Voltage_1_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Phase_Voltage_2_sig              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL AXI4_Lite_BRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_Lite_RDATA_tmp              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL AXI4_Lite_RRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2

BEGIN
  u_FOC_Curre_ip_reset_sync_inst : FOC_Curre_ip_reset_sync
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset_in => reset_before_sync,  -- ufix1
              reset_out => reset
              );

  u_FOC_Curre_ip_dut_inst : FOC_Curre_ip_dut
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              dut_enable => write_axi_enable,  -- ufix1
              Current_Command => write_Current_Command,  -- sfix16_En12
              Phase_Current_0 => write_Phase_Current_0,  -- sfix16_En12
              Phase_Current_1 => write_Phase_Current_1,  -- sfix16_En12
              Electrical_Position => write_Electrical_Position,  -- sfix16_En12
              paramCurrentControlI => std_logic_vector(paramCurrentControlI_sig),  -- sfix16_En3
              paramCurrentControlP => std_logic_vector(paramCurrentControlP_sig),  -- sfix16_En8
              ce_out => ce_out_sig,  -- ufix1
              Phase_Voltage_0 => Phase_Voltage_0_sig,  -- sfix16_En8
              Phase_Voltage_1 => Phase_Voltage_1_sig,  -- sfix16_En8
              Phase_Voltage_2 => Phase_Voltage_2_sig  -- sfix16_En8
              );

  u_FOC_Curre_ip_axi_lite_inst : FOC_Curre_ip_axi_lite
    PORT MAP( reset => reset,
              AXI4_Lite_ACLK => AXI4_Lite_ACLK,  -- ufix1
              AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,  -- ufix1
              AXI4_Lite_AWADDR => AXI4_Lite_AWADDR,  -- ufix16
              AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,  -- ufix1
              AXI4_Lite_WDATA => AXI4_Lite_WDATA,  -- ufix32
              AXI4_Lite_WSTRB => AXI4_Lite_WSTRB,  -- ufix4
              AXI4_Lite_WVALID => AXI4_Lite_WVALID,  -- ufix1
              AXI4_Lite_BREADY => AXI4_Lite_BREADY,  -- ufix1
              AXI4_Lite_ARADDR => AXI4_Lite_ARADDR,  -- ufix16
              AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,  -- ufix1
              AXI4_Lite_RREADY => AXI4_Lite_RREADY,  -- ufix1
              read_ip_timestamp => std_logic_vector(ip_timestamp),  -- ufix32
              read_Phase_Voltage_0 => Phase_Voltage_0_sig,  -- sfix16_En8
              read_Phase_Voltage_1 => Phase_Voltage_1_sig,  -- sfix16_En8
              read_Phase_Voltage_2 => Phase_Voltage_2_sig,  -- sfix16_En8
              AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,  -- ufix1
              AXI4_Lite_WREADY => AXI4_Lite_WREADY,  -- ufix1
              AXI4_Lite_BRESP => AXI4_Lite_BRESP_tmp,  -- ufix2
              AXI4_Lite_BVALID => AXI4_Lite_BVALID,  -- ufix1
              AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,  -- ufix1
              AXI4_Lite_RDATA => AXI4_Lite_RDATA_tmp,  -- ufix32
              AXI4_Lite_RRESP => AXI4_Lite_RRESP_tmp,  -- ufix2
              AXI4_Lite_RVALID => AXI4_Lite_RVALID,  -- ufix1
              write_axi_enable => write_axi_enable,  -- ufix1
              write_Current_Command => write_Current_Command,  -- sfix16_En12
              write_Electrical_Position => write_Electrical_Position,  -- sfix16_En12
              write_Phase_Current_0 => write_Phase_Current_0,  -- sfix16_En12
              write_Phase_Current_1 => write_Phase_Current_1,  -- sfix16_En12
              reset_internal => reset_internal  -- ufix1
              );

  ip_timestamp <= unsigned'(X"89CE7E3D");

  reset_cm <=  NOT IPCORE_RESETN;

  reset_before_sync <= reset_cm OR reset_internal;

  AXI4_Lite_BRESP <= AXI4_Lite_BRESP_tmp;

  AXI4_Lite_RDATA <= AXI4_Lite_RDATA_tmp;

  AXI4_Lite_RRESP <= AXI4_Lite_RRESP_tmp;

END rtl;

