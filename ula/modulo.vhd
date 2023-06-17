


		library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity modulo is port
		(
		      
			  A    :   in  std_logic_vector(4 downto 0);			
			  buff :  out  std_logic;
			  Q    :  out  std_logic_vector(4 downto 0)
		);
		end modulo;
		
		architecture func of modulo is
		component adder_4_bits is													 
			port(x,y		:	in		std_logic_vector(4 downto 0);						
		  ze		:	in		std_logic;												
		  s		: out		std_logic_vector(4 downto 0);					
		  zs		: out		std_logic;												
		  buff   : out    std_logic);	
			end component;
			
		signal over    :   std_logic;
		signal z       :   std_logic;
		signal sO      :    std_logic_vector(4 downto 0);
		
		
		signal aux : std_logic_vector(4 downto 0);
		
		
		begin	
		  buff <= not a(0) and not a(1) and not a(2) and not a(3) and a(4);
		  aux <= not a;
		  x0:	adder_4_bits	PORT MAP(      aux,      "00001",      '0',         so,       z, over);
		  with a(4) select
						Q  <=  A when '0' ,
								 so when '1',
								 "00000"  when others;
	   end func;