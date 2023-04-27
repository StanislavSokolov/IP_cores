----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2020 13:37:24
-- Design Name: 
-- Module Name: AckCheckerConcept - Behavioral
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

entity AckCheckerConcept is  
	port(  
		ackTime : in STD_LOGIC_VECTOR(31 downto 0);
		AckPr_en : in std_logic := '0'; 
		AckPr : out std_logic := '0'; 
		acknowledge_in : in std_logic := '1'; 	 
		Clk : in std_logic;  
		currentPr_en : in std_logic := '0';
		currentPr : out std_logic := '0';
		line : in std_logic := '0';  
		Ready : in std_logic := '0'; 
		reset: in std_logic := '0'
	     );
end AckCheckerConcept;

--}} End of automatically maintained section

architecture AckCheckerConcept of AckCheckerConcept is		  


signal acknowledge_line	: STD_LOGIC:=  '0';	 --after noise filter  		
type   acknowledgeState  is (Waiting, check, waiting_strobe_end); 
signal acknowledge  : acknowledgeState := Waiting ; 
signal line_prev	: STD_LOGIC:=  '0';		
signal TimeCnt : STD_LOGIC_VECTOR(7 downto 0):= (others => '0'); 
begin										

	
  process(clk)  --?????? ???????????? ????????? ???????? ?????
  begin	
	  if rising_edge(Clk) then
		  if reset = '1' then 
			  CurrentPr <= '0';
			  AckPr <= '0';	
			  acknowledge <= waiting ;	
		  else 
		      case acknowledge is 	
				  when waiting =>  
					  if line /= line_prev and ready = '1' then 
						 acknowledge <= check;
					  else 
						 if acknowledge_line = '1' and currentPr_en = '1' and Ready = '1' then 
					  	 	CurrentPr <= '1';
					 	 end if;	 
					  end if;	  
						    
					 
				    when check => 	
					   if TimeCnt < ackTime  then 
				  	      TimeCnt <= TimeCnt +1;  
						  if acknowledge_line = '1' then 	
							  acknowledge <= waiting_strobe_end;
						  end if; 
					   else  			   
						  TimeCnt <= (others => '0'); 
					      acknowledge <= waiting; 
						  if AckPr_en = '1' then
						 	 AckPr <= '1';	
						  end if;
					    end if; 
						  
					when waiting_strobe_end => 
						if TimeCnt < ackTime  then 
				  	      TimeCnt <= TimeCnt +1;  
						  if acknowledge_line = '0' then 
							  TimeCnt <= (others => '0'); 
					      	  acknowledge <= waiting;
						  end if;  
					   else 
						  if  currentPr_en = '1' then 
							CurrentPr <= '1';
					 	  end if;  
						  TimeCnt <= (others => '0'); 
					      acknowledge <= waiting;
					   end if; 
					   
					when others =>
				end case;  
	    	end if;					
			line_prev <= line;  
	   end if; 
end process; 

acknowledge_line <= acknowledge_in;
  										  
  
end AckCheckerConcept;

