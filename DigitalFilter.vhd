library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity DigitalFilter is
port (
	signalIn			:in  std_logic;
	signalOut		:out std_logic;
	i_ftype			:in  std_logic;
	o_ftype			:out std_logic;
	filterDataIn	:in  std_logic_vector(15 downto 0);
	filterDataOut	:out std_logic_vector(15 downto 0)
	);
end DigitalFilter;
 
architecture rtl of DigitalFilter is

type inputs       is array(0 to 9) of std_logic_vector(15 downto 0);
type coefficiants is array(0 to 9) of std_logic_vector(15 downto 0); 
signal fircoeffarray,biircoeffarray,aiircoeffarray : coefficiants;
signal arrayIn,arrayOut : inputs;
signal filterOutput	: std_logic_vector(31 downto 0):=(others=>'0');

 begin
 o_ftype<=i_ftype;

 process(signalIn) is
 
 begin
	if(i_ftype='1') then 
	
		fircoeffarray(0)<= "1111101100010011"; -- 64275
		fircoeffarray(1)<= "0001111010010011"; -- 7827
		fircoeffarray(2)<= "0011000010110111"; -- 12471
		fircoeffarray(3)<= "0100000000000000"; -- 16384
		fircoeffarray(4)<= "0100000000000000"; -- 16384
		fircoeffarray(5)<= "0011000010110111"; -- 12471
		fircoeffarray(6)<= "0001111010010011"; -- 7827
		fircoeffarray(7)<= "1111101100010011"; -- 64275

		filterOutput <= - fircoeffarray(0) * arrayIn(0) + fircoeffarray(1) * arrayIn(1) + fircoeffarray(2) * arrayIn(2) + fircoeffarray(3) * arrayIn(3) + fircoeffarray(4) * arrayIn(4) + fircoeffarray(5) * arrayIn(5) + fircoeffarray(6) * arrayIn(6) - fircoeffarray(7) * arrayIn(7); 
	else
		biircoeffarray(0)<="1111101100010011"; --588
		biircoeffarray(1)<="0001111010010011"; --172
		biircoeffarray(2)<="0011000010110111"; --3458
		biircoeffarray(3)<="0100000000000000"; --7158
		biircoeffarray(4)<="0100000000000000";
		biircoeffarray(5)<="0011000010110111";
		biircoeffarray(6)<="0001111010010011";
		biircoeffarray(7)<="1111101100010011";


		aiircoeffarray(0)<="0000011001010100";
		aiircoeffarray(1)<="0001000010000000";
		aiircoeffarray(2)<="0010001010100010";
		aiircoeffarray(3)<="0001001000101110";
		aiircoeffarray(4)<="0001001000101110";
		aiircoeffarray(5)<="0010001010100010";
		aiircoeffarray(6)<="0001000010000000";
		aiircoeffarray(7)<="0000011001010100";

		filterOutput<= -biircoeffarray(0)*arrayIn(0)-biircoeffarray(1)*arrayIn(1)+biircoeffarray(2)*arrayIn(2)+biircoeffarray(3)*arrayIn(3)+biircoeffarray(4)*arrayIn(4)+biircoeffarray(5)*arrayIn(5)+biircoeffarray(6)*arrayIn(6)+biircoeffarray(7)*arrayOut(7)-aiircoeffarray(0)*arrayOut(0)-aiircoeffarray(1)*arrayOut(1)+aiircoeffarray(2)*arrayOut(2)+aiircoeffarray(3)*arrayOut(3)+aiircoeffarray(4)*arrayOut(4)+aiircoeffarray(5)*arrayOut(5)+aiircoeffarray(6)*arrayOut(6)+aiircoeffarray(7)*arrayOut(7);
	end if;


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
 
  if(rising_edge(signalIn)) then
 arrayOut(0)<= arrayOut(1);
 arrayOut(1)<=arrayOut(2);
 arrayOut(2)<=arrayOut(3);
 arrayOut(3)<=arrayOut(4);
 arrayOut(4)<=arrayOut(5);
 arrayOut(5)<=arrayOut(6);
 arrayOut(6)<=arrayOut(7);
 arrayOut(7)<=arrayOut(8);
 arrayOut(8)<=arrayOut(9);
 arrayOut(9)<=filterOutput(31 downto 16);
 end if;
 
 end process;
 
 end architecture;