




 
 
  
  
      	
		library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity menos is port
		(
		     a,b : in std_logic;
			  lgt, lqe, llt			  : out std_logic
		);
		end menos;
		
		architecture sate of menos is
		
				
		begin
		lgt <= not a and b;
		llt <= not b and a;
		lqe <= (a and b) or (not a and not b);
		  
	   end sate;