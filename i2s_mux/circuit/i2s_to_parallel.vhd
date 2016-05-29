----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:57 05/28/2016 
-- Design Name: 
-- Module Name:    i2s_to_parallel - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2s_to_parallel is
    Port ( LRCLK : in  STD_LOGIC;
           BCLK : in  STD_LOGIC;
           SDATA_IN : in  STD_LOGIC;
           LEFT_OUT : out  STD_LOGIC_VECTOR (23 downto 0);
           LEFT_OUT_strobe : out  STD_LOGIC;
           RIGHT_OUT : out  STD_LOGIC_VECTOR (23 downto 0);
           RIGHT_OUT_strobe : out  STD_LOGIC);
end i2s_to_parallel;

architecture Behavioral of i2s_to_parallel is

begin


end Behavioral;

