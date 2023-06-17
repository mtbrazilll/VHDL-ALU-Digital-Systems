



			library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity mais is port
		(
		     a,b, gt, eq, lt: in std_logic;
			   ogt, oeq, olt   : out std_logic
		);
		end mais;
		
		architecture safe of mais is
		
				
		begin
		ogt <= gt or (eq and a and not b);
		olt <= lt or (eq and not a and b);
		oeq <= eq and (a xnor b);
		  
	   end safe;