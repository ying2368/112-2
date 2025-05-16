Library IEEE;
use IEEE.std_logic_1164.all;

Entity work3 is
	Port (a0,a1,a2,a3,a4,a5,a6,a7,en: in std_logic;
		  y0,y1,y2: out std_logic);
end work3;

Architecture arch of work3 is
Begin
	y2 <= en and (a4 or a5 or a6 or a7);
	y1 <= en and (a2 or a3 or a6 or a7);
	y0 <= en and (a1 or a5 or a3 or a7);
end arch;
