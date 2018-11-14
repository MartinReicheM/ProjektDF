library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity WM8731 is 

port(
		clock50		: in  std_logic;
		AUD_BCLK		: out std_logic;
		AUD_XCK		: out std_logic;
		AUD_ADCLRCK	: out std_logic;
		AUD_ADCDAT	: in  std_logic;
		AUD_DACLRCK	: out std_logic;
		AUD_DACDAT	: out std_logic
);

end entity WM8731;

architecture rtl of WM8731 is 

begin 



end rtl;