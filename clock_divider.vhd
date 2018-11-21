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
 
 signal count_BCLK: integer range 0 to 20		:=0;
 signal count_MCLK: integer range 0 to 10		:=0;
 signal count_i2c	: integer range 0 to 150	:=0;
 
 signal BCLK_Sig,MCLK_Sig,i2c_Sig: std_logic :='0'; 

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
				count_BCLK<=0;
				BCLK_Sig  <= not(BCLK_Sig);
			end if;
			
----------Clock MCLK  12.5 MHz----------
			if(count_MCLK>=4) then
				count_MCLK<=0;
				MCLK_Sig  <= not(MCLK_Sig);
			end if;
			
------------Clock i2c  400 kHz------------
			if(count_i2c>=124) then
				count_i2c<=0;
				i2c_Sig  <= not(i2c_Sig);
			end if;
			
			count_i2c <=count_i2c +1;
			count_MCLK<=count_MCLK+1;
			count_BCLK<=count_BCLK+1;
	
	end if;
 	
 end process;
   MCLK  <= MCLK_Sig;
	BCLK  <= BCLK_Sig;
	clk400<= i2c_Sig;

end architecture;

