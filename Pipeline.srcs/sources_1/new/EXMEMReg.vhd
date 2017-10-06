---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 14:32:57
-- Design Name: 
-- Module Name: EXMEMReg - Behavioral
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

entity EXMEMReg is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		EXMEM_WBSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- rt/rd selection bits
		EXMEM_MUXWBC_I : in STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back
		EXMEM_DMWEN_I : in STD_LOGIC; -- write enable for data memory
		EXMEM_WBWREN_I : in STD_LOGIC; -- register write-back enable
		EXMEM_ALUOUT_I : in STD_LOGIC_VECTOR (31 downto 0); -- output from ALU
		EXMEM_RB_I : in STD_LOGIC_VECTOR (31 downto 0); -- register B
		EXMEM_MUXBC_I : in STD_LOGIC; -- mux control signal to select branch or not
		
		EXMEM_WBSEL_O : out STD_LOGIC_VECTOR (4 downto 0); -- rt/rd selection bits
		EXMEM_MUXWBC_O : out STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back
		EXMEM_DMWEN_O : out STD_LOGIC; -- write enable for data memory
		EXMEM_WBWREN_O : out STD_LOGIC; -- register write-back enable
		EXMEM_ALUOUT_O : out STD_LOGIC_VECTOR (31 downto 0); -- ALU output
		EXMEM_RB_O : out STD_LOGIC_VECTOR (31 downto 0); -- register B
		EXMEM_MUXBC_O : out STD_LOGIC); -- mux control signal to select branch or not
		
end EXMEMReg;

architecture Behavioral of EXMEMReg is
begin

    process(CLK_I) -- prcoess clock input
    begin
		if rising_edge(CLK_I) then -- detect rising edge of the clock
			if RST_I = '1' then
				EXMEM_WBSEL_O <= "00000";
				EXMEM_MUXWBC_O <= '0';
				EXMEM_DMWEN_O <= '0';
				EXMEM_WBWREN_O <= '0';
				EXMEM_ALUOUT_O <= X"00000000";
				EXMEM_RB_O <= X"00000000";
				EXMEM_MUXBC_O <= '0';
			else
				EXMEM_WBSEL_O <= EXMEM_WBSEL_I;
				EXMEM_MUXWBC_O <= EXMEM_MUXWBC_I;
				EXMEM_DMWEN_O <= EXMEM_DMWEN_I;
				EXMEM_WBWREN_O <= EXMEM_WBWREN_I;
				EXMEM_ALUOUT_O <= EXMEM_ALUOUT_I;
				EXMEM_RB_O <= EXMEM_RB_I;
				EXMEM_MUXBC_O <= EXMEM_MUXBC_I;
			end if;
        end if;
    end process;
            
end Behavioral;
