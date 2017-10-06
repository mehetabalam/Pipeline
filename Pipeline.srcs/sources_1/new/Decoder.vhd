---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 12:20:27
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
    Port(
		CLK_I : in STD_LOGIC; -- system clock
		OPC_I : in STD_LOGIC_VECTOR (5 downto 0); -- opcode
		RTSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- opcode
		RDSEL_I : in STD_LOGIC_VECTOR (4 downto 0); -- opcode
		
		MUXRAC_O : out STD_LOGIC; -- mux control signal to select register A or next PC 
		MUXRBC_O : out STD_LOGIC; -- mux control signal to select register B or immediate value
		MUXWBC_O : out STD_LOGIC; -- mux control signal to select memory data or ALU output for register write-back
		ALUOP_O : out STD_LOGIC_VECTOR(3 downto 0); -- opcode for ALU
		DMWEN_O : out STD_LOGIC; -- write enable for data memory
		WBWREN_O : out STD_LOGIC; -- register write-back enable
		WBSEL_O : out STD_LOGIC_VECTOR(4 downto 0); -- write-back register selection bits
		BC_O : out STD_LOGIC); -- branch condition
end Decoder;

architecture Behavioral of Decoder is
begin

    process(CLK_I) -- prcoess clock input
    begin
		case OPC_I(5 downto 4) is
			when "11" =>   -- memory load/store
				MUXRAC_O <= '0'; -- choose register A
				MUXRBC_O <= '1'; -- choose immedeiate value
				BC_O <= '0'; -- no branching
				WBSEL_O <= RTSEL_I; -- rt selections bits needed to be forwarded to be used for write-back
				case OPC_I(3 downto 0) is
					when "0000" =>  -- load
						DMWEN_O <= '0'; -- deselect write enable for data memory (read enable)
						MUXWBC_O <= '1'; -- select memory data for register write-back
						ALUOP_O <= "0001"; -- select add operation for ALU
						WBWREN_O <= '1'; -- select write enable for register write-back
					when others =>  -- store
						DMWEN_O <= '1'; -- select write enable for data memory
						MUXWBC_O <= '1'; -- select memory data for register write-back
						ALUOP_O <= "0001"; -- select add operation for ALU
						WBWREN_O <= '0'; -- deselect write enable for register write-back
				end case;
			when "00" => -- arithmetic operation
				BC_O <= '0'; -- no branching
				case OPC_I(3 downto 0) is
					when "0001" =>  -- add
						MUXRAC_O <= '0'; -- choose register A
						MUXRBC_O <= '0'; -- choose register B
						WBSEL_O <= RDSEL_I; -- rd selections bits needed to be forwarded to be used for write-back
						DMWEN_O <= '0'; -- deselect write enable for data memory (default)
						MUXWBC_O <= '0'; -- select ALU output for register write-back
						ALUOP_O <= "0001"; -- select add operation for ALU
						WBWREN_O <= '1'; -- select write enable for register write-back
					when "0010" =>  -- add immediate
						MUXRAC_O <= '0'; -- choose register A
						MUXRBC_O <= '1'; -- choose immedeiate value
						WBSEL_O <= RTSEL_I; -- rt selections bits needed to be forwarded to be used for write-back
						DMWEN_O <= '0'; -- deselect write enable for data memory (default)
						MUXWBC_O <= '0'; -- select ALU output for register write-back
						ALUOP_O <= "0001"; -- select add operation for ALU
						WBWREN_O <= '1'; -- select write enable for register write-back
					when "0011" =>  -- multiply
						MUXRAC_O <= '0'; -- choose register A
						MUXRBC_O <= '0'; -- choose register B
						WBSEL_O <= RDSEL_I; -- rd selections bits needed to be forwarded to be used for write-back
						DMWEN_O <= '0'; -- deselect write enable for data memory (default)
						MUXWBC_O <= '0'; -- select ALU output for register write-back
						ALUOP_O <= "0011"; -- select add operation for ALU
						WBWREN_O <= '1'; -- select write enable for register write-back
					when others =>  -- no operation
						MUXRAC_O <= '0';
						MUXRBC_O <= '0';
						WBSEL_O <= "00000";
						MUXRAC_O <= '0';
						MUXRBC_O <= '0';
						MUXWBC_O <= '0';
						ALUOP_O <= "0000";
						DMWEN_O <= '0';
						WBWREN_O <= '0';
				end case;
			when "01" => -- control instructions
				case OPC_I(3 downto 0) is
					when "0010" =>
						MUXRAC_O <= '0'; -- choose register A
						MUXRBC_O <= '0'; -- choose register B
						WBSEL_O <= "00000"; -- default
						MUXWBC_O <= '0'; -- default
						ALUOP_O <= "0010"; -- shifted addition for branching
						DMWEN_O <= '0'; -- default
						WBWREN_O <= '0'; -- default
						BC_O <= '1'; -- branching
					when "0100" =>
						MUXRAC_O <= '0'; -- choose register A
						MUXRBC_O <= '0'; -- choose register B
						WBSEL_O <= RDSEL_I; -- rd selections bits needed to be forwarded to be used for write-back
						MUXWBC_O <= '0'; -- select ALU output for register write-back
						ALUOP_O <= "0100"; -- compare register A with register B
						DMWEN_O <= '0'; -- default
						WBWREN_O <= '1'; -- select write enable for register write-back
						BC_O <= '0'; -- no branching
					when others =>
						MUXRAC_O <= '0'; -- default
						MUXRBC_O <= '0'; -- default
						WBSEL_O <= "00000"; -- default
						MUXWBC_O <= '0'; -- default
						ALUOP_O <= "0000"; -- default
						DMWEN_O <= '0'; -- default
						WBWREN_O <= '0'; -- default
						BC_O <= '0'; -- default
				end case;
			when others =>
				MUXRAC_O <= '0'; -- default
				MUXRBC_O <= '0'; -- default
				WBSEL_O <= "00000"; -- default
				MUXWBC_O <= '0'; -- default
				ALUOP_O <= "0000"; -- default
				DMWEN_O <= '0'; -- default
				WBWREN_O <= '0'; -- default
				BC_O <= '0'; -- default
		end case;
    end process;

end Behavioral;
