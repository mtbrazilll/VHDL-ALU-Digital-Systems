library ieee;
use ieee.std_logic_1164.all;

entity testbench_multiplicador is
    port (
      error: out std_logic
    );
end testbench_multiplicador;

architecture tb_arch_multiplicador of testbench_multiplicador is
    component multiplicadorSD
        port(a, b: in STD_LOGIC_VECTOR(7 downto 0);
              comece, clk: in STD_LOGIC;
              produto: out STD_LOGIC_VECTOR(15 downto 0));
    end component;

    signal test_a: std_logic_vector(7 downto 0);
    signal test_b: std_logic_vector(7 downto 0);
    signal test_comece: std_logic;
    signal test_clk: std_logic := '0';
    signal test_produto: std_logic_vector(15 downto 0);

    constant MckPer : time := 200 ns;

    begin

    clk_process: process
    begin
        test_clk <= '0';
        wait for MckPer/2;
        test_clk <= '1';
        wait for MckPer/2;
    end process;

    uut: multiplicadorSD
     port map(a=>test_a, b=>test_b, comece=>test_comece, clk=>test_clk, produto=>test_produto);

    process(test_clk)
        variable count : integer := 0;
    begin
        case count is
            when 5 => test_a <= "00001001"; test_b <= "00001000";
            when 7 => test_comece <= '1';
            when 9 => test_comece <= '0';
            when 89 => if test_produto = "0000000001001000" then
                              error <= '0';
                          else
                              error <= '1';
                          end if;
            when 95 => test_a <= "00011000"; test_b <= "00000101";
            when 97 => test_comece <= '1';
            when 99 => test_comece <= '0';
            when 169 => if test_produto = "0000000001111000" then
                              error <= '0';
                          else
                              error <= '1';
                          end if;
            when others => null;
        end case;

        count := count + 1;
    end process;


  end tb_arch_multiplicador;
