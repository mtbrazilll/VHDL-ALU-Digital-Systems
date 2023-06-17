



    
	 
	 
	  
	    
		 	
		library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity subtrai is port
		(
		     a,b  : in   std_logic_vector(4 downto 0);
			  s  : out  std_logic_vector(4 downto 0);
			  over: out std_logic
		);
		end subtrai;
		
		architecture sate of subtrai is
		
		component adder_4_bits is													 
				port(x,y		:	in		std_logic_vector(4 downto 0);					
		  ze		:	in		std_logic;											
		  s		: out		std_logic_vector(4 downto 0);					
		  zs		: out		std_logic;												
		  buff   : out    std_logic);	
				end component;
		signal aux: std_logic_vector(4 downto 0);
		signal barra: std_logic_vector(4 downto 0);
		signal lixo: std_logic_vector(4 downto 0);
		signal overflow: std_logic;
				
		begin
		
		xo : adder_4_bits port map ("00001", aux, '0',barra, lixo(1), lixo(0));
		x1 : adder_4_bits port map (a, barra, '0',s, lixo(2), overflow);
		
		aux <= not b;
		over <= overflow or (b(0) and b(1) and b(2) and b(3));
	   end sate;