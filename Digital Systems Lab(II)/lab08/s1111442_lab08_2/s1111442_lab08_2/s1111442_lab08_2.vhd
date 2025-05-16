library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity s1111442_lab08_2 is
port( clk,clrn : in std_logic;
			Q : out std_logic_vector(1 downto 0)
);
end s1111442_lab08_2;	

architecture hi of s1111442_lab08_2 is
signal Q_reg : unsigned(1 downto 0); -- �ϥ�unsigned���O
begin
    process(clk, clrn)
    begin
        if clrn = '0' then
            Q_reg <= "00";
        elsif rising_edge(clk) then
            Q_reg <= Q_reg + 1; -- �ϥΥ[�k�禡
        end if;
    end process;

    Q <= std_logic_vector(Q_reg); -- �ഫ�^std_logic_vector���O
end hi;