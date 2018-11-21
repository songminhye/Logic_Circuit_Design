library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity term is

  port ( clk, reset : in std_logic;
         c50, c100, c500, Bcoffee : in std_logic; 
         LED_coffee, r50, r100, r500 : out std_logic;
         Gcoffee : out std_logic ) ; 

end term;

architecture Behavioral of term is


type states is ( won_0, won_50, won_100, won_150, won_200, won_250, won_300,
                 won_350, won_400, won_450, won_500, won_550, won_600, won_650 ); -- µ¿Àü 

signal won_state: states;  

begin

    
      state : process( clk,reset,c50,c100,c500,Bcoffee ) 
          begin
         if reset = '1' then
            won_state <= won_0;
            LED_coffee <= '0';
            r50  <= '0';
            r100 <= '0';
            r500 <= '0';
            Gcoffee <= '0';
         
         elsif (clk'event and clk = '1') then
           
         case won_state is
               
             when won_0 => 
	               if (c50 = '1') then 
                     won_state <= won_50;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_100;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_500;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  
	               else
                     won_state  <= won_0;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
               
           	  when won_50 => 
                 if (c50 = '1') then 
                     won_state <= won_100;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_150;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_550;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  
	               else
                     won_state  <= won_50;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
               
                  
      	     when won_100 => 
                  if (c50 = '1') then 
                     won_state <= won_150;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_200;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_600;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  
	               else
                     won_state  <= won_100;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
                    
                  
              	when won_150 => 
	                if (c50 = '1') then 
                     won_state <= won_200;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_250;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=  won_650;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  
	              else
                     won_state  <= won_150;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
               
              	when won_200 => 
	                if (c50 = '1') then 
                     won_state <= won_250;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_300;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=  won_200;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
                  
	              else
                     won_state  <= won_200;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
               
                                 
              	when won_250 => 
	               if (c50 = '1') then 
                     won_state <= won_300;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <=  won_350;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
							
                  elsif (c500  = '1') then    
                     won_state  <=   won_250;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
                  
	               else
                     won_state  <= won_250;
                     LED_coffee <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
                  end if;
               
                  
               when won_300 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_0;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_350;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_400;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_300;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_300;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <=   '0';                     
                     Gcoffee <= '0';
                  end if;   
                  
              when won_350 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_50;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_400;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_450;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_350;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_350;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <=   '0';                     
                     Gcoffee <= '0';
                  end if;  
                  
                  
              when won_400 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_100;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_450;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_500;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_400;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_400;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
                                 
             when won_450 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_150;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_500;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_550;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_450;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_450;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
                  
               when won_500 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_200;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_550;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_600;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_500;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_500;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
						
					
             when won_550 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_250;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_600;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_650;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_550;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_550;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
						
             when won_600 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_300;
                     LED_coffee  <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_650;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_600;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '1';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <= won_600;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_600;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
						

             when won_650 =>      
                  if (Bcoffee = '1') then
                     won_state   <= won_350;
                     LED_coffee  <= '0';
                     r50  <= '0';  
                     r100 <= '0';
                     r500  <= '0';
                     Gcoffee <= '1';
							
                  elsif (c50 = '1') then 
                     won_state  <= won_650;
                     LED_coffee <= '1';
                     r50  <= '1';  
                     r100 <= '0';
                     r500 <= '0';    
                     Gcoffee <= '0';
							
                  elsif (c100 = '1') then    
                     won_state  <= won_650;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '1';    
                     r500 <= '0';
                     Gcoffee <= '0';
							
                  elsif (c500 = '1') then    
                     won_state  <=   won_650;  
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '1';                     
                     Gcoffee <= '0';
							
                  else
                     won_state  <= won_650;
                     LED_coffee <= '1';
                     r50  <= '0';  
                     r100 <= '0';
                     r500 <= '0';                     
                     Gcoffee <= '0';
                  end if;  
                  
               end case;
           end if;
      end process;

end Behavioral;