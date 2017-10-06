---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 13:57:47
-- Design Name: 
-- Module Name: IDEXReg - Behavioral
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

entity IDEXReg is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset	
		IDEX_RA_I : in STD_LOGIC_VECTOR (31 downto 0); -- register A
		IDEX_RB_I : in STD_LOGIC_VECTOR (31 downto 0); -- register B
		IDEX_WBSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- write-back register selection bits
		IDEX_MUXRAC_I : in STD_LOGIC; -- mux control signal to select register A or next PC
		IDEX_MUXRBC_I : in STD_LOGIC; -- mux control signal to select register B or immediate value
		IDEX_MUXWBC_I : in STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back
		IDEX_ALUOP_I : in STD_LOGIC_VECTOR(3 downto 0); -- opcode for ALU
		IDEX_DMWEN_I : in STD_LOGIC; -- write enable for data memory
		IDEX_WBWREN_I : in STD_LOGIC; -- register write-back enable	
        IDEX_IMM32_I : in STD_LOGIC_VECTOR (31 downto 0); -- 32-bit sign-extended immediate value
		IDEX_NPC_I : in STD_LOGIC_VECTOR (31 downto 0); -- next PC value
		IDEX_BC_I : in STD_LOGIC; -- branch condition
		
		IDEX_RA_O : out STD_LOGIC_VECTOR (31 downto 0); -- register A
		IDEX_RB_O : out STD_LOGIC_VECTOR (31 downto 0); -- register B
		IDEX_WBSEL_O : out STD_LOGIC_VECTOR (4 downto 0); -- write-back register selection bits
		IDEX_MUXRAC_O : out STD_LOGIC; -- mux control signal to select register A or next PC
		IDEX_MUXRBC_O : out STD_LOGIC; -- mux control signal to select register B or immediate value
		IDEX_MUXWBC_O : out STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back
		IDEX_ALUOP_O : out STD_LOGIC_VECTOR(3 downto 0); -- opcode for ALU
		IDEX_DMWEN_O : out STD_LOGIC; -- write enable for data memory
		IDEX_WBWREN_O : out STD_LOGIC; -- register write-back enable		
        IDEX_IMM32_O : out STD_LOGIC_VECTOR (31 downto 0); -- 32-bit sign-extended immediate value
		IDEX_NPC_O : out STD_LOGIC_VECTOR (31 downto 0); -- next PC value
		IDEX_BC_O : out STD_LOGIC); -- branch condition
end IDEXReg;

architecture Behavioral of IDEXReg is
begin

    process(CLK_I) -- prcoess clock input
    begin
		if rising_edge(CLK_I) then -- detect rising edge of the clock
			if RST_I = '1' then
				IDEX_RA_O <= X"00000000";
				IDEX_RB_O <= X"00000000";
				IDEX_WBSEL_O <= "00000";
				IDEX_MUXRAC_O <= '0';
				IDEX_MUXRBC_O <= '0';
				IDEX_MUXWBC_O <= '0';
				IDEX_ALUOP_O <= "0000";
				IDEX_DMWEN_O <= '0';
				IDEX_WBWREN_O <= '0';
				IDEX_IMM32_O <= X"00000000";
				IDEX_NPC_O <= X"00000000";
				IDEX_BC_O <= '0';
			else
				IDEX_RA_O <= IDEX_RA_I;
				IDEX_RB_O <= IDEX_RB_I;
				IDEX_WBSEL_O <= IDEX_WBSEL_I;
				IDEX_MUXRAC_O <= IDEX_MUXRAC_I;
				IDEX_MUXRBC_O <= IDEX_MUXRBC_I;
				IDEX_MUXWBC_O <= IDEX_MUXWBC_I;
				IDEX_ALUOP_O <= IDEX_ALUOP_I;
				IDEX_DMWEN_O <= IDEX_DMWEN_I;
				IDEX_WBWREN_O <= IDEX_WBWREN_I;
				IDEX_IMM32_O <= IDEX_IMM32_I;
				IDEX_NPC_O <= IDEX_NPC_I;
				IDEX_BC_O <= IDEX_BC_I;
			end if;
        end if;
    end process;

end Behavioral;
