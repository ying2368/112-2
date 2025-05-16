library ieee;
use ieee.std_logic_1164.all;

entity JKFF is
port (
	J, K, CLK, Preset, Clear : in std_logic;
	Q : out std_logic
);
end entity JKFF;

architecture ARCH of JKFF is
signal tmp: std_logic;

begin
	process (clear,Preset, CLK)
	begin
		if clear = '0' then tmp <= '0'; 
		elsif Preset = '0' then tmp <= '1'; 
		elsif rising_edge(CLK) then 
			if (J = '0' and K = '0') then
				tmp <= tmp;
			elsif (J = '0' and K = '1') then
				tmp <= '0';
			elsif (J = '1' and K = '0') then
				tmp <= '1';
			else
				tmp <= not tmp;
			end if;
		end if;
	end process;
	
	Q <= tmp;
end ARCH;