---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2017 16:00:23
-- Design Name: 
-- Module Name: PCUnit - Behavioral
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

entity PC is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		PC_I : in STD_LOGIC_VECTOR (31 downto 0); -- PC input
		
		PC_O : out STD_LOGIC_VECTOR (31 downto 0)); -- PC value
end PC;

architecture Behavioral of PC is
begin
    
	process(CLK_I) -- prcoess clock input
    begin
		if rising_edge(CLK_I) then -- detect rising edge of the clock
			if RST_I = '1' then 
				PC_O <= X"00000000"; -- point PC to the start of instruction memory during reset
			else
				PC_O <= PC_I;                 
			end if;
		end if;
    end process;

end Behavioral;
