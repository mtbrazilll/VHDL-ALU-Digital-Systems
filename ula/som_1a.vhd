
	library IEEE;
	use IEEE.std_logic_1164.all;	entity som_1a is
	port(a, b, ve		:		in	std_logic;
		  s, vs			:	  out std_logic);
	end som_1a;
	
	architecture somador of som_1a is
	begin
			s  <= a XOR b XOR ve;                        -- soma
			vs <= (a AND b) OR (a AND ve) OR (b AND ve); -- vai um
	end somador;