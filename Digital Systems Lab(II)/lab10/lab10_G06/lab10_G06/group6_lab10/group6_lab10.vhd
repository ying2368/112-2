library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity group6_lab10 is
    Port ( switch : in STD_LOGIC_VECTOR(9 downto 0);
           LED : out STD_LOGIC_VECTOR(9 downto 0));
end group6_lab10;

architecture Behavioral of group6_lab10 is
begin
    LED <= switch;
end Behavioral;
