library ieee;
use IEEE.std_logic_1164.all;

entity i2c is
port(
	clock: in std_logic;
	reset: in std_logic;
	sda: inout std_logic;
	scl: out std_logic;
	check: out std_logic
	);
 end entity;
 
 architecture rtl of i2c is
 
 ----Signals----
 signal statemachine: integer range 0 to 30 :=0;
 signal count: integer range 0 to 7 :=7;
 signal c: integer range 0 to 1 :=0;

 signal ack: std_logic:= '0';
 
 signal start_strobe1: std_logic:='0';
 signal clock_counter: integer := 0;
 signal counter: integer := 0;
 
  ----SDA and SCL signals----
 signal sda_out: std_logic:='1';
 signal scl_out: std_logic:='0';
 
 ----Slave adress----
 constant addr_slave: std_logic_vector(7 downto 0) :="00110100"; --Slave address + write
 
 --Register values
 constant R0: std_logic_vector (7 downto 0) :=x"00"; --00
 constant R00: std_logic_vector (7 downto 0):=x"10"; --10
 constant R1: std_logic_vector (7 downto 0) :=x"02"; --02
 constant R11: std_logic_vector (7 downto 0):=x"10"; --10
 constant R2: std_logic_vector (7 downto 0) :=x"04"; --04
 constant R22: std_logic_vector (7 downto 0):=x"79"; --79
 constant R3: std_logic_vector (7 downto 0) :=x"06"; --06	-fel?
 constant R33: std_logic_vector (7 downto 0):=x"79"; --79
 constant R4: std_logic_vector (7 downto 0) :=x"08"; --08   -fel?
 constant R44: std_logic_vector (7 downto 0):=x"D0"; --D0
 constant R5: std_logic_vector (7 downto 0) :=x"0A"; --0A   -fel?
 constant R55: std_logic_vector (7 downto 0):=x"06"; --06
 constant R6: std_logic_vector (7 downto 0) :=x"0C"; --0C
 constant R66: std_logic_vector (7 downto 0):=x"00"; --00
 constant R7: std_logic_vector (7 downto 0) :=x"0E"; --0E
 constant R77: std_logic_vector (7 downto 0):=x"0A"; --0A
 constant R8: std_logic_vector (7 downto 0) :=x"10"; --10
 constant R88: std_logic_vector (7 downto 0):=x"00"; --00
 constant R9: std_logic_vector (7 downto 0) :=x"12"; --12
 constant R99: std_logic_vector (7 downto 0):=x"01"; --01
 constant R15: std_logic_vector (7 downto 0):= x"00"; --00
 constant R1515: std_logic_vector (7 downto 0):= x"00"; --00
 
 begin
 
 sda <= 'Z' when sda_out='1' else '0';
 scl <= scl_out;
 
 process(clock)
 begin
 
 if(counter=5) then
 scl_out<='1';
 sda_out<='1';
 check <= '1';
 --statemachine<=0;
 --counter <= 0;
 
 elsif rising_edge(clock) then
 
 
 case statemachine is
 
 --------------------IDLE STATE--------------------- 
		when 0 =>
			check <= '0';
			scl_out<='1';
			sda_out<='1'; --Sda ansätts till Z.
			statemachine <= statemachine + 1;
			
 --------------------Start STATE--------------------
 
		when 1 =>
			scl_out<='1';
			sda_out <= '0';
			count<=7;
			statemachine <=statemachine + 1;
			
		when 2 =>
			scl_out<='1';
			sda_out <= '0';
			statemachine <=statemachine + 1;
		
		when 3 =>
			scl_out<='0';
			sda_out <= '0';
			statemachine <=statemachine + 1;
			
 --------------------Address Byte-------------------		

		when 4 =>
			scl_out<='0';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
			
		when 5 =>
			scl_out<='1';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
			
		when 6 =>
			scl_out<='1';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
		
		when 7=>
			scl_out<='0';
			sda_out <=addr_slave(count);
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 4;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
			
 --------------------ACK by Slave---------------------
		
		when 8=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
		
		when 9=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 10=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 11=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			if ack = '0' then
			statemachine <= 12;
			else 
			statemachine <= 8;
			end if;
			
 ----------------------DATA out (1)-------------------
			
		when 12 =>
		scl_out <='0';
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
		
		statemachine <=statemachine + 1;
		
		when 13 =>
		scl_out<='1';
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
		
		statemachine <=statemachine + 1;
		
		when 14 =>
		scl_out<='1';
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
		statemachine <=statemachine + 1;
		
		when 15 =>
		scl_out<='0';
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
		
		statemachine <=statemachine + 1;
		
		if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 12;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
			
 --------------------ACK by slave-------------------
 
		when 16=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
		
		when 17=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 18=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 19=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			if ack = '0' then
			statemachine <= 20;
			else 
			statemachine <= 16;
			end if;			

 ----------------------DATA out (2)-------------------
		when 20 =>
		scl_out <='0';
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
		statemachine <=statemachine + 1;
		
		when 21 =>
		scl_out<='1';
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
		statemachine <=statemachine + 1;
		
		when 22=>
		scl_out<='1';
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
		statemachine <=statemachine + 1;
		
		when 23=>
		scl_out<='0';
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
		statemachine <=statemachine + 1;
		if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 20;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;
 
 --------------------Ack by Slave----------------
 
		when 24=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
		
		when 25=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 26=>
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			statemachine <= statemachine + 1;
		
		when 27=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			if ack = '0' then
			statemachine <= 28;
			else 
			statemachine <= 24;
			end if;	
 
 -----------------------Stop------------------------

		when 28 =>
			scl_out<='0';
			sda_out<='0';
			statemachine <=statemachine + 1;
			
		when 29 =>
			scl_out<='1';
			sda_out<='0'; 
			statemachine <=statemachine + 1;

			
		when 30 =>
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