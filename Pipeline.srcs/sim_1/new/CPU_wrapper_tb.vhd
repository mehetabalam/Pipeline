----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.09.2017 23:51:45
-- Design Name: 
-- Module Name: CPU_wrapper_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity CPU_wrapper_tb is
end;

architecture bench of CPU_wrapper_tb is

  component CPU_wrapper
    port (
      CLK : in STD_LOGIC;
      RST : in STD_LOGIC
    );
  end component;

  signal CLK: STD_LOGIC;
  signal RST: STD_LOGIC ;
  
	constant I_clk_period: time := 10 ns;

begin

  uut: CPU_wrapper port map ( CLK => CLK,
                              RST => RST );

  stimulus: process
  begin
		RST <= '1';
		wait for I_clk_period;
		RST <= '0';
		wait;
  end process;
  
  clocking: process
  begin
    CLK <= '0';
    wait for I_clk_period/2;
    CLK <= '1';
    wait for I_clk_period/2;
  end process;  
end;
