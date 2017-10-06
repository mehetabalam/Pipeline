---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 15:50:18
-- Design Name: 
-- Module Name: PCAdder - Behavioral
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

entity PCAdder is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		PC_I : in STD_LOGIC_VECTOR (31 downto 0); -- PC value
		
		PCPLUS4_O : out STD_LOGIC_VECTOR (31 downto 0)); -- PC+4 value
end PCAdder;

architecture Behavioral of PCAdder is
begin

	process(CLK_I) -- prcoess clock input
	begin
		PCPLUS4_O <= STD_LOGIC_VECTOR(unsigned(PC_I) + 4);
	end process;

end Behavioral;