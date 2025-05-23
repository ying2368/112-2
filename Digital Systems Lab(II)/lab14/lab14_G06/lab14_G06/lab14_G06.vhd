library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab14_G06 is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           hex0 : out STD_LOGIC_VECTOR (6 downto 0);
           hex1 : out STD_LOGIC_VECTOR (6 downto 0));
end lab14_G06;

architecture Behavioral of lab14_G06 is
    signal count : INTEGER range 0 to 99 := 0;
    signal btn_reg1, btn_reg2 : STD_LOGIC := '1';
    signal btn_state : STD_LOGIC := '1';
    signal clk_div : INTEGER := 0;
    constant DIV_FACTOR : INTEGER := 5000000;
    function to_seven_segment(input : INTEGER) return STD_LOGIC_VECTOR is
    begin
        case input is
            when 0 => return "1000000"; 
            when 1 => return "1111001"; 
            when 2 => return "0100100"; -- 2
            when 3 => return "0110000"; -- 3
            when 4 => return "0011001"; -- 4
            when 5 => return "0010010"; -- 5
            when 6 => return "0000010"; -- 6
            when 7 => return "1111000"; -- 7
            when 8 => return "0000000"; -- 8
            when 9 => return "0010000"; -- 9
            when others => return "1111111"; -- error
        end case;
    end function;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            clk_div <= clk_div + 1;
            if clk_div = DIV_FACTOR then
                clk_div <= 0;
                btn_reg1 <= btn;
                btn_reg2 <= btn_reg1;
                
                if btn_reg2 = '0' and btn_state = '1' then
                    if count = 99 then
                        count <= 0;
                    else
                        count <= count + 1;
                    end if;
                end if;
                
                btn_state <= btn_reg2;
            end if;
        end if;
    end process;

    hex0 <= to_seven_segment(count mod 10); 
    hex1 <= to_seven_segment(count / 10); 

end Behavioral;
