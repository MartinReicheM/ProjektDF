library ieee;
use IEEE.std_logic_1164.all;

entity WM8731 is
port(
	daclrc	: out std_logic;
	adclrc	: out std_logic;
	bclk		: in  std_logic;
	dacdat	: out std_logic;
	adcdat	: in  std_logic;
	reset		: in  std_logic;
	o_parL	: out std_logic_vector(15 downto 0);
	o_parR	: out std_logic_vector(15 downto 0)
	);
 end entity;
 
architecture rtl of WM8731 is

	----Signals----
	signal statemachine: integer range 0 to 2 :=0;
	signal count: integer range 0 to 15 :=15;

	----Constants----
	signal inL: std_logic_vector(15 downto 0):=(others=>'0');
	signal inR: std_logic_vector(15 downto 0):=(others=>'0');
	signal utL: std_logic_vector(15 downto 0):=(others=>'0');
	signal utR: std_logic_vector(15 downto 0):=(others=>'0');
	
	begin
	
	process(reset,bclk)
	
	begin
	
		if(reset='0') then
				daclrc<='0';
				adclrc<='0';
				statemachine<=0;
				count<=15;
				inL<=(others=>'0');
				inR<=(others=>'0');
				utL<=(others=>'0');
				utR<=(others=>'0');
 
		elsif falling_edge(bclk) then
	
			case statemachine is
	
	 --------------------Set LRC high-------------------
			when 0 =>
				daclrc <= '1';
				adclrc <= '1';
				statemachine <= statemachine + 1;

----------------------Read left----------------------	
			when 1 =>
	
				inL(count) <= adcdat;
				daclrc <= '0';
				adclrc <= '0';
	
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 1;
				else
					statemachine <= statemachine + 1;
					count<=15;
				end if;
	
--------------------Read  right--------------------
			when 2 =>
	
				inR(count) <= adcdat;
				daclrc <= '0';
				adclrc <= '0';
	
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 1;
				else
					statemachine <= 0;
					count<=15;
				end if;
	
------------------Other condition------------------
	
			when others => 
				statemachine<=0;
			
			end case;
--------------------Loop back test--------------------

--		elsif rising_edge(bclk) then
--			dacdat <= adcdat;
			
		
		end if;
		
	end process;
	
	process (bclk) is 
	begin 
	if rising_edge(bclk) then
			dacdat<=adcdat;
	end if;
	end process;
--	o_parL<=inL;
--	o_parR<=inR;
end architecture;

 