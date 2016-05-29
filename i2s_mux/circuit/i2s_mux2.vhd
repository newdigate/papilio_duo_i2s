----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:50 05/28/2016 
-- Design Name: 
-- Module Name:    i2s_mux2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.SIGNED;
use IEEE.NUMERIC_STD.UNSIGNED;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2s_mux2 is
    Port ( LRCLK : in  STD_LOGIC;
           BCLK : in  STD_LOGIC;
           SDATAIN_1 : in  STD_LOGIC;
           SDATAIN_2 : in  STD_LOGIC;
           SDATAOUT_1 : out  STD_LOGIC;
           SDATAOUT_2 : out  STD_LOGIC);
end i2s_mux2;

architecture Behavioral of i2s_mux2 is

signal count : integer range 0 to 63 := 63;
signal in_1 : STD_LOGIC_VECTOR ( 23 downto 0 ) := b"0000_0000_0000_0000_0000_0000";
signal in_2 : STD_LOGIC_VECTOR ( 23 downto 0 ) := b"0000_0000_0000_0000_0000_0000";
signal in_3 : STD_LOGIC_VECTOR ( 23 downto 0 ) := b"0000_0000_0000_0000_0000_0000";
signal in_4 : STD_LOGIC_VECTOR ( 23 downto 0 ) := b"0000_0000_0000_0000_0000_0000";

signal old_lr_clock : STD_LOGIC;

signal out_1 : STD_LOGIC_VECTOR ( 41 downto 0 ) := b"00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000";
signal out_2 : STD_LOGIC_VECTOR ( 41 downto 0 ) := b"00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000";
signal out_3 : STD_LOGIC_VECTOR ( 41 downto 0 ) := b"00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000";
signal out_4 : STD_LOGIC_VECTOR ( 41 downto 0 ) := b"00_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000";

signal vol_in1_out1 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in2_out1 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in3_out1 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in4_out1 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";

signal vol_in1_out2 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in2_out2 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in3_out2 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in4_out2 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";

signal vol_in1_out3 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in2_out3 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in3_out3 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in4_out3 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";

signal vol_in1_out4 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in2_out4 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in3_out4 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";
signal vol_in4_out4 : std_logic_vector( 15 downto 0) := b"1000_0000_0000_0000";

begin

	counter : process(BCLK,LRCLK) 
	begin
		
		if rising_edge(BCLK) then
			old_lr_clock <= LRCLK;
			if (LRCLK /= old_lr_clock) then
				count <= 0;
			elsif (count = 63) then
				count <= count;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	transmit_stage : process (BCLK, LRCLK)
	begin
		
		if falling_edge(BCLK) then
			if LRCLK = '1' and count < 25 then
				SDATAOUT_1 <= out_1(40 - count);
				SDATAOUT_2 <= out_3(40 - count);
			elsif count < 25 then
				SDATAOUT_1 <= out_2(40 - count);
				SDATAOUT_2 <= out_4(40 - count);
			end if;

		end if;
		
	end process;
	
	calculate_stage : process(LRCLK)
	begin
		
		if rising_edge(LRCLK) then
			out_1 <= STD_LOGIC_VECTOR( 	(unsigned(in_1) * unsigned(vol_in1_out1)) 
												+ 	(unsigned(in_2) * unsigned(vol_in2_out1)) 
												+ 	(unsigned(in_3) * unsigned(vol_in3_out1)) 
												+ 	(unsigned(in_4) * unsigned(vol_in4_out1))) & b"00";

			out_2 <= STD_LOGIC_VECTOR( 	(unsigned(in_1) * unsigned(vol_in1_out2)) 
												+ 	(unsigned(in_2) * unsigned(vol_in2_out2)) 
												+ 	(unsigned(in_3) * unsigned(vol_in3_out2)) 
												+ 	(unsigned(in_4) * unsigned(vol_in4_out2))) & b"00";

			out_3 <= STD_LOGIC_VECTOR( 	(unsigned(in_1) * unsigned(vol_in1_out3)) 
												+ 	(unsigned(in_2) * unsigned(vol_in2_out3)) 
												+ 	(unsigned(in_3) * unsigned(vol_in3_out3)) 
												+ 	(unsigned(in_4) * unsigned(vol_in4_out3))) & b"00";

			out_4 <= STD_LOGIC_VECTOR( 	(unsigned(in_1) * unsigned(vol_in1_out4)) 
												+ 	(unsigned(in_2) * unsigned(vol_in2_out4)) 
												+ 	(unsigned(in_3) * unsigned(vol_in3_out4)) 
												+ 	(unsigned(in_4) * unsigned(vol_in4_out4))) & b"00";


		end if;
		
	end process;
	
	inputstage: process(BCLK, LRCLK) 
	begin
		
		if rising_edge(BCLK) then	
			
			case count is
				when 0 => 
					if LRCLK = '1' then
						in_1(23) <= SDATAIN_1;
						in_3(23) <= SDATAIN_2;
					else
						in_2(23) <= SDATAIN_1;
						in_4(23) <= SDATAIN_2;
					end if;
					
				when 1 => 
					if LRCLK = '1' then
						in_1(22) <= SDATAIN_1;
						in_3(22) <= SDATAIN_2;
					else
						in_2(22) <= SDATAIN_1;
						in_4(22) <= SDATAIN_2;
					end if;
					
				when 2 => 
					if LRCLK = '1' then
						in_1(21) <= SDATAIN_1;
						in_3(21) <= SDATAIN_2;
					else
						in_2(21) <= SDATAIN_1;
						in_4(21) <= SDATAIN_2;						
					end if;
					
				when 3 => 
					if LRCLK = '1' then
						in_1(20) <= SDATAIN_1;
						in_3(20) <= SDATAIN_2;
					else
						in_2(20) <= SDATAIN_1;
						in_4(20) <= SDATAIN_2;						
					end if;
					
				when 4 => 
					if LRCLK = '1' then
						in_1(19) <= SDATAIN_1;
						in_3(19) <= SDATAIN_2;
					else
						in_2(19) <= SDATAIN_1;
						in_4(19) <= SDATAIN_2;						
					end if;
					
				when 5 => 
					if LRCLK = '1' then
						in_1(18) <= SDATAIN_1;
						in_3(18) <= SDATAIN_2;
					else
						in_2(18) <= SDATAIN_1;
						in_4(18) <= SDATAIN_2;						
					end if;
					
				when 6 => 
					if LRCLK = '1' then
						in_1(17) <= SDATAIN_1;
						in_3(17) <= SDATAIN_2;
					else
						in_2(17) <= SDATAIN_1;
						in_4(17) <= SDATAIN_2;						
					end if;
					
				when 7 => 
					if LRCLK = '1' then
						in_1(16) <= SDATAIN_1;
						in_3(16) <= SDATAIN_2;
					else
						in_2(16) <= SDATAIN_1;
						in_4(16) <= SDATAIN_2;						
					end if;
					
				when 8 => 
					if LRCLK = '1' then
						in_1(15) <= SDATAIN_1;
						in_3(15) <= SDATAIN_2;
					else
						in_2(15) <= SDATAIN_1;
						in_4(15) <= SDATAIN_2;						
					end if;
					
				when 9 => 
					if LRCLK = '1' then
						in_1(14) <= SDATAIN_1;
						in_3(14) <= SDATAIN_2;
					else
						in_2(14) <= SDATAIN_1;
						in_4(14) <= SDATAIN_2;						
					end if;
					
				when 10 => 
					if LRCLK = '1' then
						in_1(13) <= SDATAIN_1;
						in_3(13) <= SDATAIN_2;
						
					else
						in_2(13) <= SDATAIN_1;
						in_4(13) <= SDATAIN_2;						
					end if;

				when 11 => 
					if LRCLK = '1' then
						in_1(12) <= SDATAIN_1;
						in_3(12) <= SDATAIN_2;
					else
						in_2(12) <= SDATAIN_1;
						in_4(12) <= SDATAIN_2;						
					end if;
					
				when 12 => 
					if LRCLK = '1' then
						in_1(11) <= SDATAIN_1;
						in_3(11) <= SDATAIN_2;
					else
						in_2(11) <= SDATAIN_1;
						in_4(11) <= SDATAIN_2;						
					end if;
					
				when 13 => 
					if LRCLK = '1' then
						in_1(10) <= SDATAIN_1;
						in_3(10) <= SDATAIN_2;
					else
						in_2(10) <= SDATAIN_1;
						in_4(10) <= SDATAIN_2;						
					end if;
					
				when 14 => 
					if LRCLK = '1' then
						in_1(9) <= SDATAIN_1;
						in_3(9) <= SDATAIN_2;
					else
						in_2(9) <= SDATAIN_1;
						in_4(9) <= SDATAIN_2;						
					end if;
					
				when 15 =>
					if LRCLK = '1' then
						in_1(8) <= SDATAIN_1;
						in_3(8) <= SDATAIN_2;
						else
						in_2(8) <= SDATAIN_1;
						in_4(8) <= SDATAIN_2;						
					end if;
					
				when 16 => 
					if LRCLK = '1' then
						in_1(7) <= SDATAIN_1;
						in_3(7) <= SDATAIN_2;
					else
						in_2(7) <= SDATAIN_1;
						in_4(7) <= SDATAIN_2;						
					end if;
					
				when 17 => 
					if LRCLK = '1' then
						in_1(6) <= SDATAIN_1;
						in_3(6) <= SDATAIN_2;
					else
						in_2(6) <= SDATAIN_1;
						in_4(6) <= SDATAIN_2;						
					end if;
					
				when 18 =>
					if LRCLK = '1' then
						in_1(5) <= SDATAIN_1;
						in_3(5) <= SDATAIN_2;
					else
						in_2(5) <= SDATAIN_1;
						in_4(5) <= SDATAIN_2;						
					end if;
					
				when 19 => 
					if LRCLK = '1' then
						in_1(4) <= SDATAIN_1;
						in_3(4) <= SDATAIN_2;
					else
						in_2(4) <= SDATAIN_1;
						in_4(4) <= SDATAIN_2;						
					end if;
					
				when 20 => 
					if LRCLK = '1' then
						in_1(3) <= SDATAIN_1;
						in_3(3) <= SDATAIN_2;
					else
						in_2(3) <= SDATAIN_1;
						in_4(3) <= SDATAIN_2;						
					end if;
					
				when 21 => 
					if LRCLK = '1' then
						in_1(2) <= SDATAIN_1;
						in_3(2) <= SDATAIN_2;
					else
						in_2(2) <= SDATAIN_1;
						in_4(2) <= SDATAIN_2;						
					end if;
					
				when 22 => 
					if LRCLK = '1' then
						in_1(1) <= SDATAIN_1;
						in_3(1) <= SDATAIN_2;
					else
						in_2(1) <= SDATAIN_1;
						in_4(1) <= SDATAIN_2;						
					end if;
					
				when 23 => 
					if LRCLK = '1' then
						in_1(0) <= SDATAIN_1;
						in_3(0) <= SDATAIN_2;
					else
						in_2(0) <= SDATAIN_1;
						in_4(0) <= SDATAIN_2;						
					end if;
					
				when others => --left_in1 <= left_in1;
			end case;
		end if;
		
	end process;

end Behavioral;

