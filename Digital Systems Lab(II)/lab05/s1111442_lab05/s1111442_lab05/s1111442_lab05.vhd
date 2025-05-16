library ieee;
use ieee.std_logic_1164.all;

entity s1111442_lab05 is
Port( CLK,Din: in std_logic;
		s: out std_logic_vector(0 to 7) );
end ;

architecture hi of s1111442_lab05 is
component dff
port( CLK,D : in std_logic;
		Q : out std_logic );
end component;
signal s0: std_logic_vector(0 to 7);
begin
	d0: dff port map(CLK,Din,s0(0));
	adder_gen: for i in 0 to 6 generate
		d: dff port map(CLK,s0(i),s0(i+1));
	end generate;
	
	s<=s0;
end hi;