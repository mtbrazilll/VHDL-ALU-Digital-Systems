

		
		
						
						
		library IEEE;
		use IEEE.std_logic_1164.all;
		
		entity produto is port
		(
		     a     : in std_logic_vector(4 downto 0);
			  s     : out std_logic_vector(4 downto 0);
			  over  : out std_logic
		);
		end produto;
		
		architecture trab of produto  is
		
	 
				
		begin
		
		process(a)
				begin
			case a is
			
			when "00000" => over<= '0';
			when "00001" => over<= '0';
			when "00010" => over<= '0';
			when "00011" => over<= '0';
			when "11111" => over<= '0';
			when "11110" => over<= '0';
			when "11101" => over<= '0';
			when others => over <= '1';
			
				end case;
		end process;
		
		process(a)
		
		begin 
		
			if    (a = "00000") then s <= "00000";
			elsif (a = "00001") then s <= "00001";
			elsif (a = "00010") then s <= "00100";
			elsif (a = "00011") then s <= "01001";
			elsif (a = "11111") then s <= "00001";
			elsif (a = "11110") then s <= "00100";
			elsif (a = "11101") then s <= "01001";
			end if;
			end process;
		
	   end trab;