library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity clock_divider is
port (
	clock_50		: in  std_logic;
	reset			: in  std_logic;
	MCLK			: out std_logic;
	BCLK			: out std_logic;
	test_clk		: out std_logic;
	clk400		: out std_logic
	);
 end clock_divider;
 
 architecture rtl of clock_divider is
 
 signal count_BCLK: integer range 0 to 16		:=0;
 signal count_MCLK: integer range 0 to 4		:=0;
 signal count_i2c	: integer range 0 to 125	:=0;
 signal count_test: integer range 0 to 8		:=0;
 
 signal BCLK_Sig,MCLK_Sig,i2c_Sig,test_Sig: std_logic :='0'; 

 begin
 
 process(clock_50,reset)
 begin
 
	if(reset='0') then
		count_BCLK	<= 0 ;
		BCLK_Sig 	<='0';
		count_MCLK	<= 0 ;
		MCLK_Sig		<='0';
		count_i2c	<= 0 ;
		i2c_Sig		<='0';
		
	elsif rising_edge(clock_50) then
	
-----------Clock BCLK  1536 kHz-----------
			if(count_BCLK>=15) then
				BCLK_Sig  <= not(BCLK_Sig);
				count_BCLK<=0;
			else
				count_BCLK<=count_BCLK+1;
			end if;
			
----------Clock MCLK  12.5 MHz----------
			if(count_MCLK>=1) then
				MCLK_Sig  <= not(MCLK_Sig);
				count_MCLK<=0;
			else
				count_MCLK<=count_MCLK+1;
			end if;
			
------------Clock i2c  400 kHz------------
			if(count_i2c>=63) then
				i2c_Sig  <= not(i2c_Sig);
				count_i2c<=0;
			else
				count_i2c <=count_i2c +1;
			end if;
			
-----------Clock test  3250 kHz-----------
			if(count_test>=7) then
				test_Sig  <= not(test_Sig);
				count_test<=0;
			else
				count_test<=count_test+1;
			end if;
				
	end if;
 	
 end process;
   
	MCLK  	<= MCLK_Sig;
	BCLK  	<= BCLK_Sig;
	clk400	<= i2c_Sig;
	test_clk	<= test_Sig;

end architecture;

