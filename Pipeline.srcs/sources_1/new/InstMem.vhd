---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2017 21:10:29
-- Design Name: 
-- Module Name: InstMem - Behavioral
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

entity InstMem is
    Port(
		CLK_I : in STD_LOGIC; -- system clock	
		PC_I : in STD_LOGIC_VECTOR (31 downto 0); -- PC input
		
		IR_O : out STD_LOGIC_VECTOR (31 downto 0)); -- IR output
end InstMem;

architecture Behavioral of InstMem is
    type memstore_t is array (1023 downto 0) of STD_LOGIC_VECTOR(31 downto 0); -- 4KB instr. memory
    signal mem32: memstore_t := (others => X"00000000");
begin
	
	mem32(0) <= X"C4410008"; -- for test		sd r1, 8(r2)
	mem32(1) <= X"C57FFFFC"; -- for test		sd r31, -4(r11)
	mem32(2) <= X"C0E50008"; -- for test		ld r5, 8(r7)
	mem32(3) <= X"04861800"; -- for test		add r3, r4, r6
	mem32(4) <= X"052A4000"; -- for test		add r8, r9, r10
	mem32(5) <= X"098D1234"; -- for test		addi r13, r12, 0x1234
	mem32(6) <= X"0DCF8000"; -- for test		mul r16, r14, r15
	mem32(7) <= X"5274A800"; -- for test		slt r21, r19, r20
	mem32(8) <= X"4A32FFFD"; -- for test		beq r17, r18, -3
	
	
    process(CLK_I) -- prcoess PC input
		variable add_arr_cnt : integer;
    begin
		add_arr_cnt := to_integer(unsigned(PC_I(31 downto 2)));

		if add_arr_cnt < 1024 then-- check if the address is within the range
			-- Each instruction lies at a multiple of 4 bytes. So when the new value of PC is proposed,
			-- PC is divided by 4 to use it an index for the ROM memory array. To divide by 4, two
			-- least significant bits are taken off from PC value.
			IR_O <= mem32(to_integer(unsigned(PC_I(31 downto 2))));
		else
			IR_O <= X"00000000";
		end if;
    end process;

end Behavioral;