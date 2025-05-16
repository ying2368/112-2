library ieee;
use ieee.std_logic_1164.all;


entity counter10 is
port( load,clk,en,clrn : in std_logic;
	Da : in std_logic_vector(3 downto 0);
	Db : in std_logic_vector(2 downto 0);
	Co : out std_logic;
	qa : out std_logic_vector(3 downto 0);
	qb : out std_logic_vector(2 downto 0);