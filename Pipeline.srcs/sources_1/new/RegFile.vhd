---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.09.2017 20:39:23
-- Design Name: 
-- Module Name: RegFile - Behavioral
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

entity RegFile is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		WEN_I : in STD_LOGIC; -- write enable
		WSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- register selection for writing
		WDATA_I : in STD_LOGIC_VECTOR (31 downto 0); -- data to be written into selected register
		RASEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- register selectin for register A
		RBSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- register selectin for register B
		
		RA_O : out STD_LOGIC_VECTOR (31 downto 0); -- register A
		RB_O : out STD_LOGIC_VECTOR (31 downto 0)); -- register B
end RegFile;

architecture Behavioral of RegFile is
    type regstore_t is array (31 downto 0) of STD_LOGIC_VECTOR(31 downto 0); -- 32 register storage
    signal reg32: regstore_t := (others => X"00000000"); -- initialize all the registers
begin
	
	process(CLK_I) -- prcoess clock input
    begin
		if RST_I = '1' then
			RA_O <= X"00000000";
			RB_O <= X"00000000";
			reg32(1) <= X"12345678"; -- for test
			reg32(2) <= X"00000004"; -- for test
			reg32(11) <= X"00000020"; -- for test
			reg32(31) <= X"5555AAAA"; -- for test
			reg32(5) <= X"98765432"; -- for test
			reg32(7) <= X"00000004"; -- for test
			reg32(6) <= X"00000001"; -- for test
			reg32(4) <= X"00000013"; -- for test
			reg32(3) <= X"99999999"; -- for test
			reg32(8) <= X"44556677"; -- for test
			reg32(9) <= X"00000123"; -- for test
			reg32(10) <= X"FFFFFED7"; -- for test
			reg32(12) <= X"43214321"; -- for test
			reg32(13) <= X"88888888"; -- for test
			reg32(14) <= X"00000010"; -- for test
			reg32(15) <= X"00000020"; -- for test
			reg32(16) <= X"77777777"; -- for test
			reg32(17) <= X"ABCDEF12"; -- for test
			reg32(18) <= X"ABCDEF12"; -- for test
			reg32(19) <= X"BBBBBBBB"; -- for test
			reg32(20) <= X"BBBBBBBC"; -- for test
		else
			RA_O <= reg32(to_integer(unsigned(RASEL_I)));
			RB_O <= reg32(to_integer(unsigned(RBSEL_I)));
			if WEN_I = '1' then -- write into register if write-enable is active
				if WSEL_I = "00000" then
					-- Don't do anything. R0 cannot be written to.
				else
					reg32(to_integer(unsigned(WSEL_I))) <= WDATA_I;
				end if;
			end if;
		end if;
    end process;
	
end Behavioral;
