----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2020 12:31:29
-- Design Name: 
-- Module Name: BusBlock16OUT - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BusBlock16OUT is
    Port ( Bus_16OUT : out STD_LOGIC_VECTOR (15 downto 0);
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
           Mask : in STD_LOGIC_VECTOR (15 downto 0));
end BusBlock16OUT;

architecture BusBlock16OUT of BusBlock16OUT is

begin

Bus_16OUT(0) <= In0 and Mask(0);
Bus_16OUT(1) <= In1 and Mask(1);
Bus_16OUT(2) <= In2 and Mask(2);
Bus_16OUT(3) <= In3 and Mask(3);
Bus_16OUT(4) <= In4 and Mask(4);
Bus_16OUT(5) <= In5 and Mask(5);
Bus_16OUT(6) <= In6 and Mask(6);
Bus_16OUT(7) <= In7 and Mask(7);
Bus_16OUT(8) <= In8 and Mask(8);
Bus_16OUT(9) <= In9 and Mask(9);
Bus_16OUT(10) <= In10 and Mask(10);
Bus_16OUT(11) <= In11 and Mask(11);
Bus_16OUT(12) <= In12 and Mask(12);
Bus_16OUT(13) <= In13 and Mask(13);
Bus_16OUT(14) <= In14 and Mask(14);
Bus_16OUT(15) <= In15 and Mask(15);

end BusBlock16OUT;
