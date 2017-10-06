----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2017 19:29:46
-- Design Name: 
-- Module Name: BranchCond - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BranchCond is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		BC_I : in STD_LOGIC; -- branch condition
		RA_I : in STD_LOGIC_VECTOR (31 downto 0); -- register A
		RB_I : in STD_LOGIC_VECTOR (31 downto 0); -- register B
		
		MUXBC_O : out STD_LOGIC); -- mux control signal to select branch or not
end BranchCond;

architecture Behavioral of BranchCond is
begin

    process(CLK_I) -- prcoess clock input
    begin
		if BC_I = '1' then
			if RA_I = RB_I then
				MUXBC_O <= '1';
			else
				MUXBC_O <= '0';
			end if;
		else
			MUXBC_O <= '0';
		end if;
    end process;

end Behavioral;