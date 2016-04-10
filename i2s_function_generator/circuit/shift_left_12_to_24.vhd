----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:22:21 04/09/2016 
-- Design Name: 
-- Module Name:    shift_left_12_to_24 - Behavioral 
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
use IEEE.NUMERIC_STD.Unsigned;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left_12_to_24 is
    Port ( data_in : in  STD_LOGIC_VECTOR (11 downto 0);
           data_out : out  STD_LOGIC_VECTOR (23 downto 0));
end shift_left_12_to_24;

architecture Behavioral of shift_left_12_to_24 is
signal signed_out : signed(23 downto 0);
begin
   data_out <= STD_LOGIC_VECTOR(to_signed(to_integer(unsigned(data_in))-2048, 12)) & "000000000000";
	--data_out <= "0" & data_in & "00000000000";
end Behavioral;

