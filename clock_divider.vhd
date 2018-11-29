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
 
 signal counter_bclk,counter_mclk,counter_i2c: integer := 0;
 signal clk_bclk,clk_mclk,clk_i2c: std_logic := '0'; 

 begin
 
 process(reset, clock_50) is 
 begin 
 
 		if(reset='0') then 
			--reset
			
		elsif rising_edge(clock_50) then 
		
		------BCLK-------
			if(counter_bclk>=7) then
				clk_bclk<=not(clk_bclk);
				counter_bclk<=0;
			else
				counter_bclk<=counter_bclk+1;
			end if;
			
		-------MCLK-------
			if(counter_mclk>=1) then
				clk_mclk<=not(clk_mclk);
				counter_mclk<=0;
			else
				counter_mclk<=counter_mclk+1;
			end if;
			
		---- i2c clokc-----
			if(counter_i2c>=124) then
				clk_i2c<=not(clk_i2c);
				counter_i2c<=0;
			else
				counter_i2c<=counter_i2c+1;
			end if;
		
		BCLK<=clk_bclk;
		MCLK<=clk_mclk;
		clk400<=clk_i2c;
		end if;
end process;	

end architecture;

