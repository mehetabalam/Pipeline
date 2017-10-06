---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 11:25:50
-- Design Name: 
-- Module Name: IFIDReg - Behavioral
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

entity IFIDReg is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		IFID_NPC_I : in STD_LOGIC_VECTOR (31 downto 0); -- next PC value
		IFID_IR_I : in STD_LOGIC_VECTOR (31 downto 0); -- instruction register input
		
		IFID_NPC_O : out STD_LOGIC_VECTOR (31 downto 0); -- next PC value
		IFID_RS_O : out STD_LOGIC_VECTOR (4 downto 0); -- rs selection bits
		IFID_RT_O : out STD_LOGIC_VECTOR (4 downto 0); -- rt selection bits
		IFID_RD_O : out STD_LOGIC_VECTOR (4 downto 0); -- rd selection bits
		IFID_OPC_O : out STD_LOGIC_VECTOR (5 downto 0); -- opcode selection bits
		IFID_IMM_O : out STD_LOGIC_VECTOR (15 downto 0)); -- immediate value
end IFIDReg;

architecture Behavioral of IFIDReg is
begin

    process(CLK_I) -- prcoess clock input
    begin
		if rising_edge(CLK_I) then -- detect rising edge of the clock
			if RST_I = '1' then
				IFID_NPC_O <= X"00000000";
				IFID_RS_O <= "00000";
				IFID_RT_O <= "00000";
				IFID_RD_O <= "00000";
				IFID_OPC_O <= "000000";
				IFID_IMM_O <= X"0000";
			else
				IFID_NPC_O <= IFID_NPC_I;
				IFID_RS_O <= IFID_IR_I(25 downto 21);
				IFID_RT_O <= IFID_IR_I(20 downto 16);
				IFID_RD_O <= IFID_IR_I(15 downto 11);
				IFID_OPC_O <= IFID_IR_I(31 downto 26);
				IFID_IMM_O <= IFID_IR_I(15 downto 0);
			end if;
        end if;
    end process;

end Behavioral;
