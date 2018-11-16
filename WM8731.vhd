library ieee;
use IEEE.std_logic_1164.all;

entity WM8731 is
port(
	daclrc: out std_logic;
	adclrc: out std_logic;
	bclk: in std_logic;
	dacdat: out std_logic;
	adcdat: in std_logic;
	reset: in std_logic
	);
 end entity;
 
architecture rtl of WM8731 is

	----Signals----
	signal statemachine: integer range 0 to 2 :=0;
	signal count: integer range 0 to 15 :=15;

	----Constants----
	signal inL: std_logic_vector(15 downto 0):=(others=>'0');
	signal inR: std_logic_vector(15 downto 0):="0000000000000000";
	signal utL: std_logic_vector(15 downto 0):="0000000000000000";
	signal utR: std_logic_vector(15 downto 0):="0000000000000000";
	
	begin
	
	process(bclk)
	
	begin
	
	--if(reset='1') then
	--scl_out<='1';
	--sda_out<='1';
	--statemachine<=0;
 
	if falling_edge(bclk) then
	
	case statemachine is
	
	 --------------------Set LRC high-------------------
	when 0 =>
	daclrc <= '1';
	adclrc <= '1';
	statemachine <= statemachine + 1;

	 --------------------Read left--------------------	

	when 1 =>
	
	inL(count) <= adcdat;
	
	if((count-1)>=0) then
		count <= count - 1;
		statemachine <= 1;
	else
		statemachine <= statemachine + 1;
		count<=15;
	end if;
	
	--------------------Read right--------------------
	
	when 2 =>
	
	inR(count) <= adcdat;
	
	if((count-1)>=0) then
		count <= count - 1;
		statemachine <= 1;
	else
		statemachine <= 0;
		count<=15;
	end if;
	
	-------------------Other condition-------------------
	
	when others => statemachine<=0;
	
	end case;

	elsif rising_edge(bclk) then
	dacdat <= adcdat;
		
	end if;
	end process;
	end architecture;

 