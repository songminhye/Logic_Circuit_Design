--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:20 06/20/2018
-- Design Name:   
-- Module Name:   D:/VHDL_PM_2016110660/term/term_tb.vhd
-- Project Name:  term
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: term
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY term_tb IS
END term_tb;
 
ARCHITECTURE behavior OF term_tb IS 
 

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT term
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         c50 : IN  std_logic;
         c100 : IN  std_logic;
         c500 : IN  std_logic;
         Bcoffee : IN  std_logic;
         LED_coffee : OUT  std_logic;
         r50 : OUT  std_logic;
         r100 : OUT  std_logic;
         r500 : OUT  std_logic;
         Gcoffee : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal c50 : std_logic := '0';
   signal c100 : std_logic := '0';
   signal c500 : std_logic := '0';
   signal Bcoffee : std_logic := '0';

 	--Outputs
   signal LED_coffee : std_logic;
   signal r50 : std_logic;
   signal r100 : std_logic;
   signal r500 : std_logic;
   signal Gcoffee : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: term PORT MAP (
          clk => clk,
          reset => reset,
          c50 => c50,
          c100 => c100,
          c500 => c500,
          Bcoffee => Bcoffee,
          LED_coffee => LED_coffee,
          r50 => r50,
          r100 => r100,
          r500 => r500,
          Gcoffee => Gcoffee
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		c50 <= '1'; --50원 투입시 1 아닐시 0
		wait for clk_period;
		c50 <= '0'; --50원 투입시 1 아닐시 0
		wait for clk_period;
		c50 <= '0'; --50원 투입시 1 아닐시 0
		wait for clk_period;
		c50 <= '0'; --50원 투입시 1 아닐시 0
		wait for clk_period;
		
     c50 <= '0'; --클릭펄스를 만들기 위해 반드시 0으로 설정 
      wait;
   end process;
	
	 -- Stimulus process
   proe2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		c100 <= '0'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		c100 <= '1'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		c100 <= '1'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		c100 <= '1'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		c100 <= '0'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		c100 <= '0'; --100원 투입시 1 아닐시 0
		wait for clk_period;
		
		
		
     c100 <= '0'; --클릭펄스를 만들기 위해 반드시 0으로 설정 
      wait;
   end process;
	
		 -- Stimulus process
   proe3: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		c500 <= '0'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		c500 <= '0'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		c500 <= '0'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		c500 <= '0'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		c500 <= '1'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		c500 <= '0'; --500원 투입시 1 아닐시 0
		wait for clk_period;
		
		
		
     c500 <= '0'; --클릭펄스를 만들기 위해 반드시 0으로 설정 
      wait;
   end process;
	
	
		 -- Stimulus process
   proe4: process --Bcoffee 
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*40;

      -- insert stimulus here 
		
		Bcoffee <= '1';
		wait for clk_period;
		Bcoffee <= '0';
		wait;
   end process;
	
	
	proe5: process --reset
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	

      wait for clk_period*40;

      -- insert stimulus here 
		
		wait for clk_period;
		reset <= '1';
   end process;
	
	
END;
