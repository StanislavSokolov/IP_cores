----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2020 13:54:31
-- Design Name: 
-- Module Name: IP_AXI_TKC_P0N_3lvl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;	
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BUS_16OUT is
    Port ( 
           BusBlock16OUT : out STD_LOGIC_VECTOR (15 downto 0) := x"FFFF";
           In0 : in STD_LOGIC;
           In1 : in STD_LOGIC;
           In2 : in STD_LOGIC;
           In3 : in STD_LOGIC;
           In4 : in STD_LOGIC;
           In5 : in STD_LOGIC;
           In6 : in STD_LOGIC;
           In7 : in STD_LOGIC;
           In8 : in STD_LOGIC;
           In9 : in STD_LOGIC;
           In10 : in STD_LOGIC;
           In11 : in STD_LOGIC;
           In12 : in STD_LOGIC;
           In13 : in STD_LOGIC;
           In14 : in STD_LOGIC;
           In15 : in STD_LOGIC;
           Mask : in STD_LOGIC_VECTOR (15 downto 0)

		 );
		 
end BUS_16OUT;

architecture Behavioral of BUS_16OUT is

	
begin

BusBlock16OUT(0) <= In0 or Mask(0);
BusBlock16OUT(1) <= In1 or Mask(1);
BusBlock16OUT(2) <= In2 or Mask(2);
BusBlock16OUT(3) <= In3 or Mask(3);
BusBlock16OUT(4) <= In4 or Mask(4);
BusBlock16OUT(5) <= In5 or Mask(5);
BusBlock16OUT(6) <= In6 or Mask(6);
BusBlock16OUT(7) <= In7 or Mask(7);
BusBlock16OUT(8) <= In8 or Mask(8);
BusBlock16OUT(9) <= In9 or Mask(9);
BusBlock16OUT(10) <= In10 or Mask(10);
BusBlock16OUT(11) <= In11 or Mask(11);
BusBlock16OUT(12) <= In12 or Mask(12);
BusBlock16OUT(13) <= In13 or Mask(13);
BusBlock16OUT(14) <= In14 or Mask(14);
BusBlock16OUT(15) <= In15 or Mask(15);

   
end Behavioral;
