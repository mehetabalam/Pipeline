---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2017 00:33:19
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		OPCODE_I : in STD_LOGIC_VECTOR (3 downto 0); -- opcode
		DATA1_I : in STD_LOGIC_VECTOR (31 downto 0); -- 1st input
		DATA2_I : in STD_LOGIC_VECTOR (31 downto 0); -- 2nd input
		
		ALU_O : out STD_LOGIC_VECTOR (31 downto 0)); -- ALU output
end ALU;

architecture Behavioral of ALU is
begin

    process(CLK_I) -- prcoess clock input
    begin
		case OPCODE_I is
			when "0001" => -- add
				ALU_O <= STD_LOGIC_VECTOR(unsigned(DATA1_I) + unsigned(DATA2_I));
			when "0011" => -- multiply
				ALU_O <= STD_LOGIC_VECTOR(unsigned(DATA1_I(15 downto 0)) * unsigned(DATA2_I(15 downto 0)));
			when "0010" =>  -- add with shift (for branching)
				ALU_O <= STD_LOGIC_VECTOR(unsigned(DATA1_I) + unsigned(shift_left(unsigned(DATA2_I),2)));
			when "0100"=> --compare
				if to_integer(signed(DATA1_I)) < to_integer(unsigned(DATA2_I)) then
					ALU_O <= X"00000001";
				else
					ALU_O <= X"00000000";
				end if;
			when others => -- no operation
				ALU_O <= X"00000000"; -- default
			end case;
    end process;

end Behavioral;
