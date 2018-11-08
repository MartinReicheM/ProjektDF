Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock_divider is
port(	clock_100,reset: in std_logic;
		clock_400		: out std_logic;
		clock_125		: out std_logic
		);
end entity;

architecture rtl of clock_divider is 
----initiating the required parameters to divide the 100Mhz clock----
signal clock_400_internal:std_logic:='0';
signal clock_125_internal:std_logic:='0';


signal clock_400_ticker: std_logic_vector(17 downto 0):="000000000000000000";
signal clock_125_ticker: std_logic_vector(3 downto 0):="0000";


begin

	process(clock_100,reset) is
	begin
		if (reset='0') then 
			clock_400_internal<='0';
			clock_400_ticker<="000000000000000000";
		elsif rising_edge(clock_100) then
			if (clock_400_ticker>="111101000010010000") then
				clock_400_internal	<= NOT(clock_400_internal);
				clock_400_ticker<="000000000000000000";
			else clock_400_ticker<=clock_400_ticker+"1";
			end if;
			
			if (clock_125_ticker>="1111") then
				clock_125_internal	<= NOT(clock_125_internal);
				clock_125_ticker<="0000";
			else clock_125_ticker<=clock_125_ticker+"1";
			end if;
			
		end if;
	end process;

clock_400<=clock_400_internal;
clock_125<=clock_125_internal;

end architecture rtl;		