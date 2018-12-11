library ieee;
use IEEE.std_logic_1164.all;

entity i2c is
port(
	clock: in std_logic;
	sda: inout std_logic;
	scl: out std_logic;
	check: out std_logic
	);
 end entity;
 
 architecture rtl of i2c is
 
 ---Signals---
 signal count: integer range 0 to 7 :=7;
 signal c: integer range 0 to 2 :=0;
 signal ack: std_logic:= '0';
 signal start_strobe1: std_logic:='0';
 signal clock_counter: integer := 0;
 signal counter: integer := 0;
 signal stateCounter: integer := 0;
 
 ---SDA and SCL signals---
 signal sda_out: std_logic:='1';
 signal scl_out: std_logic:='0';
 
 ---Slave adress---
 constant addr_slave: std_logic_vector(7 downto 0) :="00110100"; --Slave address + write
 
 ---Register values---
 constant R0: std_logic_vector (7 downto 0) := "00000000"; --R0
 constant R00: std_logic_vector (7 downto 0):= "00010000"; 
 constant R1: std_logic_vector (7 downto 0) := "00000011"; --R1
 constant R11: std_logic_vector (7 downto 0):= "00110111";--00010000 
 constant R2: std_logic_vector (7 downto 0) := "00000101"; --R2
 constant R22: std_logic_vector (7 downto 0):= "01111001"; 
 constant R3: std_logic_vector (7 downto 0) := "00000111"; --R3
 constant R33: std_logic_vector (7 downto 0):= "01111011"; 
 constant R4: std_logic_vector (7 downto 0) := "00001000"; --R4
 constant R44: std_logic_vector (7 downto 0):= "11010000"; 
 constant R5: std_logic_vector (7 downto 0) := "00001010"; --R5
 constant R55: std_logic_vector (7 downto 0):= "00000110"; 
 constant R6: std_logic_vector (7 downto 0) := "00001100"; --R6
 constant R66: std_logic_vector (7 downto 0):= "00000000"; 
 constant R7: std_logic_vector (7 downto 0) := "00001110"; --R7
 constant R77: std_logic_vector (7 downto 0):= "00000001"; 
 constant R8: std_logic_vector (7 downto 0) := "00010000"; --R8
 constant R88: std_logic_vector (7 downto 0):= "00000000"; 
 constant R9: std_logic_vector (7 downto 0) := "00010010"; --R9
 constant R99: std_logic_vector (7 downto 0):= "00000001"; 
 constant R15: std_logic_vector (7 downto 0):= "00011110"; --R15
 constant R1515: std_logic_vector (7 downto 0):= "00000000";
 
-- constant R0: std_logic_vector (7 downto 0) := "00000000"; --R0
-- constant R00: std_logic_vector (7 downto 0):= "00010000"; --00010000
-- constant R1: std_logic_vector (7 downto 0) := "00000011"; --R1
-- constant R11: std_logic_vector (7 downto 0):= "00110111"; --00010000 --00110111
-- constant R2: std_logic_vector (7 downto 0) := "00000101"; --R2		 --00000101
-- constant R22: std_logic_vector (7 downto 0):= "01111001"; --01111001
-- constant R3: std_logic_vector (7 downto 0) := "00000111"; --R3		 --00000111
-- constant R33: std_logic_vector (7 downto 0):= "01111011"; --01111001 --01111011
-- constant R4: std_logic_vector (7 downto 0) := "00001000"; --R4
-- constant R44: std_logic_vector (7 downto 0):= "11010000"; --11010000
-- constant R5: std_logic_vector (7 downto 0) := "00001010"; --R5
-- constant R55: std_logic_vector (7 downto 0):= "00000110"; --00000110
-- constant R6: std_logic_vector (7 downto 0) := "00001100"; --R6
-- constant R66: std_logic_vector (7 downto 0):= "00000000"; --00000000
-- constant R7: std_logic_vector (7 downto 0) := "00001110"; --R7
-- constant R77: std_logic_vector (7 downto 0):= "00000001"; --00000001
-- constant R8: std_logic_vector (7 downto 0) := "00010000"; --R8
-- constant R88: std_logic_vector (7 downto 0):= "00000000"; --00000000
-- constant R9: std_logic_vector (7 downto 0) := "00010010"; --R9
-- constant R99: std_logic_vector (7 downto 0):= "00000001"; --00000001
-- constant R15: std_logic_vector (7 downto 0):= "00011110"; --R15
-- constant R1515: std_logic_vector (7 downto 0):= "00000000";--00000000

 
 ---Statemachine declaration---
 type statetype is (idle,start,addrSlave,sendData,sendData1,acknowledge,stop,turnback);
 signal statemachine: statetype;
 
 begin
 
 sda <= 'Z' when sda_out='1' else '0';
 scl <= scl_out;
 
 process(clock)
 begin
 
 if(counter=11) then
 scl_out<='1';
 sda_out<='1';
 check <= '1';
 
 elsif rising_edge(clock) then
 
 case statemachine is
 
 --------------------IDLE STATE--------------------- 
		when idle =>
			scl_out<='1';
			sda_out<='1'; 
			
			check <= '0';
			stateCounter <= 0;
			count <= 7;
			c<=0;
			statemachine <= start;
			
--------------------Start STATE--------------------
 
		when start => 
			
			if(stateCounter = 0 or stateCounter = 1) then
				scl_out<='1';
				sda_out <= '0';
				stateCounter <= stateCounter + 1;
				statemachine <=start;
			elsif(stateCounter = 2) then
				scl_out<='0';
				sda_out <= '0';
				stateCounter <= 0;
				statemachine <=addrSlave;
			end if;
			
--------------------Address Byte--------------------

		when addrSlave =>
		
		if(stateCounter = 0) then
			scl_out<='0';
			sda_out<=addr_slave(count);
			stateCounter <= stateCounter + 1;
			statemachine <= addrSlave;
		elsif(stateCounter = 1 or stateCounter = 2) then
			scl_out<='1';
			sda_out <=addr_slave(count);
			stateCounter <= stateCounter + 1;
			statemachine <= addrSlave;
		else
			scl_out<='0';
			sda_out <=addr_slave(count);
			stateCounter <=0;

			if((count-1)>=0) then
				count <= count - 1;
				statemachine <= addrSlave;
			else
				statemachine <= acknowledge;
				count <= 7;
			end if;
		end if;
			
 --------------------ACK by Slave---------------------
		
		when acknowledge =>
		
		if(stateCounter = 0) then
			scl_out<='0';
			sda_out<='1';
			stateCounter <= stateCounter + 1;
			statemachine <= acknowledge;
			
		elsif(stateCounter = 1 or stateCounter = 2) then
			scl_out<='1';
			sda_out<='1';	
			ack<=sda;
			stateCounter <= stateCounter + 1;
			statemachine <= acknowledge;
		else
			scl_out<='0';
			sda_out <='1';
			stateCounter <=0;
			
			if ack = '0' then
				if(c=0) then
					statemachine <= sendData;
					c<=c+1;
				elsif(c=1) then
					statemachine <= sendData1;
					c<=c+1;
				else
					statemachine <= stop;
				end if;
					count <= 7;
			else 
				statemachine <= acknowledge;
			end if;
		end if;
		
 ----------------------DATA out (1)-------------------
 
 when sendData =>
		if(counter = 0) then
			sda_out <= R15(count);
		elsif(counter = 1) then
			sda_out <= R0(count);
		elsif(counter = 2) then
			sda_out <= R1(count);
		elsif(counter = 3) then
			sda_out <= R2(count);
		elsif(counter = 4) then
			sda_out <= R3(count);
		elsif(counter = 5) then
			sda_out <= R4(count);
		elsif(counter = 6) then
			sda_out <= R5(count);
		elsif(counter = 7) then
			sda_out <= R6(count);
		elsif(counter = 8) then
			sda_out <= R7(count);
		elsif(counter = 9) then
			sda_out <= R8(count);
		else
			sda_out <= R9(count);
		end if;
		
		if(stateCounter = 0) then
			scl_out<='0';
			stateCounter <= stateCounter + 1;
			statemachine <= sendData;
		elsif(stateCounter = 1 or stateCounter = 2) then
			scl_out<='1';
			stateCounter <= stateCounter + 1;
			statemachine <= sendData;
		else
			scl_out<='0';
			stateCounter <=0;
			if((count-1)>=0) then
				count <= count - 1;
				statemachine <= sendData;
			else
				statemachine <= acknowledge;
			end if;
		end if;
		
----------------------DATA_out2-------------------

when sendData1 =>
		
		if(counter = 0) then
			sda_out <= R1515(count);
		elsif(counter = 1) then
			sda_out <= R00(count);
		elsif(counter = 2) then
			sda_out <= R11(count);
		elsif(counter = 3) then
			sda_out <= R22(count);
		elsif(counter = 4) then
			sda_out <= R33(count);
		elsif(counter = 5) then
			sda_out <= R44(count);
		elsif(counter = 6) then
			sda_out <= R55(count);
		elsif(counter = 7) then
			sda_out <= R66(count);
		elsif(counter = 8) then
			sda_out <= R77(count);
		elsif(counter = 9) then
			sda_out <= R88(count);
		else
			sda_out <= R99(count);
		end if;
		
		if(stateCounter = 0) then
			scl_out<='0';
			stateCounter <= stateCounter + 1;
			statemachine <= sendData1;
		elsif(stateCounter = 1 or stateCounter = 2) then
			scl_out<='1';
			stateCounter <= stateCounter + 1;
			statemachine <= sendData1;
		else
			scl_out<='0';
			stateCounter <=0;

			if((count-1)>=0) then
				count <= count - 1;
				statemachine <= sendData1;
			else
				statemachine <= acknowledge;
			end if;
		end if;

 ----------------------Stop-------------------
			
		when stop =>
		
		if(stateCounter = 0) then
			scl_out<='0';
			sda_out<='0';
			stateCounter <= stateCounter + 1;
			statemachine <= stop;
 		elsif(stateCounter=1) then
			scl_out<='1';
			sda_out<='0';
			stateCounter <= stateCounter + 1;
			statemachine <= stop;
		else
			scl_out<='1';
			sda_out<='1';
			counter <= counter+1;
			stateCounter <= stateCounter + 1;
			statemachine <=idle;
		end if;
	
-------------------Other condition-------------------
		when others => statemachine<=idle;
		
 end case;
 
 end if;
 end process;
 end rtl;