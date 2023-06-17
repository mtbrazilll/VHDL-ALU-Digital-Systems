library ieee;
use ieee.std_logic_1164.all;

entity testbench_ula is
    port (
      error: out std_logic
    );
end testbench_ula;

architecture tb_arch_ula of testbench_ula is

  component alu is port
	(
	   A,B         :  in   std_logic_vector(4 downto 0); 
		selection   :  in   std_logic_vector(2 downto 0);
		--O           : out   std_logic_vector(4 downto 0);
		display1    : out   std_logic_vector(6 downto 0);
		display2    : out   std_logic_vector(6 downto 0);
		overflow    : out   std_logic;
		status      : out   std_logic;
		sinal       : out   std_logic
		
	);
	end component;
  
  signal test_a: std_logic_vector( 4 downto 0);
  signal test_b: std_logic_vector( 4 downto 0);
  signal test_s: std_logic_vector( 2 downto 0);
  signal test_disp1:  std_logic_vector (6 downto 0);
  signal test_disp2:  std_logic_vector (6 downto 0);
  signal	test_overflow:  std_logic;
  signal test_status:  std_logic;
  signal	test_sinal:  std_logic;

  begin
  -- instantiate the circuit under test
  
  uut: alu
    port map(test_a,test_b,test_s,test_disp1,
				  test_disp2, test_overflow, 
				  test_status, test_sinal);
  -- test vector generator
  process
  begin
    -- soma
    test_a <= "00000";
	 test_b <= "00000";
	 test_s <= "000";
    wait for 200 ns;
    test_a <= "00001";
	 test_b <= "00001";
	 test_s <= "000";
    wait for 200 ns;
    test_a <= "00001";
	 test_b <= "11111";
	 test_s <= "000";
    wait for 200 ns;
    test_a <= "01111";
	 test_b <= "01111";
	 test_s <= "000";
    wait for 200 ns;
    
	 -- subtracao
    test_a <= "01111";
	 test_b <= "01111";
	 test_s <= "001";
    wait for 200 ns;
    test_a <= "10001";
	 test_b <= "10001";
	 test_s <= "001";
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "00001";
	 test_s <= "001";
    wait for 200 ns;

	 -- max/min
    test_a <= "11111";
	 test_b <= "00001";
	 test_s <= "010";    
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "00001";
	 test_s <= "011";    
    wait for 200 ns;
    test_a <= "00001";
	 test_b <= "00010";
	 test_s <= "010";
	 wait for 200 ns;
    test_a <= "00001";
	 test_b <= "00010";
	 test_s <= "011";
	 wait for 200 ns;
    test_a <= "11111";
	 test_b <= "10001";
	 test_s <= "010";    
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "10001";
	 test_s <= "011";    
    wait for 200 ns;
    
	 -- menor/maior ou igual
	 test_a <= "11111";
	 test_b <= "00001";
	 test_s <= "100";    
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "00001";
	 test_s <= "101";    
    wait for 200 ns;
    test_a <= "00001";
	 test_b <= "00010";
	 test_s <= "100";    
	 wait for 200 ns;
    test_a <= "00001";
	 test_b <= "00010";
	 test_s <= "101";
	 wait for 200 ns;
    test_a <= "11111";
	 test_b <= "10001";
	 test_s <= "100";    
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "10001";
	 test_s <= "101";    
    wait for 200 ns;
    test_a <= "11111";
	 test_b <= "11111";
	 test_s <= "101";    
    wait for 200 ns;

	 -- modulo
    test_a <= "11111";
	 test_s <= "110";    
    wait for 200 ns;
    test_a <= "01111";
	 test_s <= "110";    
    wait for 200 ns;	
    test_a <= "11110";
	 test_s <= "110";    
    wait for 200 ns;
    test_a <= "10000";
	 test_s <= "110";    
    wait for 200 ns;
	 
	 -- quadrado
    test_a <= "11110";
	 test_s <= "111";    
    wait for 200 ns;
    test_a <= "10000";
	 test_s <= "111";    
    wait for 200 ns;
    test_a <= "00011";
	 test_s <= "111";    
    wait for 200 ns;
	 end process;
  
  -- verifier
  process
  begin
 
      wait on test_a;
      wait for 100 ns;
      if ((test_a="00000" and test_b="00000" and test_s="000" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1111110" or test_overflow /= '0' or test_sinal /= '0')) ) or
          (test_a="00001" and test_b="00001" and test_s="000" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1101101" or test_overflow /= '0' or test_sinal /= '0')) ) or
          (test_a="00001" and test_b="11111" and test_s="000" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1111110" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="01111" and test_b="01111" and test_s="000" and (not 
		      (test_overflow /= '1')) ) or
			 
			 (test_a="01111" and test_b="01111" and test_s="001" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1111110" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="10001" and test_b="10001" and test_s="001" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1111110" or test_overflow /= '0' or test_sinal /= '0')) ) or
          (test_a="11111" and test_b="00001" and test_s="001" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1101101" or test_overflow /= '0' or test_sinal /= '1')) ) or
			 
			 (test_a="11111" and test_b="00001" and test_s="010" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110000" or test_overflow /= '0' or test_sinal /= '1')) ) or
			 (test_a="11111" and test_b="00001" and test_s="011" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110000" or test_overflow /= '0' or test_sinal /= '0')) ) or
          (test_a="00001" and test_b="00010" and test_s="010" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110000" or test_overflow /= '0' or test_sinal /= '0')) ) or
          (test_a="00001" and test_b="00010" and test_s="011" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1101101" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="11111" and test_b="10001" and test_s="010" and (not 
		      (test_disp1 /= "0110000" or test_disp2 /= "1011011" or test_overflow /= '0' or test_sinal /= '1')) ) or
			 (test_a="11111" and test_b="10001" and test_s="011" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110000" or test_overflow /= '0' or test_sinal /= '1')) ) or
			 
			 (test_a="11111" and test_b="00001" and test_s="100" and (not 
		      (test_status /= '0')) ) or
			 (test_a="11111" and test_b="00001" and test_s="101" and (not 
		      (test_status /= '1')) ) or
          (test_a="00001" and test_b="00010" and test_s="100" and (not 
		      (test_status /= '0')) ) or
          (test_a="00001" and test_b="00010" and test_s="101" and (not 
		      (test_status /= '1')) ) or
			 (test_a="11111" and test_b="10001" and test_s="100" and (not 
		      (test_status /= '1')) ) or
			 (test_a="11111" and test_b="10001" and test_s="101" and (not 
		      (test_status /= '0')) ) or
			 (test_a="11111" and test_b="11111" and test_s="101" and (not 
		      (test_status /= '1')) ) or
			 
			 (test_a="11111" and test_s="110" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110000" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="01111" and test_s="110" and (not 
		      (test_disp1 /= "0110000" or test_disp2 /= "1011011" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="11110" and test_s="110" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1101101" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="10000" and test_s="110" and (not 
		      (test_overflow /= '1')) ) or
				
	 		 (test_a="11110" and test_s="111" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "0110011" or test_overflow /= '0' or test_sinal /= '0')) ) or
			 (test_a="10000" and test_s="111" and (not 
		      test_overflow /= '1')) ) or
			 (test_a="00011" and test_s="111" and (not 
		      (test_disp1 /= "1111110" or test_disp2 /= "1111011" or test_overflow /= '0' or test_sinal /= '0')) )
      then
        error <= '0';
      else
        error <= '1';
      end if;
  end process;
end tb_arch_ula;