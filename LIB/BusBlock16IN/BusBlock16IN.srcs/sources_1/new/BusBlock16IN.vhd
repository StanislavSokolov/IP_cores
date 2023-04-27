----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2020 12:10:48
-- Design Name: 
-- Module Name: BusBlock16IN - Behavioral
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

entity BusBlock16IN is
    Port ( Bus_16IN : in STD_LOGIC_VECTOR (15 downto 0);

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
           Out15 : out STD_LOGIC);
end BusBlock16IN;

architecture BusBlock16IN of BusBlock16IN is
 

begin

        Out0 <= Bus_16IN(0);
        Out1 <= Bus_16IN(1);
        Out2 <= Bus_16IN(2);
        Out3 <= Bus_16IN(3);
        Out4 <= Bus_16IN(4);
        Out5 <= Bus_16IN(5);
        Out6 <= Bus_16IN(6);
        Out7 <= Bus_16IN(7);
        Out8 <= Bus_16IN(8);
        Out9 <= Bus_16IN(9);
        Out10 <= Bus_16IN(10);
        Out11 <= Bus_16IN(11);
        Out12 <= Bus_16IN(12);
        Out13 <= Bus_16IN(13);
        Out14 <= Bus_16IN(14);
        Out15 <= Bus_16IN(15);
    
end BusBlock16IN;
