----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:18 05/30/2016 
-- Design Name: 
-- Module Name:    mixer_level_registers - Behavioral 
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

entity mixer_level_registers is
    Port ( address : in  STD_LOGIC_VECTOR (7 downto 0);
           data : inout  STD_LOGIC_VECTOR (15 downto 0);
           read_enable : in  STD_LOGIC;
           write_enable : in  STD_LOGIC;
			  
			  vol_in1_out1 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in2_out1 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in3_out1 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in4_out1 : out STD_LOGIC_VECTOR (15 downto 0);
			  
			  vol_in1_out2 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in2_out2 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in3_out2 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in4_out2 : out STD_LOGIC_VECTOR (15 downto 0);
			  
			  vol_in1_out3 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in2_out3 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in3_out3 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in4_out3 : out STD_LOGIC_VECTOR (15 downto 0);
			  
			  vol_in1_out4 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in2_out4 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in3_out4 : out STD_LOGIC_VECTOR (15 downto 0);
			  vol_in4_out4 : out STD_LOGIC_VECTOR (15 downto 0));
end mixer_level_registers;

architecture Behavioral of mixer_level_registers is

begin


end Behavioral;

