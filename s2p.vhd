library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity s2p is 
port( 
	reset				: in 	std_logic;
	bClock			: in 	std_logic;
	strIn				: in 	std_logic;
	strOut			: out std_logic:='0';
	rdyIn				: in  std_logic;
	rdyOut			: out std_logic:='0';
	serialIn 		: in 	std_logic;
	parallellIn		: in 	std_logic_vector(15 downto 0);
	serialOut		: out std_logic:='0';
	parallellOut	: out std_logic_vector(15 downto 0):=(others=>'0')
	);
end entity s2p;

--Using Rdy signals to signal when logic can be received, strobe signals to signal when 
--signals can be sent

architecture rtl of s2p is 
	signal tmpS2P 	: std_logic_vector(15 downto 0):=(others=>'0');
	signal sndS2P	: std_logic_vector(15 downto 0):=(others=>'0');
	signal tmpP2S	: std_logic_vector(15 downto 0):=(others=>'0');
	signal p2sTick : integer range 0 to 15 :=0;
	signal s2pTick : integer range 0 to 15 :=0;
	signal p2sInter: std_logic;
begin
 
	process(reset,bClock) is 
	begin
		if (reset='0') then 
				strOut		<='0';
				rdyOut		<='0';
				serialOut	<='0';
				p2sInter		<='0';
				p2sTick		<= 0 ;
				tmpP2S		<=(others=>'0');
				s2pTick		<=0;
				tmps2P		<=(others=>'0');
				parallellOut<=(others=>'0');
				
		
		elsif rising_edge(bClock) then 
		
----------- Sending processed 16bit arrays to a bitstream -----------

				if (p2sTick = 0 and strIn='1') then
					tmpp2s <= parallellIn;
					rdyOut <= '1';
					p2sInter<=tmpP2S(p2sTick);
					p2sTick<= p2sTick+1;
					
				elsif(p2sTick > 0 and p2sTick < 16) then 
					p2sInter<=tmpP2S(p2sTick);
					p2sTick<=p2sTick+1;
				else 
					p2sTick<=0;
					rdyOut<='0';
					p2sInter<='Z';
				end if;
				
----------- Receiving bitstream chunked up to 16bit arrays -----------
				
				if (s2pTick < 16) then 
					tmpS2P(s2pTick)<=serialIn;
					s2pTick<=s2pTick+1;
				else
					sndS2P<=tmpS2P;
					s2pTick<=0;
				end if;
				
		end if;
		
	end process;
	serialOut <= p2sInter;
	parallellOut<=sndS2P;
	
end architecture rtl;
	