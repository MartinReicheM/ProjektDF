library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity DigitalFilter is
port (
	signalIn: in std_logic;
	signalOut: out std_logic;
	filterDataIn: in std_logic_vector(15 downto 0);
	filterDataOut: out std_logic_vector(15 downto 0)
	);
end DigitalFilter;
 
architecture rtl of DigitalFilter is

type inputs       is array(0 to 9) of std_logic_vector(15 downto 0);
type coefficiants is array(0 to 9) of std_logic_vector(15 downto 0); 
signal coeffarray : coefficiants;
signal arrayIn : inputs;
signal filterOutput	: std_logic_vector(31 downto 0):=(others=>'0');

 begin

 process(filterDataIn) is
 
 begin

coeffarray(0)<= "1111101100010011";
coeffarray(1)<= "0001111010010011";
coeffarray(2)<= "0011000010110111";
coeffarray(3)<= "0100000000000000";
coeffarray(4)<= "0100000000000000";
coeffarray(5)<= "0011000010110111";
coeffarray(6)<= "0001111010010011";
coeffarray(7)<= "1111101100010011";

--coeffarray(0)<="0000000011000100";
--coeffarray(1)<="0000001001001100";
--coeffarray(2)<="0000000010101100";
--coeffarray(3)<="0000110110000010";
--coeffarray(4)<="0001101111110110";
--coeffarray(5)<="0001101111110110";
--coeffarray(6)<="0000110110000010";
--coeffarray(7)<="0000000010101100";
--coeffarray(8)<="0000001001001100";
--coeffarray(9)<="0000000011000100";

--coeffarray(0)<= "0001001110001000";
--coeffarray(1)<= "0001001110001000";


 filterOutput <= - coeffarray(0) * arrayIn(0) + coeffarray(1) * arrayIn(1) + coeffarray(2) * arrayIn(2) + coeffarray(3) * arrayIn(3) + coeffarray(4) * arrayIn(4) + coeffarray(5) * arrayIn(5) + coeffarray(6) * arrayIn(6) - coeffarray(7) * arrayIn(7); 
--filterOutput<= -arrayIn(0)*coeffarray(0)-arrayIn(1)*coeffarray(1)+ arrayIn(2)*coeffarray(2)+arrayIn(3)*coeffarray(3)+ arrayIn(4)*coeffarray(4)+arrayIn(5)*coeffarray(5)+ arrayIn(6)*coeffarray(6)+arrayIn(7)*coeffarray(7)-arrayIn(8)*coeffarray(8)-arrayIn(9)*coeffarray(9);
 filterDataOut <= filterOutput(31 downto 16);--arrayIn(0);	 -- filterDataIn;

 if(rising_edge(signalIn)) then
 arrayIn(0)<= arrayIn(1);
 arrayIn(1)<=arrayIn(2);
 arrayIn(2)<=arrayIn(3);
 arrayIn(3)<=arrayIn(4);
 arrayIn(4)<=arrayIn(5);
 arrayIn(5)<=arrayIn(6);
 arrayIn(6)<=arrayIn(7);
 arrayIn(7)<=arrayIn(8);
 arrayIn(8)<=arrayIn(9);
 arrayIn(9)<=filterDataIn;
 end if;
 
 end process;
 
 end architecture;