library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab14_G06_bonus is
    Port ( clk : in STD_LOGIC;
           btn_up : in STD_LOGIC;
           btn_down : in STD_LOGIC;
           btn_zero : in STD_LOGIC;
           hex0 : out STD_LOGIC_VECTOR (6 downto 0);
           hex1 : out STD_LOGIC_VECTOR (6 downto 0));
end lab14_G06_bonus;

architecture Behavioral of lab14_G06_bonus is
    signal count : INTEGER range 0 to 99 := 0;
    signal btn_up_reg1, btn_up_reg2 : STD_LOGIC := '1';
    signal btn_down_reg1, btn_down_reg2 : STD_LOGIC := '1';
    signal btn_zero_reg1, btn_zero_reg2 : STD_LOGIC := '1';
    signal btn_up_state : STD_LOGIC := '1';
    signal btn_down_state : STD_LOGIC := '1';
    signal btn_zero_state : STD_LOGIC := '1';
    signal clk_div : INTEGER := 0;
    constant DIV_FACTOR : INTEGER := 5000000;
    
    function to_seven_segment(input : INTEGER) return STD_LOGIC_VECTOR is
    begin
        case input is
            when 0 => return "1000000"; 
            when 1 => return "1111001"; 
            when 2 => return "0100100"; 
            when 3 => return "0110000"; 
            when 4 => return "0011001"; 
            when 5 => return "0010010"; 
            when 6 => return "0000010"; 
            when 7 => return "1111000"; 
            when 8 => return "0000000"; 
            when 9 => return "0010000"; 
            when others => return "1111111"; 
        end case;
    end function;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            clk_div <= clk_div + 1;
            if clk_div = DIV_FACTOR then
                clk_div <= 0;
                
                btn_up_reg1 <= btn_up;
                btn_up_reg2 <= btn_up_reg1;
                btn_down_reg1 <= btn_down;
                btn_down_reg2 <= btn_down_reg1;
                btn_zero_reg1 <= btn_zero;
                btn_zero_reg2 <= btn_zero_reg1;

                if btn_zero_reg2 = '0' and btn_zero_state = '1' then
                    count <= 0;
                elsif btn_up_reg2 = '0' and btn_up_state = '1' then
                    if count = 99 then
                        count <= 0;
                    else
                        count <= count + 1;
                    end if;
                elsif btn_down_reg2 = '0' and btn_down_state = '1' then
                    if count = 0 then
                        count <= 99;
                    else
                        count <= count - 1;
                    end if;
                end if;

                btn_up_state <= btn_up_reg2;
                btn_down_state <= btn_down_reg2;
                btn_zero_state <= btn_zero_reg2;
            end if;
        end if;
    end process;

    hex0 <= to_seven_segment(count mod 10); 
    hex1 <= to_seven_segment(count / 10); 

end Behavioral;
