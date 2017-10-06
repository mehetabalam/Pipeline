---------------------------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2017 17:33:27
-- Design Name: 
-- Module Name: Mux2to1 - Behavioral
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

entity Mux2to1 is
    Port(
		DATA1_I : in STD_LOGIC_VECTOR (31 downto 0); -- input 1
		DATA2_I : in STD_LOGIC_VECTOR (31 downto 0); -- input 2
		C_I : in STD_LOGIC; -- control input for mux
		
		DATA_O : out STD_LOGIC_VECTOR (31 downto 0)); -- output
end Mux2to1;

architecture Behavioral of Mux2to1 is
begin

    DATA_O <= DATA1_I when C_I = '0' else DATA2_I;

end Behavioral;
