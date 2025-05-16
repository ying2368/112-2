library ieee;
use ieee.std_logic_1164.all;

entity s1111442_lab08 is
    port (
        clrn, clk, Ldn, Sh, Di: in std_logic;
        D3, D2, D1, D0: in std_logic;
        Q3, Q2, Q1, Q0: out std_logic
    );
end s1111442_lab08;

architecture Hi of s1111442_lab08 is
    signal shift_reg: std_logic_vector(3 downto 0) := "0000";
begin
    process (clk, clrn)
    begin
       if clrn = '0' then
            shift_reg <= "0000"; -- Clear the register when clrn is high
        elsif rising_edge(clk) then
            if Ldn = '1' then -- Load data into the register
                shift_reg <= D3 & D2 & D1 & D0; 
            elsif Sh = '0' then -- Shift operation
                shift_reg <= shift_reg(3 downto 0);
            else 
				shift_reg <= Di & shift_reg(3 downto 1);
            end if;
        end if;
    end process;

    -- Output assignments
    Q3 <= shift_reg(3);
    Q2 <= shift_reg(2);
    Q1 <= shift_reg(1);
    Q0 <= shift_reg(0);
end Hi;
