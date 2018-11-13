library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity test is 
port( 
		input		: in  std_logic;
		clock1	: in  std_logic;
		output	: out std_logic
		);
end entity test



architecture rtl of test is 
signal inputt: std_logic;
begin 
process(clock1) is 
begin 
	if rising_edge(clock1) then 
		inputt<=input;
	end if;
end process;
output<=inputt;
end rtl;