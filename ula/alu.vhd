--
-- UNIDADE LÓGICA ARITMÉTICA EM VHDL
--
--   sel2  sel1  sel0   |     O                      [A0..A4] [B0..B4]
--   --------------------------------                 ______  ______
--      0     0     0   |  A  +  B                    \     \/     /
--      0     0     1   |  A  -  B         [s0..s2]    \    ALU   /
--      0     1     0   |  min(a,b)                     \________/
--      0     1     1   |  max(A,B)
--      1     0     0   |  A > B                         [O0..O4]
--      1     0     1   |  A <= B
--      1     1     0   |  mod(a)
--      1     1     1   |     A*a
--
--   Autor: Mateus da Silva Batista
--   Data: Setembro de 2021
--
--   Projeto 1 sistema digitais 
--

   library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_unsigned.all;
	
	entity alu is port
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
	end alu;
	
	architecture hardware of alu is
	
	component adder_4_bits is													 
	port(x,y		:	in		std_logic_vector(4 downto 0);					
		  ze		:	in		std_logic;											
		  s		: out		std_logic_vector(4 downto 0);					
		  zs		: out		std_logic;												
		  buff   : out    std_logic);	
	end component;
	
	component subtrai is port
		(
		     a,b  : in   std_logic_vector(4 downto 0);
			  s  : out  std_logic_vector(4 downto 0);
			  over: out std_logic
		);
		end component;
	
	component modulo is port
		(
		      
			  A    :   in  std_logic_vector(4 downto 0);			
			  buff :  out  std_logic;
			  Q    :  out  std_logic_vector(4 downto 0)
		);
		end component;
		
		component maiorque is port
		(
		     a,b: in std_logic_vector(4 downto 0);
			  status     : out std_logic
		);
		end component;
		component mima is port
		(
		     a,b : in std_logic_vector(4 downto 0);
			  min,max : out std_logic_vector(4 downto 0)
		);
		end component;
		
		component produto is port
		(
		     a: in std_logic_vector(4 downto 0);
			  s     : out std_logic_vector(4 downto 0);
			  over  : out std_logic
		);
		end component;
		
	signal saida  : std_logic_vector(4 downto 0);	
	
	signal z       : std_logic;
	signal over    : std_logic;
	signal sO      :    std_logic_vector(4 downto 0);
	
	signal s1      :    std_logic_vector(4 downto 0);
	signal s1f  :    std_logic;
	
	
	signal s7      :    std_logic_vector(4 downto 0);
	signal s7flow  :    std_logic;
	
	signal s5      :    std_logic;
	signal s3min, s3max : std_logic_vector(4 downto 0);
	
	signal s8      : std_logic_vector(4 downto 0);  
	signal s8flow  : std_logic;
	
	begin
	x0:	adder_4_bits	PORT MAP(      a,      b,      '0',         so,       z, over);
	x1:   subtrai        port map(      a,      b,       s1,         s1f);
	x3:   mima           port map(      a,      b,      s3min,       s3max);
	x5:   maiorque       port map(      a,      b,       s5); 
	x7:   modulo         port map(      a,      s7flow  ,s7);
	x8:   produto        port map(      a,      s8,  s8flow);
	

	
	--o<= saida;
	
	process(a,b,selection)
	begin
			case selection is
			
			when "000" => saida <= so; sinal <= so(4); overflow <= over;status <= 'Z';
			when "001" => saida <= s1; sinal <= s1(4); overflow <= s7flow; status <= 'Z';
			when "010" => saida <= s3min; sinal <= s3min(4); overflow <= '0'; status <= 'Z';
			when "011" => saida <= s3max; sinal <= s3max(4); overflow <= '0'; status <= 'Z';
			when "100" => status <= s5; saida <= "ZZZZZ"; overflow <= '0'; sinal <= 'Z';
			when "101" => status <= not s5; saida <= "ZZZZZ"; overflow <= '0'; sinal <= 'Z';
			when "110" => saida <= s7; sinal <= s7(4); overflow <= s7flow; status <= 'Z';
			when "111" => saida <= s8; sinal <= s8(4); overflow <= s8flow; status <= 'Z';
			when others => saida <= "ZZZZZ";
			
			end case;
	end process;
	
	process(saida)
	begin
			case saida is
			
			when "00000" => display1 <= "1111110"; display2 <= "1111110";--  0
			when "00001" => display1 <= "1111110"; display2 <= "0110000";--  1
			when "00010" => display1 <= "1111110"; display2 <= "1101101";--  2
			when "00011" => display1 <= "1111110"; display2 <= "1111001";--  3
			when "00100" => display1 <= "1111110"; display2 <= "0110011";--  4
			when "00101" => display1 <= "1111110"; display2 <= "1011011";--  5
			when "00110" => display1 <= "1111110"; display2 <= "1011111";--  6
			when "00111" => display1 <= "1111110"; display2 <= "1110000";--  7
			when "01000" => display1 <= "1111110"; display2 <= "1111111";--  8
			when "01001" => display1 <= "1111110"; display2 <= "1111011";--  9
			when "01010" => display1 <= "0110000"; display2 <= "1111110";--  10
			when "01011" => display1 <= "0110000"; display2 <= "0110000";--  11
			when "01100" => display1 <= "0110000"; display2 <= "1101101";--  12
			when "01101" => display1 <= "0110000"; display2 <= "1111001";--  13
			when "01110" => display1 <= "0110000"; display2 <= "0110011";--  14
			when "01111" => display1 <= "0110000"; display2 <= "1011011";--  15
			
			
			when "11111" => display1 <= "1111110"; display2 <= "0110000";--  -1
			when "11110" => display1 <= "1111110"; display2 <= "1101101";--  -2
			when "11101" => display1 <= "1111110"; display2 <= "1111001";--  -3
			when "11100" => display1 <= "1111110"; display2 <= "0110011";--  -4
			when "11011" => display1 <= "1111110"; display2 <= "1011011";--  -5
			when "11010" => display1 <= "1111110"; display2 <= "1011111";--  -6
			when "11001" => display1 <= "1111110"; display2 <= "1110000";--  -7
			when "11000" => display1 <= "1111110"; display2 <= "1111111";--  -8
			when "10111" => display1 <= "1111110"; display2 <= "1111011";--  -9
			when "10110" => display1 <= "0110000"; display2 <= "1111110";--  -10
			when "10100" => display1 <= "0110000"; display2 <= "1101101";--  -12
			when "10101" => display1 <= "0110000"; display2 <= "0110000";--  -11
			when "10011" => display1 <= "0110000"; display2 <= "1111001";--  -13
			when "10010" => display1 <= "0110000"; display2 <= "0110011";--  -14
			when "10001" => display1 <= "0110000"; display2 <= "1011011";--  -15
			when "10000" => display1 <= "0110000"; display2 <= "1011111";--  -16
		
			
			
			when others => display1 <= "ZZZZZZZ"; display2 <= "ZZZZZZZ";
			
			end case;
	end process;
	
	end hardware;






























