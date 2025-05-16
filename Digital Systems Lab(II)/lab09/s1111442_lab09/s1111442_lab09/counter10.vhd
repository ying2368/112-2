library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity counter10 is
	port( load, en, clrn, clk : in std_logic;
		D : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(3 downto 0);
		Co : out std_logic
	);
end counter10;

architecture behavioral of counter10 is
    signal counter_reg : std_logic_vector(3 downto 0) := "0000";
begin
    process (clk, clrn)
    begin
        if clrn = '1' then
            counter_reg <= "0000";
        elsif rising_edge(clk) then
            if en = '1' then
                if load = '1' then
                    counter_reg <= D;
                else
                    counter_reg <= counter_reg + 1;
                end if;
            end if;
        end if;
		
		if counter_reg = "1000" then
			Co <= '1';
		else
			Co <= '0';
        end if;
        
		if counter_reg = "1010" then
			counter_reg <= "0000";
        end if;
    end process;

    Q <= counter_reg;
end behavioral;