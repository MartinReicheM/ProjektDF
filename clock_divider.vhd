library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clock_divider is
port (
	clock_50: in std_logic;
	reset: in std_logic;
	MCLK: out std_logic;
	BCLK: out std_logic;
	clk400: out std_logic
	);
 end clock_divider;
 
 architecture rtl of clock_divider is
 
 signal clock_counter,clock_counter1,clock_counter2: integer := 0;
 signal clk_i2c,clk_i2c1,clk_i2c2: std_logic := '0'; 

 begin
 process(clock_50,reset)
 begin
 
 ------------Clock BCLK(1536kHz)--------------
 if(reset='0') then
		if(rising_edge(clock_50)) then
			clock_counter<=clock_counter+1;
			if(clock_counter=15) then
				clock_counter<=0;
				clk_i2c <= not(clk_i2c);
			end if;
		end if;
 else
 clock_counter<=0;
 clk_i2c <= '0';
 end if;	
 BCLK<=clk_i2c;
 end process;
 
  ------------Clock MCLK (12.288kHz)--------------
 
  process(clock_50,reset)
  begin 
  
  if(reset='0') then
		if(rising_edge(clock_50)) then
			clock_counter1<=clock_counter1+1;
			if(clock_counter1=1) then
				clock_counter1<=0;
				clk_i2c1 <= not(clk_i2c1);
			end if;
		end if;
 else
 clock_counter1<=0;
 clk_i2c1 <= '0';
 end if;	
 MCLK<=clk_i2c1;
 end process;
 
   ------------Clock i2c (400 kHz)--------------
 
  process(clock_50,reset)
  begin 
  
  if(reset='0') then
  --resets
		if(rising_edge(clock_50)) then
			clock_counter2<=clock_counter2+1;
			if(clock_counter2=124) then
				clock_counter2<=0;
				clk_i2c2 <= not(clk_i2c2);
			end if;
		end if;
 else
 clock_counter2<=0;
 clk_i2c2 <= '0';
 end if;	
 clk400<=clk_i2c2;
 end process;
 
end architecture;

