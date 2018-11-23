library ieee;
use IEEE.std_logic_1164.all;

entity i2c is
port(
	clock: in std_logic;
	sda: inout std_logic;
	scl: out std_logic
	);
 end entity;
 
 architecture rtl of i2c is
 
 ----Signals----
 signal statemachine: integer range 0 to 15 :=0;
 signal count: integer range 0 to 7 :=7;
 signal ack: std_logic:= '0';
 
 signal start_strobe1: std_logic:='0';
 signal clock_counter: integer := 0;
 signal counter: integer := 0;
 
  ----SDA and SCL signals----
 signal sda_out: std_logic:='1';
 signal scl_out: std_logic:='0';
 
 ----Slave adress----
 constant addr_slave: std_logic_vector(7 downto 0) :="0011010"&'0'; --Slave address + write
 
 --Register values
 constant R0: std_logic_vector (7 downto 0) := "00000000";
 constant R00: std_logic_vector (7 downto 0):= "00011111";
 constant R1: std_logic_vector (7 downto 0) := "00000010"; 
 constant R11: std_logic_vector (7 downto 0):= "00110111";
 constant R2: std_logic_vector (7 downto 0) := "00000100"; 
 constant R22: std_logic_vector (7 downto 0):= "01111001"; 
 constant R3: std_logic_vector (7 downto 0) := "00000110";
 constant R33: std_logic_vector (7 downto 0):= "00110000"; 
 constant R4: std_logic_vector (7 downto 0) := "00001000"; 
 constant R44: std_logic_vector (7 downto 0):= "11010010"; 
 constant R5: std_logic_vector (7 downto 0) := "00001010"; 
 constant R55: std_logic_vector (7 downto 0):= "00000110"; 
 constant R6: std_logic_vector (7 downto 0) := "00001100"; 
 constant R66: std_logic_vector (7 downto 0):= "01100010"; 
 constant R7: std_logic_vector (7 downto 0) := "00001110";
 constant R77: std_logic_vector (7 downto 0):= "00000011";
 constant R8: std_logic_vector (7 downto 0) := "00010000";
 constant R88: std_logic_vector (7 downto 0):= "00000000"; 
 constant R9: std_logic_vector (7 downto 0) := "00010010"; 
 constant R99: std_logic_vector (7 downto 0):= "00000001"; 
 constant R15: std_logic_vector (7 downto 0):= "00011110"; 
 constant R1515: std_logic_vector (7 downto 0):= "00000000"; 
 
 begin
 
 sda <= 'Z' when sda_out='1' else '0';
 scl <= scl_out;
 
 process(clock)
 begin
 
 if(counter=11) then
 scl_out<='1';
 sda_out<='1';
 statemachine<=0;
 
 elsif rising_edge(clock) then
 
   clock_counter<=clock_counter+1;
	if(clock_counter=199999) then
	clock_counter<=0;
	start_strobe1 <= not(start_strobe1);
	end if;
 
 case statemachine is
 
 --------------------IDLE STATE--------------------- 
		when 0 =>
			scl_out<='1';
			sda_out<='1'; --Sda ansätts till Z.
			if(start_strobe1<='0') then
			statemachine <= statemachine + 1;
			end if;
			
 --------------------Start STATE--------------------
 
		when 1 =>
			scl_out<='1';
			sda_out <= '0';
			count<=7;
			statemachine <=statemachine + 1;
			
 --------------------Address Byte-------------------		

		when 2 =>
			scl_out<='0';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
		
		when 3=>
			scl_out<='1';
			sda_out <=addr_slave(count);
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 2;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
			
 --------------------ACK by Slave---------------------
		
		when 4=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 5=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 4;
			else 
			statemachine <= 6;
			end if;
			
 ----------------------DATA out (1)-------------------
			
		when 6 =>
		scl_out<='0';
		
		if(counter =0) then
		sda_out <=R15(count);
		elsif(counter =1) then
		sda_out <=R0(count);
		elsif(counter=2)then
		sda_out <=R1(count);
		elsif(counter=3) then
		sda_out <=R2(count);
		elsif(counter=4) then
		sda_out <=R3(count);
		elsif(counter=5) then
		sda_out <=R4(count);
		elsif(counter=6) then
		sda_out <=R5(count);
		elsif(counter=7) then
		sda_out <=R6(count);
		elsif(counter=8) then
		sda_out <=R7(count);
		elsif(counter=9) then
		sda_out <=R8(count);
		elsif(counter=10) then
		sda_out <=R9(count);
		end if;
		
		statemachine <=statemachine + 1;
		
		when 7=>
			scl_out<='1';
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 6;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
			
 --------------------ACK by slave-------------------
 
		when 8=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 9=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 8;
			else 
			statemachine <= 10;
			end if;			

 ----------------------DATA out (2)-------------------
		when 10 =>
		scl_out<='0';
		
		if(counter =0) then
		sda_out <=R1515(count);
		elsif(counter =1) then
		sda_out <=R00(count);
		elsif(counter=2)then
		sda_out <=R11(count);
		elsif(counter=3) then
		sda_out <=R22(count);
		elsif(counter=4) then
		sda_out <=R33(count);
		elsif(counter=5) then
		sda_out <=R44(count);
		elsif(counter=6) then
		sda_out <=R55(count);
		elsif(counter=7) then
		sda_out <=R66(count);
		elsif(counter=8) then
		sda_out <=R77(count);
		elsif(counter=9) then
		sda_out <=R88(count);
		elsif(counter=10) then
		sda_out <=R99(count);
		end if;

		statemachine <=statemachine + 1;
		
		when 11=>
			scl_out<='1';
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 10;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
 
 --------------------Ack by Slave----------------
 
		when 12=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 13=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 12;
			else 
			statemachine <= 14;
			end if;	
 
 -----------------------Stop------------------------

		when 14 =>
			scl_out<='1';
			sda_out<='0'; 
			statemachine <=statemachine + 1;
			
		when 15 =>
			scl_out<='1';
			sda_out<='1'; 
			statemachine <=0;
			counter <= counter+1; 
			
-------------------Other condition-------------------
		when others => statemachine<=1;
		
 end case;
 end if;
 end process;
 end rtl;


			

			
			
			

			
			


		
		
			
		
		