

	library IEEE;
	use IEEE.std_logic_1164.all;
	entity adder_4_bits is													-- Declaraçao da entidade
	port(x,y		:	in		std_logic_vector(4 downto 0);						-- Entradas do somador
		  ze		:	in		std_logic;												-- "vem um"
		  s		: out		std_logic_vector(4 downto 0);						-- Soma
		  zs		: out		std_logic;												-- "vai um"
		  buff   : out    std_logic);	
	end adder_4_bits;															-- Final da declaraçao da entidade
	
	architecture hardware of adder_4_bits is							-- Declaração da arquitetura
	
		component som_1a														-- Declaraçao do componente
		port(a,b,ve		:		in		std_logic;									-- entradas
			  s,vs		:	  out		std_logic);									-- saidas
		end component;															-- Final da declaração do componente
		
		signal v		: std_logic_vector(4 downto 1);							-- Sinal interno "vai um"
		signal z    : std_logic;
		
	begin

		x0:	som_1a	PORT MAP(      x(0),      y(0),      ze,         s(0),       v(1));
		x1:   som_1a   PORT MAP(      x(1),      y(1),      v(1),       s(1),       v(2));
		x2:   som_1a   PORT MAP(      x(2),      y(2),      v(2),       s(2),       v(3));
		x3:   som_1a   PORT MAP(      x(3),      y(3),      v(3),       s(3),       v(4));
		x4:   som_1a   PORT MAP(      X(4),      y(4),      v(4),       s(4),         z);
		zs <= z;
		buff <= z xor v(4);
		
	end hardware;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	