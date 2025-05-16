library ieee;
use ieee.std_logic_1164.all;

entity dff is
port( CLK,D : in std_logic;
		Q : out std_logic );
end dff;

architecture a of dff is
signal SUM1, CY1: std_logic;
begin
	process(CLK)
	begin
		if CLK' event AND CLK='1' then
			Q<=D;
		end if;
	end process;
end a;