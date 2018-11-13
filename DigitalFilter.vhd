library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DigitalFilter is 
port(
		reset : in 	std_logic;
		clock : in 	std_logic;
		input : in 	std_logic_vector(15 downto 0);
		output: out std_logic_vector(15 downto 0)
);
end entity;

architecture rtl of DigitalFilter is 

begin 

end architecture rtl;
