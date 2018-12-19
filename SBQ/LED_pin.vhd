library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;
 use IEEE.std_logic_unsigned.all;
 
 entity seg7 is
	port(
		CLOCK: IN STD_LOGIC;   --50MHz
		RESET: IN STD_LOGIC;
		SEL:	 OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
		LED:   OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	
	end entity seg7;
 
 architecture seg_dis of seg7 is
	signal cnt: STD_LOGIC_VECTOR (24 DOWNTO 0);    --generate 0.5s
	signal num: STD_LOGIC_VECTOR (3 DOWNTO 0);	  --state machine flag
	
	constant num0: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0110"; 	
	constant num1: STD_LOGIC_VECTOR (3 DOWNTO 0) := "1001";		
	constant num2: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0110";	
	constant num3: STD_LOGIC_VECTOR (3 DOWNTO 0) := "1001";		
	constant num4: STD_LOGIC_VECTOR (3 DOWNTO 0) := "1010";		
	constant num5: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0101";	
	constant num6: STD_LOGIC_VECTOR (3 DOWNTO 0) := "1010";	
	constant num7: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0100";	
	constant num8: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0010";	
	constant num9: STD_LOGIC_VECTOR (3 DOWNTO 0) := "0001";
	
	begin
	
		SEL <= "011111";		--enable last bit
	
		process(CLOCK,RESET)
			begin
				if(RESET = '0') then
					cnt <= (OTHERS => '0');
				elsif (cnt = 1E7) then
					cnt <= (OTHERS => '0');		--10000000,0.5s
				elsif (CLOCK'EVENT AND CLOCK = '1') then
					cnt <= cnt+1;
				end if;
		end process;
		
		process(CLOCK,RESET)
			begin
				if(RESET = '0') then
					num <= (OTHERS => '0');
				elsif (CLOCK'EVENT AND CLOCK = '1') then
					if(num = 10) then
						num <= (OTHERS => '0');
					elsif(cnt = 9999999) then
						num <= num + 1;
					end if;
				end if;
		end process;
		
		process(num,RESET)
			begin
				if(RESET = '0') then
					LED <= (OTHERS => '0');
				else case num is
				
					when x"0" => 	LED <= num0;
					when x"1" => 	LED <= num1;
					when x"2" => 	LED <= num2;
					when x"3" => 	LED <= num3;
					when x"4" => 	LED <= num4;
					when x"5" => 	LED <= num5;
					when x"6" => 	LED <= num6;
					when x"7" => 	LED <= num7;
					when x"8" => 	LED <= num8;
					when x"9" => 	LED <= num9;
					
					when others =>  LED <= num0;
					
					end case;
				end if;	
				
		
		end process;
		
	end architecture seg_dis;
			