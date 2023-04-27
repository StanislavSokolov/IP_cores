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

entity BUS_16IN is
    Port ( 
           BusBlock16IN : in STD_LOGIC_VECTOR (15 downto 0);
           
           Out0 : out STD_LOGIC;
           Out1 : out STD_LOGIC;
           Out2 : out STD_LOGIC;
           Out3 : out STD_LOGIC;
           Out4 : out STD_LOGIC;
           Out5 : out STD_LOGIC;
           Out6 : out STD_LOGIC;
           Out7 : out STD_LOGIC;
           Out8 : out STD_LOGIC;
           Out9 : out STD_LOGIC;
           Out10 : out STD_LOGIC;
           Out11 : out STD_LOGIC;
           Out12 : out STD_LOGIC;
           Out13 : out STD_LOGIC;
           Out14 : out STD_LOGIC;
           Out15 : out STD_LOGIC
		 );
		 
end BUS_16IN;

architecture Behavioral of BUS_16IN is

	
begin

        Out0 <= BusBlock16IN(0);
        Out1 <= BusBlock16IN(1);
        Out2 <= BusBlock16IN(2);
        Out3 <= BusBlock16IN(3);
        Out4 <= BusBlock16IN(4);
        Out5 <= BusBlock16IN(5);
        Out6 <= BusBlock16IN(6);
        Out7 <= BusBlock16IN(7);
        Out8 <= BusBlock16IN(8);
        Out9 <= BusBlock16IN(9);
        Out10 <= BusBlock16IN(10);
        Out11 <= BusBlock16IN(11);
        Out12 <= BusBlock16IN(12);
        Out13 <= BusBlock16IN(13);
        Out14 <= BusBlock16IN(14);
        Out15 <= BusBlock16IN(15);
   
end Behavioral;
