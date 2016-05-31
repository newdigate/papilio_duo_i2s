----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:59 05/30/2016 
-- Design Name: 
-- Module Name:    uart_to_contol_interface - Behavioral 
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

entity uart_to_contol_interface is
    Port ( 
				clk : in STD_LOGIC;
				-- uart received
				rx_enable : in  STD_LOGIC;
				rx_data : in  STD_LOGIC_VECTOR (7 downto 0);
           
				-- control interface
				control_data_in : in  STD_LOGIC_VECTOR (15 downto 0);
				control_data_out : out STD_LOGIC_VECTOR (15 downto 0);
				control_address : out STD_LOGIC_VECTOR (7 downto 0);
				control_read_en : out STD_LOGIC;
				control_write_en : out STD_LOGIC;
				
			  -- uart transmit
           tx_enable : out  STD_LOGIC;
           tx_data : out  STD_LOGIC_VECTOR (7 downto 0));
end uart_to_contol_interface;

architecture Behavioral of uart_to_contol_interface is
type state_type is (idle, cmd_received, addr_received, val1_received, val2_received, fetch_register, transmit_val1, transmit_val2, transmit_val3); 
signal state: state_type := idle;  
signal old_rx_enable : STD_LOGIC;
signal address : STD_LOGIC_VECTOR(7 downto 0);
signal command : STD_LOGIC_VECTOR(7 downto 0);
signal val1 : STD_LOGIC_VECTOR(7 downto 0);
signal response : STD_LOGIC_VECTOR(15 downto 0);
begin

	receiver : process (clk)
	begin	
		if rising_edge(clk) then
			
			old_rx_enable <= rx_enable;
			if state = fetch_register then
				response <= control_data_in;
				state <= transmit_val1;
				tx_data <= control_data_in(15 downto 8);
				tx_enable <= '1';
			elsif state = transmit_val1 then
				state <= transmit_val2;			
				tx_enable <= '0';
			elsif state = transmit_val2 then
				state <= transmit_val3;			
				tx_data <= response(7 downto 0);
				tx_enable <= '1';
			elsif state = transmit_val3 then
				state <= transmit_val3;			
				tx_data <= b"0000_0000";
				tx_enable <= '0';	
			elsif old_rx_enable = '0' and rx_enable = '1' then
				-- rising edge on rx_enabled
				case state is
					when idle =>
						command <= rx_data;
						state <= cmd_received;

					when cmd_received =>
						address <= rx_data;
						state <= addr_received;

					when addr_received =>
						val1 <= rx_data;
						state <= val1_received;
					
					when val1_received =>
						if command = b"0000_0000" then
							-- cmd=0 : write register
							state <= idle;
							control_address <= address;
							control_write_en <= '1';
							control_data_out <= val1 & rx_data;
						elsif command = b"0000_0001" then
							-- cmd=1 : read regiser
							state <= fetch_register;	
							control_address <= address;
							control_read_en <= '1';
						end if;
							
					when others =>
				end case;
			end if; 
			
		end if;
	end process;

end Behavioral;

