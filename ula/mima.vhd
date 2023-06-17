




      library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity mima is port
		(
		     a,b : in std_logic_vector(4 downto 0);
			  min,max : out std_logic_vector(4 downto 0)
		);
		end mima;
		
		architecture labor of mima is
		
		component maiorque is port
		(
		     a,b: in std_logic_vector(4 downto 0);
			  status     : out std_logic
		);
		end component;
		
		signal s5 : std_logic;
				
		begin
		x:   maiorque       port map(a,b,s5); 
		with s5 select
						min  <=  a when '0' ,
								   b when '1',
								   "00000"  when others;
		  
		with s5 select
						max  <=  b when '0' ,
								   a when '1',
								   "00000"  when others;
	   end labor;