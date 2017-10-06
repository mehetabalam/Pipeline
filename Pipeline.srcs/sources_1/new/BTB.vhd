----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.09.2017 12:10:50
-- Design Name: 
-- Module Name: BTB - Behavioral
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

-- for using arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity BTB is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		RST_I : in STD_LOGIC; -- system reset	
		PC_I : in STD_LOGIC_VECTOR (31 downto 0); -- PC input
		
		PREDTARADD_O : out STD_LOGIC_VECTOR (31 downto 0); -- Predicted target address
		HIT_O : out STD_LOGIC; -- read hit
		PREDICTION_O : out STD_LOGIC_VECTOR (1 downto 0)); -- prediction bits
end BTB;

architecture Behavioral of BTB is
	type btbstore_t is array (1023 downto 0) of STD_LOGIC_VECTOR(54 downto 0); -- 1K entry in BTB
    signal btbentry: btbstore_t := (others => "00" & X"0000000000000"); -- initialize all the memory locations
begin

	process(CLK_I) -- prcoess clock input
		variable index : integer;
		variable tag : integer;
	begin
		index := to_integer(unsigned(PC_I(11 downto 2)));
		tag := to_integer(unsigned(PC_I(31 downto 12)));
		
		if RST_I = '1' then
			HIT_O <= '0';
			PREDTARADD_O <= X"00000000";
			PREDICTION_O <= "00";
		else
			if (btbentry(index)(0) = '1') and (unsigned((btbentry(index)(53 downto 34))) = tag) then
				HIT_O <= '1';
				PREDTARADD_O <= btbentry(index)(33 downto 2);
				PREDICTION_O <= btbentry(index)(1 downto 0);
			else
				HIT_O <= '0';
				PREDTARADD_O <= X"00000000";
				PREDICTION_O <= "00";
			end if;
		end if;
	end process;
end Behavioral;
