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
	i_strL	: in  std_logic;
	i_strR	: in  std_logic;
	o_strL	: out std_logic;
	o_strR	: out std_logic;
	i_parL	: in  std_logic_vector(15 downto 0);
	i_parR	: in  std_logic_vector(15 downto 0);
	o_parL	: out std_logic_vector(15 downto 0);
	o_parR	: out std_logic_vector(15 downto 0)
	);
 end entity;
 
architecture rtl of WM8731 is

	----Signals----
	signal statemachine: integer range 0 to 2 :=0;
	signal count : integer range 0 to 15 := 15;
	signal countL: integer range 0 to 15 := 15;
	signal countR: integer range 0 to 15 := 15;
	signal chanel: integer range 0 to 2  := 0;
	----Constants----
	signal inL: std_logic_vector(15 downto 0):=(others=>'0');
	signal inR: std_logic_vector(15 downto 0):=(others=>'0');
	signal utL: std_logic_vector(15 downto 0):=(others=>'0');
	signal utR: std_logic_vector(15 downto 0):=(others=>'0');
	
	signal temp :std_logic;
	
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
		--	when 0 =>
		--		daclrc <= '0';
		--		adclrc <= '0';
		--		o_strL <= '0';
		--		o_strR  <= '0';
		--		statemachine <= statemachine + 1;

----------------------Read left----------------------	
			when 0 =>
	
				inL(count) <= adcdat;
				daclrc <= '0';
				adclrc <= '0';
	
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 1;
				else
					statemachine <= statemachine + 1;
					count<=15;
					o_strL<='1';

				end if;
	
--------------------Read  right--------------------
			when 1 =>
				o_strL<='0';
				inR(count) <= adcdat;
				daclrc <= '1';
				adclrc <= '1';
	
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 2;
				else
					statemachine <= 0;
					count<=15;
					o_strR<='1';
				end if;
	
------------------Other condition------------------
	
			when others => 
				statemachine<=0;
			
			end case;
--------------------Loop back test--------------------

		elsif rising_edge(bclk) then
			temp<=adcdat;
			dacdat <= temp;
-------------------Digital Output--------------------

--		elsif rising_edge(bclk) then
--					
--			if(i_strL = '1' and chanel = 0) then
--				utL <= i_parL;
--				countL <= 15;
--				--daclrc <= '1';
--			elsif(countL= 0) then 
--				dacdat<=utL(countL);
--				chanel<= 1;
--			else		
--				dacdat <= utL(countL);
--				countL <= countL - 1;
--				--daclrc <= '0';
--			end if;
--
--			if(i_strR = '1' and chanel = 1) then 
--				utR <= i_parR;
--				countR <= 15;
--			elsif(countR = 0) then 
--				dacdat<=utR(countR);
--				chanel<=0;
--			else
--				dacdat <= utR(countR);
--			   countR <= countR - 1;
--			end if;
		end if;
	end process;

	--o_parL<=inL;
	--o_parR<=inR;
	
	

end architecture;

 