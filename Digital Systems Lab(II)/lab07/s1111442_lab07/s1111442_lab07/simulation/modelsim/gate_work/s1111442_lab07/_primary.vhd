library verilog;
use verilog.vl_types.all;
entity s1111442_lab07 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        aluo            : out    vl_logic_vector(4 downto 0)
    );
end s1111442_lab07;
