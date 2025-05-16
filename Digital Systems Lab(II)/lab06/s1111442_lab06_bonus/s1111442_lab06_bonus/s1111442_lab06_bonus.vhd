library ieee;
use ieee.std_logic_1164.all;

entity s1111442_lab06_bonus is
Port( CLK,rst,Din: in std_logic;
		match: out std_logic;
		str_out: out std_logic_vector(0 to 2));
end s1111442_lab06_bonus;

architecture arch of s1111442_lab06_bonus is
type State is (s0,s1,s2,s3);
signal present_state : State := s0;
signal current_state : State := s0;
signal next_state: State := s0;
signal single_output : std_logic;
begin
	process(CLK, rst)
		variable single_output : std_logic := '0';
    begin
        if rst = '1' then
			current_state <= s0;
        elsif rising_edge(CLK) then
			present_state <= current_state;
			current_state <= next_state;
            if Din = '0' then
				str_out(0) <= '0';
			else
				str_out(0) <= '1';
			end if;
        end if;
    end process;

	process(current_state)
    begin
		single_output <= '0';
		case present_state is
            when S0 =>
				str_out(1) <= '0';
				str_out(2) <= '0';
            when S1 =>
				str_out(1) <= '1';
				str_out(2) <= '0';
            when S2 =>
				str_out(1) <= '0';
				str_out(2) <= '1';
             when S3 =>
				str_out(1) <= '1';
				str_out(2) <= '1';
        end case;
        case current_state is
            when S0 =>
                if Din = '0' then
                    next_state <= S0;
                else
                    next_state <= S1;
                end if;
            when S1 =>
                if Din = '0' then
                    next_state <= S0;
                else
                    next_state <= S2;
                end if;
            when S2 =>
                if Din = '0' then
                    next_state <= S3;
                else
                    next_state <= S2;
                end if;
             when S3 =>
                if Din = '0' then
                    next_state <= S0;
                else
					single_output <= '1';
                    next_state <= S1;
                end if;
        end case;
    end process;
	
	match <= single_output;
end arch;