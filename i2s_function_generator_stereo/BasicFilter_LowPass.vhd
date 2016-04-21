----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:32 04/17/2016 
-- Design Name: 
-- Module Name:    BasicFilter_LowPass - Behavioral 
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
use IEEE.NUMERIC_STD.Signed;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BasicFilter_LowPass is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (23 downto 0);
           data_out : out  STD_LOGIC_VECTOR (23 downto 0));
end BasicFilter_LowPass;

architecture Behavioral of BasicFilter_LowPass is
	signal old_data_in0 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in1 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in2 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in3 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in4 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in5 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal old_data_in6 : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal out_data : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal out_data_assigned : STD_LOGIC := '0';
begin

	tick : process(clk, data_in) is
	begin
		
		if rising_edge(clk) then
			

			--old_data_in6 <= old_data_in5;
			
			if (out_data_assigned = '0') then
				out_data <= B"0000_0000_0000_0000_0000_0000";	
				data_out <= B"0000_0000_0000_0000_0000_0000";		
				out_data_assigned <= '1';	
				
				old_data_in0 <= ( others => '0');
				old_data_in1 <= ( others => '0');
				old_data_in2 <= ( others => '0');
				old_data_in3 <= ( others => '0');
				old_data_in4 <= ( others => '0');
				old_data_in5 <= ( others => '0');	
				
			else
				out_data <= std_logic_vector( (signed(data_in)/8) + (signed(old_data_in0)/8) + (signed(old_data_in1)/8) + (signed(old_data_in2)/8) 
													+ (signed(old_data_in3)/8) + (signed(old_data_in4)/8) + (signed(old_data_in5)/8) + (signed(out_data)/8) );
													
													
				old_data_in0 <= data_in;
				old_data_in1 <= old_data_in0;
				old_data_in2 <= old_data_in1;
				old_data_in3 <= old_data_in2;
				old_data_in4 <= old_data_in3;
				old_data_in5 <= old_data_in4;	
													
				data_out <= out_data;
			end if;
			
			
			
		end if;
		
	end process;
	

end Behavioral;

