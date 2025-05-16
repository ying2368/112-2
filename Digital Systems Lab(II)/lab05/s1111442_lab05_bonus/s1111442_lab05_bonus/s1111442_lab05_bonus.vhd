library ieee;
use ieee.std_logic_1164.all;

entity s1111442_lab05_bonus is
    port (
        Preset, Clear, Sin, CLK: in std_logic;
        Q: out std_logic_vector(0 to 3)
    );
end entity s1111442_lab05_bonus;

architecture ARCH of s1111442_lab05_bonus is
    component myJKFF is
        port (
            J, K, CLK, Preset, Clear : in std_logic;
            Q : out std_logic
        );
    end component;

    signal tmp : std_logic_vector(0 to 3);
begin
    JKFF0 : myJKFF port map(Sin, not Sin, CLK, Preset, Clear, tmp(0));
    JKFF1 : myJKFF port map(tmp(0), not tmp(0), CLK, Preset, Clear, tmp(1));
    JKFF2 : myJKFF port map(tmp(1), not tmp(1), CLK, Preset, Clear, tmp(2));
    JKFF3 : myJKFF port map(tmp(2), not tmp(2), CLK, Preset, Clear, tmp(3));

    Q <= tmp;
end ARCH;