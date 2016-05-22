----------------------------------------------------------------------------------
--    SK-Synth - FPGA-Synthesizer
--    Copyright (C) 2009  Stefan Kristiansson
--
--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2s_master is
   generic (
		CLK_FREQ : integer := 100000000
	);
	Port (
		reset: in STD_LOGIC;
		clk : in STD_LOGIC;
		mclk : out STD_LOGIC;
		lrclk : out STD_LOGIC;
		sclk : out  STD_LOGIC;
		sdata : out  STD_LOGIC;
		data_l : in  STD_LOGIC_VECTOR (23 downto 0);
		data_r : in  STD_LOGIC_VECTOR (23 downto 0)
	);
end i2s_master;

architecture rtl of i2s_master is
	constant I2S_BIT_WIDTH : integer := 24;
	-- calculate MCLK_ACC_PRESCALER
	constant MCLK_FREQ : integer := 16000000;
	constant MCLK_ACC_WIDTH : integer := 16;	
	constant MCLK_ACC_PRESCALER : integer := integer(real(2**MCLK_ACC_WIDTH)/(real(CLK_FREQ)/real(MCLK_FREQ)));
	-- calculate SCLK_ACC_PRESCALER
	constant SCLK_FREQ : real := (real(MCLK_FREQ)/real(256))*real(I2S_BIT_WIDTH*2);
	constant SCLK_ACC_WIDTH : integer := 16;
	constant SCLK_ACC_PRESCALER : integer := integer(real(2**SCLK_ACC_WIDTH)/(real(MCLK_FREQ)/real(SCLK_FREQ)));

	signal sclk_acc : unsigned(SCLK_ACC_WIDTH - 1 downto 0) := (others => '0') ;
	signal mclk_acc : unsigned(MCLK_ACC_WIDTH - 1 downto 0) := (others => '0');
	
	type states is (start_l,send_l,start_r,send_r);
	signal state : states;
	signal mclk_i : STD_LOGIC;
	signal sclk_i : STD_LOGIC;
	
	signal data_l_i : STD_LOGIC_VECTOR (23 downto 0);
	signal data_r_i : STD_LOGIC_VECTOR (23 downto 0);
begin
	-- generates mclk as defined by MCLK_MHZ
	mclk_gen : process(reset,clk)
	begin
		if reset = '1' then
			mclk_acc <= (others => '0');
		elsif clk'event and clk = '1' then
			mclk_acc <= mclk_acc + to_unsigned(MCLK_ACC_PRESCALER,MCLK_ACC_WIDTH);		
		end if;
	end process mclk_gen;
	mclk_i <= mclk_acc(MCLK_ACC_WIDTH-1);
	
	sclk_gen : process(reset,mclk_i)
	begin
		if reset = '1' then
			sclk_acc <= (others => '0');
		elsif mclk_i'event and mclk_i = '1' then
			sclk_acc <= sclk_acc + to_unsigned(SCLK_ACC_PRESCALER,SCLK_ACC_WIDTH);
		end if;
	end process sclk_gen;
	sclk_i <= sclk_acc(SCLK_ACC_WIDTH-1);
	
	process(reset,sclk_i)
	variable bit_cnt : integer range 0 to I2S_BIT_WIDTH - 1;
	begin
		if reset = '1' then
			data_l_i <= (others => '0');
			data_r_i <= (others => '0');
			bit_cnt := 0;
		elsif sclk_i'event and sclk_i = '0' then
			case (state) is
				when start_l =>
					lrclk <= '0';
					sdata <= data_l_i(23);
					bit_cnt := bit_cnt + 1;
					state <= send_l;
				when send_l =>
					lrclk <= '0';
					sdata <= data_l_i(23);
					data_l_i <= data_l_i(22 downto 0) & '0';
					if bit_cnt = I2S_BIT_WIDTH - 1 then
						bit_cnt := 0;
						state <= start_r;
					else
						bit_cnt := bit_cnt + 1;
						state <= send_l;						
					end if;
				when start_r =>
					lrclk <= '1';
					sdata <= data_r_i(23);
					bit_cnt := bit_cnt + 1;
					state <= send_r;				
				when send_r =>
					sdata <= data_r_i(23);
					data_r_i <= data_r_i(22 downto 0) & '0';
					lrclk <= '1';
					if bit_cnt = I2S_BIT_WIDTH - 1 then
						bit_cnt := 0;
						data_l_i <= data_l;
						data_r_i <= data_r;
						state <= start_l;
					else
						bit_cnt := bit_cnt + 1;
						state <= send_r;						
					end if;
				
				when others =>
					NULL;
			end case;
		end if;
	end process;
	sclk <= sclk_i;
	mclk <= mclk_i;
end rtl;

