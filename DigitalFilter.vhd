library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity DigitalFilter is 
port(
		reset 	: in 	std_logic;
		strInL	: in  std_logic;
		strInR	: in  std_logic;
		strOutL	: out std_logic;
		strOutR	: out std_logic;
		order 	: in  std_logic_vector(3 downto 0);
		Ftype		: in  std_logic_vector(3 downto 0);
		i_parLL	: in 	std_logic_vector(15 downto 0);
		i_parRR	: in 	std_logic_vector(15 downto 0);
		o_parLL	: out std_logic_vector(15 downto 0);
		o_parRR	: out std_logic_vector(15 downto 0)
);
end entity;

architecture rtl of DigitalFilter is 
type inputs       is array(0 to 3) of std_logic_vector(15 downto 0);
type coefficiants is array(0 to 7) of std_logic_vector(15 downto 0); 
signal coeffarray : coefficiants;
signal inputarrayL,inputarrayR : inputs;
signal inputtick	: integer range 0 to 7:=0;
signal loops 		: integer range 0 to 7:=0;
signal outVecLL	: std_logic_vector(31 downto 0):=(others=>'0');
signal outVecRR	: std_logic_vector(31 downto 0):=(others=>'0');

begin 
-----COEFFICIANTS FOR LP 9KHZ FIR FILTER -----
coeffarray(0)<="0000010011101100";
coeffarray(1)<="0001111010010011";
coeffarray(2)<="0000010011101100";
coeffarray(3)<="0011001100110011";

--	process(strInL, reset) is 
--	begin 
--		if (reset = '0') then 
--			loops<=0;
--		
--		elsif rising_edge(strInL) then 
--			if (loops < conv_integer(order)) then 
--				multiVec <= coeffarray(loops)*inputarrayL(loops);
--				outVec<= outVec + multiVec(31 downto 16);
--				loops<=loops + 1;
--			else 
--				
--			end if; 
--		
--		end if;
--	
--
--	end process;
	
	------- 2:nd order FIR filter --------------
	outVecLL<=coeffarray(0)*inputarrayL(0)+coeffarray(1)*inputarrayL(1)+coeffarray(2)*inputarrayL(2);
	o_parLL<=outVecLL(31 downto 16);
	--  o_parLL<=inputarrayL(0);
	o_parRR<=inputarrayR(0);
	strOutL<='1';
	strOutR<='1';
	
------------- Sampling 16bit array from WM8731 ------------------
	process(reset,strInL) is 
	begin 
		if (reset='0') then
			inputarrayL(0)<=(others=>'0');
			inputarrayL(1)<=(others=>'0');
			inputarrayL(2)<=(others=>'0');
			inputarrayL(3)<=(others=>'0');
		
		elsif rising_edge(strInL) then 
			inputarrayL(0)<=inputarrayL(1);
			inputarrayL(1)<=inputarrayL(2);
			inputarrayL(2)<=i_parLL;
		end if;
	end process;
	
	process(reset,strInR) is 
	begin 
		if (reset='0') then
			inputarrayR(0)<=(others=>'0');
			inputarrayR(1)<=(others=>'0');
			inputarrayR(2)<=(others=>'0');
			inputarrayR(3)<=(others=>'0');
			
		elsif rising_edge(strInR) then 
			inputarrayR(0)<=inputarrayR(1);
			inputarrayR(1)<=inputarrayR(2);
			inputarrayR(2)<=i_parRR;
		end if;
	end process;
	
end architecture rtl;
