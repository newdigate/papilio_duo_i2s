----------------------------------------------------------------------
--                                                                  --
--  THIS VHDL SOURCE CODE IS PROVIDED UNDER THE GNU PUBLIC LICENSE  --
--                                                                  --
----------------------------------------------------------------------
--                                                                  --
--    Filename            : waveform_gen.vhd                        --
--                                                                  --
--    Author              : Simon Doherty                           --
--                          Senior Design Consultant                --
--                          www.zipcores.com                        --
--                                                                  --
--    Date last modified  : 23.10.2008                              --
--                                                                  --
--    Description         : NCO / Periodic Waveform Generator       --
--                                                                  --
----------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity fn_generator_stereo_sine is

port (

  -- system signals
  clk         : in  std_logic;
  reset       : in  std_logic;
  
  -- NCO frequency control
  phase_inc_left   : in  std_logic_vector(31 downto 0);
  phase_inc_right  : in  std_logic_vector(31 downto 0);
  
  -- Output waveforms
  sin_out_left     : out std_logic_vector(15 downto 0);
  sin_out_right    : out std_logic_vector(15 downto 0)
    );
end entity;


architecture rtl of fn_generator_stereo_sine is


component sincos_lut_14addr_16
port (
  clk      : in  std_logic;
  addr     : in  std_logic_vector(13 downto 0);
  addr_1     : in  std_logic_vector(13 downto 0);
  sin_out  : out std_logic_vector(15 downto 0);
  sin_out_1  : out std_logic_vector(15 downto 0)
);
end component;


signal  phase_acc_left     : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal  lut_addr_left      : std_logic_vector(13 downto 0) := "00000000000000";
signal  lut_addr_reg_left  : std_logic_vector(13 downto 0) := "00000000000000";
signal  sin_out_reg_left  : std_logic_vector(15 downto 0) :=  "0000000000000000";

signal  phase_acc_right     : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal  lut_addr_right      : std_logic_vector(13 downto 0) := "00000000000000";
signal  lut_addr_reg_right  : std_logic_vector(13 downto 0) := "00000000000000";
signal  sin_out_reg_right  : std_logic_vector(15 downto 0) :=  "0000000000000000";

begin


--------------------------------------------------------------------------
-- Phase accumulator increments by 'phase_inc' every clock cycle        --
-- Output frequency determined by formula: Phase_inc = (Fout/Fclk)*2^32 --
-- E.g. Fout = 36MHz, Fclk = 100MHz,  Phase_inc = 36*2^32/100           --
-- Frequency resolution is 100MHz/2^32 = 0.00233Hz                      --
--------------------------------------------------------------------------

phase_acc_reg: process(clk, reset)
begin
  if reset = '0' then
    phase_acc_left <= (others => '0');
    phase_acc_right <= (others => '0');
  elsif rising_edge(clk) then
    phase_acc_left <= unsigned(phase_acc_left) + unsigned(phase_inc_left); 
	 phase_acc_right <= unsigned(phase_acc_right) + unsigned(phase_inc_right); 
  end if;
end process phase_acc_reg;

---------------------------------------------------------------------
-- use top 12-bits of phase accumulator to address the SIN/COS LUT --
---------------------------------------------------------------------

lut_addr_left <= phase_acc_left(31 downto 18);
lut_addr_right <= phase_acc_right(31 downto 18);

----------------------------------------------------------------------
-- SIN/COS LUT is 4096 by 12-bit ROM                                --
-- 12-bit output allows sin/cos amplitudes between 2047 and -2047   --
-- (-2048 not used to keep the output signal perfectly symmetrical) --
-- Phase resolution is 2Pi/4096 = 0.088 degrees                     --
----------------------------------------------------------------------

lut: sincos_lut_14addr_16

  port map (

    clk       => clk,
    addr      => lut_addr_left,
    addr_1    => lut_addr_right,
    sin_out   => sin_out_left,
	 sin_out_1 => sin_out_right);

---------------------------------
-- Hide the latency of the LUT --
---------------------------------

delay_regs: process(clk)
begin
  if rising_edge(clk) then
    lut_addr_reg_left <= lut_addr_left;
	 lut_addr_reg_right <= lut_addr_right;
  end if;
end process delay_regs;
    
end rtl;