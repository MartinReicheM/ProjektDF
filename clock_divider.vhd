library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clock_divider is
port (
	clock_50: in std_logic;
	clock_reset: in std_logic;
	MCLK: out std_logic;
	BCLK: out std_logic;
	clk400: out std_logic
	);
 end clock_divider;
 
 architecture rtl of clock_divider is
 
 signal clock_counter,clock_counter1,clock_counter2: integer := 0;
 signal clk_bclk,clk_mclk,clk_i2c: std_logic := '0'; 

 begin
 process(clock_50,clock_reset)
 begin
 
 ------------Clock BCLK(1536kHz)--------------
 if(clock_reset='0') then
		if(rising_edge(clock_50)) then
			clock_counter<=clock_counter+1;
			if(clock_counter=15) then
				clock_counter<=0;
				clk_bclk <= not(clk_bclk);
			end if;
		end if;
 else
 clock_counter<=0;
 clk_bclk <= '0';
 end if;	
 BCLK<=clk_bclk;
 end process;
 
  ------------Clock MCLK (12.288kHz)--------------
 
  process(clock_50,clock_reset)
  begin 
  
  if(clock_reset='0') then
		if(rising_edge(clock_50)) then
			clock_counter1<=clock_counter1+1;
			if(clock_counter1=1) then
				clock_counter1<=0;
				clk_mclk <= not(clk_mclk);
			end if;
		end if;
 else
 clock_counter1<=0;
 clk_mclk <= '0';
 end if;	
 MCLK<=clk_mclk;
 end process;
 
   ------------Clock MCLK (400 kHz)--------------
 
  process(clock_50,clock_reset)
  begin 
  
  if(clock_reset='0') then
		if(rising_edge(clock_50)) then
			clock_counter2<=clock_counter2+1;
			if(clock_counter2=124) then
				clock_counter2<=0;
				clk_i2c <= not(clk_i2c);
			end if;
		end if;
 else
 clock_counter2<=0;
 clk_i2c <= '0';
 end if;	
 clk400<=clk_i2c;
 end process;
 
end architecture;

