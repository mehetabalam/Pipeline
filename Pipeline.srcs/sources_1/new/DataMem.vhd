---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.09.2017 15:09:05
-- Design Name: 
-- Module Name: DataMem - Behavioral
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

entity DataMem is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset
		WREN_I : in STD_LOGIC; -- write-read enable (1: write and 0:read)
		DATA_I : in STD_LOGIC_VECTOR (31 downto 0); -- data to be written into memory location
		ADD_I : in STD_LOGIC_VECTOR (31 downto 0); -- address of the memory location
		
		DATA_O : out STD_LOGIC_VECTOR (31 downto 0)); -- data read from the memory location
end DataMem;

architecture Behavioral of DataMem is
    type memstore_t is array (1023 downto 0) of STD_LOGIC_VECTOR(31 downto 0); -- 4KB data memory
    signal mem32: memstore_t := (others => X"00000000"); -- initialize all the memory locations
begin

    process(CLK_I) -- prcoess clock input
		variable add_arr_cnt : integer;
    begin
		if RST_I = '1' then
			mem32 <= (others => X"00000000"); -- clear memory
			DATA_O <= X"00000000";
		else
		    add_arr_cnt := to_integer(unsigned(ADD_I(31 downto 2)));
			if add_arr_cnt < 1024 then-- check if the address is within the range
				if WREN_I = '1' then -- write into memory if write-enable is active
					mem32(add_arr_cnt) <= DATA_I;
					DATA_O <= X"00000000";
				else -- read from memory location
					DATA_O <= mem32(add_arr_cnt);
				end if;
			else
				DATA_O <= X"00000000";
			end if;
		end if;
    end process;

end Behavioral;
