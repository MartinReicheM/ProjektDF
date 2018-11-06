library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity LCD_display is
port(
	display_modes: in std_logic_vector(1 downto 0):="00";
	reset: in std_logic;
	clock_400 : in std_logic;
	lcd_rs: out std_logic;
	lcd_e : out std_logic;
	lcd_rw : out std_logic;
	lcd_on : out std_logic;
	lcd_blon : out std_logic;
	LCD1,LCD2,LCD3,LCD4,LCD5,LCD6,LCD7: in std_logic_vector(7 downto 0):=X"2A";
	data_out_d : inout std_logic_vector(7 downto 0);
	reset_led :out std_logic);
end entity LCD_display;



architecture rtl of LCD_display is

----------------Signals------------------------
signal state: integer range 0 to 8:=0;
signal nastasteg : integer range 0 to 8:=0;
signal counter: integer range 0 to 16:=0;
signal data_ctl: std_logic_vector(7 downto 0):="00000000";
signal lcd_rw1 : std_logic:='0'; 

----------------Skapar vektorer------------------

type C_string is array(0 to 15) of std_logic_vector(7 downto 0);
signal vektor,vektor1,Hvektor,Hvektor1,Lvektor,Lvektor1,Avektor,Avektor1,Gvektor,Gvektor1 : C_string;
begin

--Vektorer av ASCII kod-----
	
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="00"-----
	--line 1-----    Welcome     -------------------------
	Hvektor <=(
	X"20",X"20",X"20",X"20",X"57",X"65",X"6C",X"63",X"6F",X"6D",X"65",X"20",X"20",X"20",X"20",X"20"); 
	--line 2-----Clock:HH.MM.SS------------------
	Hvektor1<=(X"43",X"6C",X"6F",X"63",X"6B",X"3A",LCD1,LCD2,X"2E",LCD3,LCD4,X"2E",LCD5,LCD6,X"20",X"20");
	
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="01"-----
	--line 1-----   Lattitude:   -------------------------
	Lvektor<=(
	X"20",X"20",X"20",X"4C",X"61",X"74",X"74",X"69",X"74",X"75",X"64",X"65",X"3A",X"20",X"20",X"20");
	--line 2-----LL deg LL.LL' [N or S]-------------------
	Lvektor1<=(LCD1,LCD2,X"20",X"64",X"65",X"67",X"20",LCD3,LCD4,X"2E",LCD5,LCD6,X"27",X"20",LCD7,X"20");
	 
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="10"-----
	--line 1-----   Longitude:   -------------------------
	Avektor<=(
	X"20",X"20",X"20",X"4C",X"6F",X"6E",X"67",X"69",X"74",X"75",X"64",X"65",X"3A",X"20",X"20",X"20");
	--line 2-----yy deg yy.yy' [E or W] -------------------
	Avektor1<=(LCD1,LCD2,X"20",X"64",X"65",X"67",X"20",LCD3,LCD4,X"2E",LCD5,LCD6,X"27",X"20",LCD7,X"20");
	
	-----THIS WILL BE DISPLAYED IN DISPLAY_MODES="11"-----
	--line 1-----     Fix: a     -------------------------
	Gvektor<=(
	X"20",X"20",X"20",X"20",X"20",X"46",X"69",X"78",X"3A",X"20",LCD1,X"20",X"20",X"20",X"20",X"20");
	--line 2----- Satelites:  nn -------------------------
	Gvektor1<=(X"20",X"53",X"61",X"74",X"65",X"6C",X"69",X"74",X"65",X"73",X"3A",X"20",X"20",LCD1,LCD2,X"20");

vektor <= Hvektor when display_modes<="00" else
			 Lvektor when display_modes<="01" else
			 Avektor when display_modes<="10" else
			 Gvektor;
vektor1<= Hvektor1 when display_modes<="00" else
			 Lvektor1 when display_modes<="01" else
			 Avektor1 when display_modes<="10" else
			 Gvektor1;
lcd_on <= '1';
lcd_blon <= '1';

----------Utdata-----------
data_out_d <= data_ctl when lcd_rw1 = '0' else "ZZZZZZZZ";
lcd_rw <= lcd_rw1;

process (clock_400,reset)
begin
	if reset = '0' then
		lcd_e <= '1';
		lcd_rs <= '0';
		lcd_rw1 <= '1';
		data_ctl <= X"38";
		state <= 0;
		nastasteg <= 0;
		reset_led<='1';
		
	elsif (clock_400'event and clock_400='1') then
			case state is
			
			-----------Initierar-------------
				when 0  =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"38";
					state <= 8;
					nastasteg <= 1;
					
			-----------Function set-------------
	
				when 1 => 
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"38";
					state <= 8;
					nastasteg <= 2;
					
         -----------Sätt på displayen-------------
				when 2 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"0C";
					state <= 8;
					nastasteg <= 3;
         
			-----------Entery mode set-------------
				when 3 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <= X"06";
					state <= 8;
					nastasteg <= 4;
					
			------------Påbörja utskrivning av data------
				 when 4 =>
					reset_led<='1';
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					data_ctl <=vektor(counter);
					state <= 8;
					if(counter < 16) then
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
					state <= 8;
					nastasteg <= 6;
					
			------------Utskrivning av data------------

					when 6 =>
					lcd_e <= '1';
					lcd_rs <= '1';
					lcd_rw1 <= '0';
					state <= 8;
					data_ctl <=vektor1(counter);
					if(counter < 16) then
					counter<=counter + 1;
					nastasteg <= 6;
					else
					nastasteg <= 7;
					counter<=0;
					end if;
					
			-------------Return home--------------				
				when 7 =>
					lcd_e <= '1';
					lcd_rs <= '0';
					lcd_rw1 <= '0';
					data_ctl <="00000010";
					state <= 8;
					nastasteg <= 4;
					counter<=0;
					
			-------------LCD_E låg--------------		
			
				when 8 =>
					lcd_e <= '0';
					state <= nastasteg;
				when others => state<=0;
				
			end case;
	end if;
end process;
end rtl;