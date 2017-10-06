---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 13:45:51
-- Design Name: 
-- Module Name: SignExtender - Behavioral
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
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- for using arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity SignExtender is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		IMM16_I : in STD_LOGIC_VECTOR (15 downto 0); -- 16-bit immediate value
		
        IMM32_O : out STD_LOGIC_VECTOR (31 downto 0)); -- 32-bit sign-extended immediate value
end SignExtender;

architecture Behavioral of SignExtender is
begin

    process(CLK_I) -- prcoess clock input
    begin
		IMM32_O <= STD_LOGIC_VECTOR(resize(signed(IMM16_I), IMM32_O'length));
	end process;
	
end Behavioral;

