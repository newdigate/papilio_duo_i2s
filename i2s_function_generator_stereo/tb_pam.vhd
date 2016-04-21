-- Vhdl test bench created from schematic C:\Users\Chamberlain\Documents\EDA\Papilio_Audio_Modular\Papilio_Audio_Modular\Papilio_Audio_Modular_top.sch - Sun Apr 10 13:09:30 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Papilio_Audio_Modular_top_Papilio_Audio_Modular_top_sch_tb IS
END Papilio_Audio_Modular_top_Papilio_Audio_Modular_top_sch_tb;
ARCHITECTURE behavioral OF 
      Papilio_Audio_Modular_top_Papilio_Audio_Modular_top_sch_tb IS 

   COMPONENT Papilio_Audio_Modular_top
   PORT( CLK	:	IN	STD_LOGIC; 
          ARDUINO_22	:	OUT	STD_LOGIC; 
          ARDUINO_24	:	OUT	STD_LOGIC; 
          ARDUINO_26	:	OUT	STD_LOGIC; 
          ARDUINO_28	:	OUT	STD_LOGIC;	
			 ARDUINO_23 : 	IN 	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL ARDUINO_22	:	STD_LOGIC;
   SIGNAL ARDUINO_24	:	STD_LOGIC;
   SIGNAL ARDUINO_26	:	STD_LOGIC;
   SIGNAL ARDUINO_28	:	STD_LOGIC;
	SIGNAL ARDUINO_23 : 	STD_LOGIC;
	
BEGIN

   UUT: Papilio_Audio_Modular_top PORT MAP(
		CLK => CLK, 
		ARDUINO_22 => ARDUINO_22, 
		ARDUINO_24 => ARDUINO_24, 
		ARDUINO_26 => ARDUINO_26, 
		ARDUINO_28 => ARDUINO_28,
		ARDUINO_23 => ARDUINO_23
   );

-- *** Test Bench - User Defined Section ***
   clk_driver : PROCESS
   BEGIN
		CLK <= '0';
		WAIT FOR 15.625 ns;
		CLK <= '1';
		WAIT FOR 15.625 ns;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

   i2s_slave_reset : PROCESS
   BEGIN
		ARDUINO_23 <= '1';
		WAIT FOR 50 ns;
		ARDUINO_23 <= '0';
		WAIT;
   END PROCESS;

END;
