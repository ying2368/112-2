library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lab15_G06 is
    Port (
        clk : in STD_LOGIC;
        LED : out STD_LOGIC_VECTOR (2 downto 0);
        HEX0 : out STD_LOGIC_VECTOR (6 downto 0)
    );
end lab15_G06;

architecture Behavioral of lab15_G06 is
    signal count: integer range 0 to 8 := 8;
    signal clk_div: integer := 0;
    signal start_val : integer range 5 to 7 := 7;
    signal LED_Signal: STD_LOGIC_VECTOR(2 downto 0) := "000";
    
    function seven_segment(input : integer) return std_logic_vector is
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
            if clk_div = 50000000 then
                clk_div <= 0;
                if count = 1 then
                    if start_val = 7 then
						start_val <= 5;
						count <= 5;
					else
						start_val <= 7;
						count <= 7;
					end if;
				else
					count <= count-1;
                end if;
            end if;
        end if;
    end process;
    
    process(count, start_val)
    begin
		if start_val = 7 then
            case count is
                when 7 => led_signal <= "001";
                when 6 => led_signal <= "001";
                when 5 => led_signal <= "001";
                when 4 => led_signal <= "001";
                when 3 => led_signal <= "001";
                when 2 => led_signal <= "010";
                when 1 => led_signal <= "010";
                when 0 => led_signal <= "010";
                when others => led_signal <= "000";
            end case;
        else
            led_signal <= "100";
        end if;
    end process;
    HEX0 <= seven_segment(count);
    LED <= led_signal;
end Behavioral;