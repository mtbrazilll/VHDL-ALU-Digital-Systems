




 
       
		library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity maiorque is port
		(
		     a,b: in std_logic_vector(4 downto 0);
			  status     : out std_logic
		);
		end maiorque;
		
		architecture mec of maiorque is
		
		
		component mais is port
		(
		     a,b, gt, eq, lt: in std_logic;
			   ogt, oeq, olt   : out std_logic
		);
		end component;
		
		component menos is port
		(
		     a,b : in std_logic;
			  lgt, lqe, llt			  : out std_logic
		);
		end component;
		
		signal lgt : std_logic_vector(4 downto 0);
		signal leq : std_logic_vector(4 downto 0);
		signal lit : std_logic_vector(4 downto 0);
	 
				
		begin
		
		x0 : menos port map(a(4),b(4),lgt(0),leq(0),lit(0));
		x1 : mais port map(a(3),b(3),lgt(0),leq(0),lit(0),lgt(1),leq(1),lit(1));
		x2 : mais port map(a(2),b(2),lgt(1),leq(1),lit(1),lgt(2),leq(2),lit(2));
		x3 : mais port map(a(1),b(1),lgt(2),leq(2),lit(2),lgt(3),leq(3),lit(3));
		x4 : mais port map(a(0),b(0),lgt(3),leq(3),lit(3),lgt(4),leq(4),lit(4));
		
		
		status <= lgt(4);
		
	   end mec;