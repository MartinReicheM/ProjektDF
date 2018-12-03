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
	signal statemachine: integer range 0 to 5 :=0;
	signal count : integer range 0 to 31 := 31;
	signal temp : std_logic;
	signal counter: integer := 0;
	signal data: std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
	signal data1: std_logic_vector (15 downto 0) := "0000000000000000";
	
	begin
	
	process(bclk)
	
	begin
	
		if(falling_edge(bclk)) then
	
			case statemachine is
			
--------------------Read  Left--------------------
			
			when 0 =>
			
				if(count=31) then
				daclrc <= '0';
				else
				daclrc <= '1';
				end if;
				
				adclrc <= '1';
				temp <= adcdat;
				
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 0;
				else
					statemachine <= 1;
					count<=31;
				end if;
				
			when 1 =>
				adclrc <= '0';
				if(count=31) then
				daclrc <= '1';
				else
				daclrc <= '0';
				end if;
				temp <= adcdat;
				
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 1;
				else
					statemachine <= 0;
					count<=31;
				end if;
				
------------------Other condition------------------
	
			when others => 
				statemachine<=0;
			
			end case;
--------------------Loop back test-------------------
		elsif(rising_edge(bclk)) then
		dacdat <= temp;
		end if;
	
	end process;
	
	
end architecture;