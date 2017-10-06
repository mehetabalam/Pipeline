---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 18:02:35
-- Design Name: 
-- Module Name: MEMWBReg - Behavioral
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

entity MEMWBReg is
    Port( 
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		MEMWB_MUXWBC_I : in STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back	
		MEMWB_MEMDATA_I : in STD_LOGIC_VECTOR (31 downto 0); -- data fetched from memory
		MEMWB_WBWREN_I : in STD_LOGIC; -- register wirte-back write enable
		MEMWB_WBSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- write-back register selection bits
		MEMWB_ALUOUT_I : in STD_LOGIC_VECTOR (31 downto 0); -- output from ALU
		
		MEMWB_MUXWBC_O : out STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back		
		MEMWB_MEMDATA_O : out STD_LOGIC_VECTOR (31 downto 0); -- data fetched from memory
		MEMWB_WBWREN_O : out STD_LOGIC; -- register wirte-back write enable
		MEMWB_WBSEL_O : out STD_LOGIC_VECTOR (4 downto 0); -- write-back register selection bits
		MEMWB_ALUOUT_O : out STD_LOGIC_VECTOR (31 downto 0)); -- ALU output
end MEMWBReg;

architecture Behavioral of MEMWBReg is
begin

    process(CLK_I) -- prcoess clock input
    begin
		if rising_edge(CLK_I) then -- detect rising edge of the clock
			if RST_I = '1' then
				MEMWB_MUXWBC_O <= '0';
				MEMWB_MEMDATA_O <= X"00000000";
				MEMWB_WBWREN_O <= '0';
				MEMWB_WBSEL_O <= "00000";
				MEMWB_ALUOUT_O <= X"00000000";
			else
				MEMWB_MUXWBC_O <= MEMWB_MUXWBC_I;
				MEMWB_MEMDATA_O <= MEMWB_MEMDATA_I;
				MEMWB_WBWREN_O <= MEMWB_WBWREN_I;
				MEMWB_WBSEL_O <= MEMWB_WBSEL_I;
				MEMWB_ALUOUT_O <= MEMWB_ALUOUT_I;
			end if;
        end if;
    end process;

end Behavioral;
