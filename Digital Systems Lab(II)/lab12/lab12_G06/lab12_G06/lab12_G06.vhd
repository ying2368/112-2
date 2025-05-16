library IEEE;
use IEEE.std_logic_1164.all;

entity lab12_G06 is
    Port(
        clk, pb1, pb2: in std_logic;
        btn1, btn2: in std_logic;
        LED_data: in std_logic_vector(4 downto 0);
        LEDs: out std_logic_vector(9 downto 0)
    );
end lab12_G06;

architecture behavioral of lab12_G06 is
	signal buf, temp: std_logic_vector(9 downto 0);
	signal tmp: std_logic;
	signal count: integer := 0;
	signal speed: integer := 10000000;
begin
	process(clk)
	begin
		if rising_edge(clk) then			
			count <= count + 1;
			if count >= speed then
				count <= 0;	
					if btn1 = '0' then
						if speed > 1000 then
							speed <= speed - 500000;
						elsif speed = 500000 then
							speed <= 500000;
						end if;
					elsif btn2 = '0' then
						if speed < 10000000 then
							speed <= speed + 500000;
						elsif speed = 20000000 then
							speed <= 20000000;
						end if;
					end if;
					if pb1 = '0' and pb2 = '0' then
						temp(0) <= LED_data(0);
						temp(1) <= LED_data(1);
						temp(2) <= LED_data(2);
						temp(3) <= LED_data(3);
						temp(4) <= LED_data(4);
						temp(9 downto 5) <= (others => '0');
					elsif pb1 = '1' and pb2 = '0' then --left
						temp(9 downto 0) <= buf(8 downto 0) & buf(9);
					elsif pb1 = '0' and pb2 = '1' then --right
						temp(9 downto 0) <= buf(0) & buf(9 downto 1);
					elsif pb1 = '1' and pb2 = '1' then
						buf <= temp;
					end if;
					buf <= temp;
					LEDs <= buf;
			end if;
		end if;
	end process;
end behavioral;

	