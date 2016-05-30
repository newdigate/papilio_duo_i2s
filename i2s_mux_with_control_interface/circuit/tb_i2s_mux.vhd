--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:08:55 05/29/2016
-- Design Name:   
-- Module Name:   C:/Users/Chamberlain/Documents/EDA/papilio_duo_i2s/i2s_mux/i2s_mux/tb_i2s_mux.vhd
-- Project Name:  i2s_mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: i2s_mux2
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
 
ENTITY tb_i2s_mux IS
END tb_i2s_mux;
 
ARCHITECTURE behavior OF tb_i2s_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT i2s_mux2
    PORT(
         LRCLK : IN  std_logic;
         BCLK : IN  std_logic;
         SDATAIN_1 : IN  std_logic;
         SDATAIN_2 : IN  std_logic;
         SDATAOUT_1 : OUT  std_logic;
         SDATAOUT_2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal LRCLK : std_logic := '0';
   signal BCLK : std_logic := '0';
   signal SDATAIN_1 : std_logic := '0';
   signal SDATAIN_2 : std_logic := '0';

 	--Outputs
   signal SDATAOUT_1 : std_logic;
   signal SDATAOUT_2 : std_logic;

   -- Clock period definitions
   constant LRCLK_period : time := 20833.3 ns;
   constant BCLK_period : time := 325.521 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: i2s_mux2 PORT MAP (
          LRCLK => LRCLK,
          BCLK => BCLK,
          SDATAIN_1 => SDATAIN_1,
          SDATAIN_2 => SDATAIN_2,
          SDATAOUT_1 => SDATAOUT_1,
          SDATAOUT_2 => SDATAOUT_2
        );

   -- Clock process definitions
   LRCLK_process :process
   begin
		LRCLK <= '0';
		wait for LRCLK_period/2;
		LRCLK <= '1';
		wait for LRCLK_period/2;
   end process;
 
	BCLK_process :process
   begin
		BCLK <= '0';
		wait for BCLK_period/2;
		
		BCLK <= '1';
		wait for BCLK_period/2;	
	end process;
	
   DATA_process :process
   begin
		-- least significant bit of last word...
		SDATAIN_1 <= '0';
		SDATAIN_2 <= '0';
		wait for BCLK_period;
		
		SDATAIN_1 <= '1';
		SDATAIN_2 <= '0';
		wait for BCLK_period;

		SDATAIN_1 <= '0';
		SDATAIN_2 <= '0';
		wait for BCLK_period;
		
		SDATAIN_1 <= '0';
		SDATAIN_2 <= '0';
		wait for BCLK_period;

		SDATAIN_1 <= '1';
		SDATAIN_2 <= '0';
		wait for BCLK_period;		

		SDATAIN_1 <= '0';
		SDATAIN_2 <= '0';
		wait for BCLK_period;		

		SDATAIN_1 <= '0';
		SDATAIN_2 <= '0';
		wait for BCLK_period;		

	
		wait for BCLK_period*25;
		wait for BCLK_period*32;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for LRCLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
