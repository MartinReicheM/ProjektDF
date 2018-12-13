library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity LCD is
port(
	i_ftype		: in std_logic;
	clock_400 	: in std_logic;
	lcd_rs		: out std_logic;
	lcd_e 		: out std_logic;
	lcd_rw 		: out std_logic;
	lcd_on 		: out std_logic;
	lcd_blon 	: out std_logic;
	reset_led 	: out std_logic;
	data_out_d 	: inout std_logic_vector(7 downto 0));
end entity LCD;



architecture rtl of LCD is

----------------Signals------------------------
signal state: integer range 0 to 12:=0;
signal nastasteg : integer range 0 to 12:=0;
signal counter: integer range 0 to 20:=0;
signal data_ctl: std_logic_vector(7 downto 0):="00000000";
signal lcd_rw1 : std_logic:='0'; 

----------------Skapar vektorer------------------

type C_string is array(0 to 19) of std_logic_vector(7 downto 0);
signal vektor,vektor1,vektor2,vektor3,Hvektor,Hvektor1,Hvektor2,Hvektor3,Lvektor,Lvektor1,Lvektor2,Lvektor3 : C_string;
begin

--Vektorer av ASCII kod-----
	
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="00"-----
	--line 1-----    Filter : IIR    -------------------------
	Hvektor <=(X"20",X"20",X"20",X"46",X"69",X"6C",X"74",X"65",X"72",X"20",X"3A",X"20",X"49",X"20",X"49",X"20",X"52",X"20",X"20",X"20"); 
	--line 2-----   Cut off:  6kHz   ------------------
	Hvektor1<=(X"20",X"20",X"20",X"43",X"75",X"74",X"20",X"6F",X"66",X"66",X"3A",X"20",X"20",X"36",X"6B",X"48",X"7A",X"20",X"20",X"20");
	--line 3----- Sampling frequency ----------------
	Hvektor2<=(X"20",X"53",X"61",X"6D",X"70",X"6C",X"69",X"6E",X"67",X"20",X"66",X"72",X"65",X"71",X"75",X"65",X"6E",X"63",X"79",X"20");
	--line 4-----     97.656 kHz     ---------------
 	Hvektor3<=(X"20",X"20",X"20",X"20",X"20",X"39",X"37",X"2E",X"36",X"35",X"36",X"20",X"6B",X"48",X"7A",X"20",X"20",X"20",X"20",X"20");
	
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="01"-----
	--line 1-----   Filter : FIR   -------------------------
	Lvektor<=(X"20",X"20",X"20",X"46",X"69",X"6C",X"74",X"65",X"72",X"20",X"3A",X"20",X"46",X"20",X"49",X"20",X"52",X"20",X"20",X"20");
	--line 2-----   Cut off:  5kHz   -------------------
	Lvektor1<=(X"20",X"20",X"20",X"43",X"75",X"74",X"20",X"6F",X"66",X"66",X"3A",X"20",X"20",X"35",X"6B",X"48",X"7A",X"20",X"20",X"20");
	--line 3----- Sampling frequency ----------------
	LVektor2<=(X"20",X"53",X"61",X"6D",X"70",X"6C",X"69",X"6E",X"67",X"20",X"66",X"72",X"65",X"71",X"75",X"65",X"6E",X"63",X"79",X"20");
	--line 4-----     97.656 kHz     ---------------
 	Lvektor3<=(X"20",X"20",X"20",X"20",X"20",X"39",X"37",X"2E",X"36",X"35",X"36",X"20",X"6B",X"48",X"7A",X"20",X"20",X"20",X"20",X"20");


vektor <= Hvektor when i_ftype<='0' else
			 Lvektor;
vektor1<= Hvektor1 when i_ftype<='0' else
			 Lvektor1;
vektor2<= Hvektor2 when i_ftype<='0' else
			 Lvektor2;
vektor3<= Hvektor3 when i_ftype<='0' else
			 Lvektor3; 
	

----------Utdata-----------
data_out_d <= data_ctl when lcd_rw1 = '0' else "ZZZZZZZZ";
lcd_rw <= lcd_rw1;

process (clock_400)
begin
--	if reset = '0' then
--		lcd_e <= '1';
--		lcd_rs <= '0';
--		lcd_rw1 <= '1';
--		data_ctl <= X"38";
--		state <= 0;
--		nastasteg <= 0;
--		reset_led<='1';
		
	if (clock_400'event and clock_400='1') then
			case state is
			
			-----------Initierar-------------
				when 0  =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"38";
					state <= 12;
					nastasteg <= 1;
					
			-----------Function set-------------
	
				when 1 => 
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"38";
					state <= 12;
					nastasteg <= 2;
					
         -----------Sätt på displayen-------------
				when 2 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"0C";
					state <= 12;
					nastasteg <= 3;
         
			-----------Entery mode set-------------
				when 3 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"06";
					state <= 12;
					nastasteg <= 4;
					
			------------Påbörja utskrivning av data------
				 when 4 =>
					reset_led<='1';
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					data_ctl <=vektor(counter);
					state <= 12;
					if(counter < 20) then
					counter<=counter + 1;
					nastasteg <= 4;
					else
					nastasteg <= 5;
					counter<=0;
					end if;
					
			------------Byte av rad------------
					
					when 5 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <="11000000";
					state <= 12;
					nastasteg <= 6;
					
			------------Utskrivning av data 2------------

					when 6 =>
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					state <= 12;
					data_ctl <=vektor1(counter);
					if(counter < 20) then
					counter<=counter + 1;
					nastasteg <= 6;
					else
					nastasteg <= 7;
					counter<=0;
					end if;
					
			------------Byte av rad------------
					
					when 7 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <="01100010";
					state <= 12;
					nastasteg <= 8;
					
			------------Utskrivning av data 3------------

					when 8 =>
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					state <= 12;
					data_ctl <=vektor2(counter);
					if(counter < 20) then
					counter<=counter + 1;
					nastasteg <= 8;
					else
					nastasteg <= 9;
					counter<=0;
					end if;
					
			------------Byte av rad------------
					
					when 9 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <="01010010";
					state <= 12;
					nastasteg <= 10;
			
			------------Utskrivning av data 4------------

					when 10 =>
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					state <= 12;
					data_ctl <=vektor3(counter);
					if(counter < 20) then
					counter<=counter + 1;
					nastasteg <= 10;
					else
					nastasteg <= 11;
					counter<=0;
					end if;		
					
					
			-------------Return home--------------				
				when 11 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <="00000010";
					state <= 12;
					nastasteg <= 4;
					counter<=0;
					
			-------------LCD_E låg--------------		
			
				when 12 =>
					lcd_e <= '0';
					state <= nastasteg;
				when others => state<=0;
				
			end case;
	end if;
end process;
end rtl;