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

entity P0N_3lvl is
    Port ( 
         externalCLK : in std_logic;								 	
		 ready : in std_logic := '0'; 
		 reset : in std_logic := '1';
          
		 deadTime  : in STD_LOGIC_VECTOR(31 downto 0);	
		 minTime  : in STD_LOGIC_VECTOR(31 downto 0);
		 											  
		 er : in std_logic := '0';				  
		 minTime_En  : in std_logic := '1';
		 minTimeEr   : out std_logic := '0'; 	
		 
		 TKin0 : in STD_LOGIC:=  '1';   
		 TKin1 : in STD_LOGIC:=  '1'; 		 										
		 breaking_en : in STD_LOGIC:=  '0';	
		 
		 PWM_out_0 : out std_logic := '1';  
		 PWM_out_1 : out std_logic := '1'; 
		 PWM_out_2 : out std_logic := '1'; 
		 PWM_out_3 : out std_logic := '1'
		 );
		 
end P0N_3lvl;

architecture Behavioral of P0N_3lvl is
	   
signal deadTimeOK	: STD_LOGIC:=  '1';
signal TimeCounter  : STD_LOGIC_VECTOR(31 downto 0):= (others => '0'); 
signal deadTimeCounterReset	: STD_LOGIC:=  '0';							


signal key1	 : STD_LOGIC:=  '1'; 
signal key2	 : STD_LOGIC:=  '1';  
signal key3  : STD_LOGIC:=  '1'; 
signal key4  : STD_LOGIC:=  '1'; 

signal key1_prev  : STD_LOGIC:=  '1'; 
signal key2_prev  : STD_LOGIC:=  '1';  
signal key3_prev  : STD_LOGIC:=  '1'; 
signal key4_prev  : STD_LOGIC:=  '1'; 

type   lineState  is (Closed , tech_Closed, Zero ,Zero_P, Zero_N , P, N); 
signal lineconfig  : lineState := Closed ; 	 											
																								   
signal minTimeOK_high	: STD_LOGIC:=  '1';	
signal minTimeOK_low	: STD_LOGIC:=  '1';	
signal minTimeEr_sig 	: STD_LOGIC:=  '0';		
signal minTimeCounter_high  : STD_LOGIC_VECTOR(31 downto 0):= (others => '0'); 												  
signal minTimeCounter_low  : STD_LOGIC_VECTOR(31 downto 0):= (others => '0');  
signal TKin0_prev	: STD_LOGIC:=  '1';	 
signal TKin1_prev: STD_LOGIC:=  '1';	

signal TKin0_triggered	: STD_LOGIC:=  '1';	 
signal TKin1_triggered: STD_LOGIC:=  '1';

	 	
begin

  	process(externalCLK) 
	begin
	  if rising_edge(externalCLK) then 	
		if er= '0' and ready = '1' and minTimeEr_sig = '0' then
			  if breaking_en = '0' then 
				PWM_out_0 <= key1;
				PWM_out_1 <= key2;
				PWM_out_2 <= key3;	
				PWM_out_3 <= key4;	
			  else 
				PWM_out_0 <= key1;  
				PWM_out_1 <= key2;  	 
				PWM_out_2 <= '1';
				PWM_out_3 <= '1'; 
			  end if;
		  else 
			  PWM_out_0 <= '1';  
			  PWM_out_1 <= '1';  	 
			  PWM_out_2 <= '1';
			  PWM_out_3 <= '1'; 
		  end if;
	  end if;
	end process;
	 
  	process(externalCLK) 
	begin
	  if rising_edge(externalCLK) then 	   
	 
		if  deadTimeCounterReset = '1' then	 
		 	TimeCounter <= (others => '0');
			deadTimeOK <= '0';	
		else  
			if deadTimeCounterReset = '0' then
				if TimeCounter < deadtime then 
					 TimeCounter <= TimeCounter + 1;
				else 
					 deadTimeOK <= '1'; 
	   	   		end if;  
   	   		end if;   
		end if;				 
	  end if;
	end process;	
	

process(externalCLK)  --?????? ???????????? ????????? ???????? ?????
  begin	
	  if rising_edge(externalCLK) then
 
		
		if reset = '1' then	   --error reset
			minTimeEr	<= '0';	
			minTimeEr_sig <= '0'; 
			lineConfig <= closed;			
		else	
			
			key1_prev<= key1; 
			key2_prev<= key2;
			key3_prev<= key3;
			key4_prev<= key4; 
			TKin0_prev <= TKin0; 
			TKin1_prev <= TKin1;
			
			
			
			if breaking_en = '0' then 
				
			if (key1 = '0' and key1_prev = '1') or (key2 = '0' and key2_prev = '1') then 
				minTimeCounter_high <= (others => '0');		
				minTimeOK_high <= '0';
			else   
				if	minTimeCounter_high  < minTime then	 
					minTimeCounter_high  <= minTimeCounter_high  + 1;
				else 
					minTimeOK_high <= '1'; 
				end if;		
				
				if ((key1 = '1' and key1_prev = '0') or (key2 = '1' and key2_prev = '0')) and minTimeOK_high = '0' and minTime_en = '1' then 
				 	minTimeEr <=  '1';	
				    minTimeEr_sig <= '1';			  
				end if;
			end if;	
			
			if (key3 = '0' and key3_prev = '1') or (key4 = '0' and key4_prev = '1') then 
				minTimeCounter_low <= (others => '0');	   
				minTimeOK_low  <= '0';
			else 					 
				if	minTimeCounter_low   < minTime then	 
					minTimeCounter_low   <= minTimeCounter_low   + 1;
				else 
					minTimeOK_low  <= '1'; 
				end if;	 
				
				if ((key3 = '1' and key3_prev = '0') or (key4 = '1' and key4_prev = '0')) and minTimeOK_low  = '0' and minTime_en = '1' then 
				 	minTimeEr <=  '1';	
				    minTimeEr_sig <= '1';		  
				end if;
			end if;
			
			
				 case lineConfig is  
					when closed => 		
						 key4 <= '1';  
						 key3 <= '1';
						 key2 <= '1';
						 key1 <= '1'; 

						 if deadTimeOk = '1' and er = '0' and ready = '1' then	
							 if TKin0 = '0' and TKin1 = '0' then
								lineConfig <= zero;
								deadTimeCounterReset <= '1';
							 elsif TKin0 = '0' and TKin1 = '1' then 
								lineConfig <= P;
								deadTimeCounterReset <= '1';
							 elsif TKin0 = '1' and TKin1 = '0' then 
								lineConfig <= N;
								deadTimeCounterReset <= '1';
							 end if;  
						 else 
							 deadTimeCounterReset <= '0'; 
						 end if;
						 
					 when tech_closed => 		
						 key4 <= '1';  
						 key3 <= '1';
						 key2 <= '1';
						 key1 <= '1'; 

						 if deadTimeOk = '1' and er = '0' and ready = '1' and deadTimeCounterReset = '0' then	
							 if TKin0 = '0' and TKin1 = '0' then
								lineConfig <= zero;
								deadTimeCounterReset <= '1';
							 elsif TKin0 = '0' and TKin1 = '1' then 
								lineConfig <= P;
								deadTimeCounterReset <= '1';
							 elsif TKin0 = '1' and TKin1 = '0' then 
								lineConfig <= N;
								deadTimeCounterReset <= '1';
							 end if;
						 else 
							 deadTimeCounterReset <= '0'; 
						 end if;
						 
					 when zero => 	 
						 key4 <= '1';  
						 key3 <= '0';
						 key2 <= '0';
						 key1 <= '1'; 

						 deadTimeCounterReset <= '1'; 
						 
						 if TKin0 = '1' and TKin1 = '1' then
							lineConfig <= closed; 
						 else 	 
							 if  TKin0 = '1' or TKin1 = '1' then
									if TKin0 = '0' and TKin1 = '1' then
										lineConfig <= zero_P;
									elsif TKin0 = '1' and TKin1 = '0' then
									  	lineConfig <= zero_N; 
									end if;	
									TKin0_triggered <= TKin0; 
									TKin1_triggered <= TKin1;
							  end if;		  
						 end if;	  
						  
					 when zero_P => 
						 key4 <= '1';  
						 key3 <= '1';
						 key2 <= '0';
						 key1 <= '1'; 

						 if TKin0 = '1' and TKin1 = '1' then
							lineConfig <= closed;  
							deadTimeCounterReset <= '1';
						 else 	 
							 
							 if deadTimeOk = '1' then 
								 if ((TKin0_triggered /= TKin0) or (TKin1_triggered /= TKin1)) then	   		 							 
									 deadTimeCounterReset <= '1'; 							 	 	
									 lineConfig <= tech_closed;
								 else
									 if  TKin0 = '0' and TKin1 = '1' then
										lineConfig <= P; 
									    deadTimeCounterReset <= '1'; 
									 elsif 	TKin0 = '0' and TKin1 = '0' then
										lineConfig <= zero; 
										deadTimeCounterReset <= '1';
								     end if;
								 end if;
							 else 
							    deadTimeCounterReset <= '0'; 
							 end if;  
						  end if;
						  
					 when zero_N =>
						 key4 <= '1';  
						 key3 <= '0';
						 key2 <= '1';
						 key1 <= '1';	 

						 if TKin0 = '1' and TKin1 = '1' then
							lineConfig <= closed;  
							deadTimeCounterReset <= '1';
						 else 
							if deadTimeOk = '1' then
								 if ((TKin0_triggered /= TKin0) or (TKin1_triggered /= TKin1))  then								 
									 deadTimeCounterReset <= '1'; 							 	 	
									 lineConfig <= tech_closed;
								 else
									if  TKin0 = '1' and TKin1 = '0' then
										lineConfig <= N; 
								    	deadTimeCounterReset <= '1'; 
									 elsif 	TKin0 = '0' and TKin1 = '0' then
										lineConfig <= zero; 
									    deadTimeCounterReset <= '1'; 
									 end if;
								 end if;
							 else 
								deadTimeCounterReset <= '0'; 
							 end if; 						 
						 end if;
						 
					  when P =>  
						 key4 <= '1';  
						 key3 <= '1';
						 key2 <= '0';
						 key1 <= '0'; 	 

						 deadTimeCounterReset <= '1'; 
						 if TKin0 = '1' and TKin1 = '1' then
							lineConfig <= closed;  
						 else 	
							 if TKin0 = '0' and TKin1 = '0' then
								lineConfig <= zero_P;  
								TKin0_triggered <= TKin0; 
								TKin1_triggered <= TKin1;
							 else 
								if TKin0 = '1' and TKin1 = '0'  then 	   
								  TKin0_triggered <= TKin0; 
								  TKin1_triggered <= TKin1;	
								  lineConfig <= tech_closed;
								end if;
							 end if; 
						  end if;
						  
					  when N =>  
						 key4 <= '0';  
						 key3 <= '0';
						 key2 <= '1';
						 key1 <= '1'; 	

						 deadTimeCounterReset <= '1'; 
						 if TKin0 = '1' and TKin1 = '1' then
							lineConfig <= closed;  
						 else 	
							 if TKin0 = '0' and TKin1 = '0' then
								lineConfig <= zero_N;  
								TKin0_triggered <= TKin0; 
							    TKin1_triggered <= TKin1;
							 else 
								if TKin0 = '0' and TKin1 = '1'  then 			
								  TKin0_triggered <= TKin0; 
								  TKin1_triggered <= TKin1;
								  lineConfig <= tech_closed;
								end if;
							  end if; 
						  end if;
						  
						 when others => 
							 deadTimeCounterReset <= '1'; 

							 key4 <= '1';  
							 key3 <= '1';
							 key2 <= '1';
							 key1 <= '1'; 							 
						 end case;
			else 
				
				if (key1 = '0' and key1_prev = '1')  then 
					minTimeCounter_high <= (others => '0');		
					minTimeOK_high <= '0';
				else   
					if	minTimeCounter_high  < minTime then	 
						minTimeCounter_high  <= minTimeCounter_high  + 1;
					else 
						minTimeOK_high <= '1'; 
					end if;	  
					
					if (key1 = '1' and key1_prev = '0')  and minTimeOK_high = '0' and minTime_en = '1' then 
						minTimeEr <=  '1';	
					    minTimeEr_sig <= '1';			   
					end if;							 
				end if;
	   		
				if (key2 = '0' and key2_prev = '1') then 
					minTimeCounter_low <= (others => '0');	   
					minTimeOK_low  <= '0';
			    else   
					if	minTimeCounter_low   < minTime then	 
						minTimeCounter_low   <= minTimeCounter_low   + 1;
					else 
						minTimeOK_low  <= '1'; 
					end if;	 
							
					if (key2 = '1' and key2_prev = '0') and minTimeOK_low  = '0' and minTime_en = '1' then 
					 	minTimeEr <=  '1';	
					    minTimeEr_sig <= '1';		  
					end if;
				 end if; 
						
		         key1 <= TKin0; -- for mintime counter signals should be in different pairs. 
				 key2 <= TKin1; --Real outputs are goes to key1 and key2 outputs in process higher. This for counter only.
			  	 key3 <= '1'; -- for mintime counter signals should be in different pairs. 
				 key4 <= '1'; --Real outputs are goes to key1 and key2 outputs in process higher. This for counter only.
				 end if;
		   end if;	
		end if;
   end process;	
   
end Behavioral;
