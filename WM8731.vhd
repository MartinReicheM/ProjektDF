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
	strobe	: out std_logic;
	toFilter : out std_logic_vector(15 downto 0);
	fromFilter : in std_logic_vector(15 downto 0)
	);
 end entity;
 
architecture rtl of WM8731 is

	----Signals----
	signal statemachine	: integer range 0 to 1 :=0;
	signal outstate		: integer range 0 to 1 :=0;
	signal outcount		: integer range 0 to 31:=0;
	signal outcounter		: integer range 0 to 15:=15;
	signal count : integer range 0 to 31 := 31;
	signal counter : integer range 0 to 15 := 15;
	signal temp : std_logic;
	signal dataToFIR: std_logic_vector (15 downto 0):= "0000000000000000";
	signal dataFromFIR: std_logic_vector (15 downto 0):= "0000000000000000";
	
	signal count1 : integer range 0 to 31 := 31;
	signal counter1 : integer range 0 to 15 := 15;
	signal lrc: integer := 0;
	signal lrc1: integer := 0;
	
	begin
	
	process(bclk)
	
	begin
	
		if(falling_edge(bclk)) then
	
			case statemachine is
			
--------------------Read  Left--------------------
			
			when 0 =>
			adclrc <= '1';

				if(count>29) then
						daclrc <= '0';
						
				else
						daclrc <= '1';

				end if;
				
				if(count< 31 AND count>=15) then    --
							dataToFIR(counter) <= adcdat;
							temp <= dataFromFIR(counter);
							counter <= counter-1;
				elsif(count = 14) then
							toFilter <= dataToFIR;
							strobe <= '1';
							temp <= '0';
				elsif(count = 13) then 
							strobe<='0';
							temp<='0';
				elsif(count = 2) then
							dataFromFIR <= fromFilter; 
							strobe <= '0';
							temp <= '0';
				end if;
				
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 0;
				else
					statemachine <= 1;
					count<=31;
					counter <= 15;
				end if;
				
			when 1 =>
			adclrc <= '0';

				if(count>29) then
					daclrc <= '1';
				else
					daclrc <= '0';

				end if;
				
				if(count< 31 AND count>=15) then --
						temp <= dataToFIR(counter);
						counter <= counter-1;
					else
						temp <= '0';
					end if;
								
				if((count-1)>=0) then
					count <= count - 1;
					statemachine <= 1;
				else
					statemachine <= 0;
					count<=31;
					counter <= 15;
				end if;
				
------------------Other condition------------------
	
			when others => 
				statemachine<=0;
			
			end case;
--------------------Implementing Filter-------------------
		elsif(rising_edge(bclk)) then
		dacdat <= temp;
		end if;
	
	end process;
	
end architecture;