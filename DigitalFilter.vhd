library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity DigitalFilter is 
port(
		reset 	: in 	std_logic;
		clock		: in 	std_logic;
		strIn		: in  std_logic;
		strOut	: out std_logic:='0';
		rdyIn		: in  std_logic;
		order 	: in  std_logic_vector(3 downto 0);
		Ftype		: in  std_logic_vector(3 downto 0);
		input 	: in 	std_logic_vector(15 downto 0);
		output	: out std_logic_vector(15 downto 0)
);
end entity;

architecture rtl of DigitalFilter is 
type inputs       is array(0 to 7) of std_logic_vector(15 downto 0);
type coefficiants is array(0 to 7) of std_logic_vector(15 downto 0); 
signal coeffarray : coefficiants;
signal inputarray : inputs;
signal inputtick	: integer range 0 to 7:=0;
signal loops 		: integer range 0 to 7:=0;
signal outVec		: std_logic_vector(15 downto 0):=(others=>'0');
signal multiVec	: std_logic_vector(31 downto 0):=(others=>'0');

begin 

coeffarray(0)<="0101010101010101";
coeffarray(1)<="0011001100110011";

process(clock, reset) is 
begin 
		if (reset = '0') then 
			loops<=0;
		
		elsif rising_edge(clock) then 
			if (loops < conv_integer(order)) then 
				multiVec <= coeffarray(loops)*inputarray(loops);
				outVec<= outVec + multiVec(31 downto 16);
				loops<=loops + 1;
			else 
				strOut<='1';
				
			end if; 
		
		end if;
	

end process;

output<=outVec when  rdyIn <= '1' else (others=>'Z'); 
		

end architecture rtl;
