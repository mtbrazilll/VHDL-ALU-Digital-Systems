library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        O               : out    vl_logic_vector(3 downto 0);
        selection       : in     vl_logic_vector(2 downto 0)
    );
end alu;
