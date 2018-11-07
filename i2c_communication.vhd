library ieee;
use IEEE.std_logic_1164.all;

entity i2c_communication is
port(
	clock_100: in std_logic;
	reset: in std_logic;
	sda: inout std_logic;
	scl: out std_logic
	--voltage: in std_logic_vector(23 downto 0);
);
end entity;

architecture rtl of i2c_communication is

--Signals--

signal statemachine: integer range 0 to 15 := 0; --All the states of the statemachine 
signal count: integer range 0 to 7 :=7; --Counter

--SDA and SCL signals--
signal sda_out: std_logic:='1';
signal scl_out: std_logic:='0';

--Slave address
constant addr_slave: std_logic_vector(7 downto 0) := "1110011"&'0'; --Slave address + write


begin 

sda <= 'Z' when sda_out='1' else '0';
scl <= scl_out;

process(clock_100,reset)
begin

if(reset='0') then
scl_out <= '1';
sda_out <= '1';
statemachine <= 0;

elsif rising_edge(clock_100) then
	
case statemachine is
	
------------IDLE STATE------------
		when 0 =>
			scl_out<='1';
			sda_out<='1';
			statemachine <= statemachine + 1;
	
------------Start State-----------
	
		when 1 =>
			scl_out<='1';
			sda_out<='0';
			count<=7;
			statemachine<=statemachine + 1;
	
---------Slave address & W--------

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

------------------A-----------------

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

------------1ST DATA BYTE-----------

		when 6 =>
			scl_out<='0';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
		
		when 7=>
			scl_out<='1';
			sda_out <=addr_slave(count);
			
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 2;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;

------------------A-----------------

		when 8=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 9=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 4;
			else 
			statemachine <= 6;
			end if;

------------2ND DATA BYTE-----------

		when 10 =>
			scl_out<='0';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
		
		when 11=>
			scl_out<='1';
			sda_out <=addr_slave(count);
			
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 2;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;

------------------A-----------------

		when 8=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 9=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 4;
			else 
			statemachine <= 6;
			end if;

------------3RD DATA BYTE-----------

		when 10 =>
			scl_out<='0';
			sda_out <=addr_slave(count);
			statemachine <=statemachine + 1;
		
		when 11=>
			scl_out<='1';
			sda_out <=addr_slave(count);
			
			if((count-1)>=0) then
			count <= count - 1;
			statemachine <= 2;
			else
			statemachine <= statemachine + 1;
			count<=7;
			end if;

------------------A-----------------

		when 12=>
			scl_out<='0';
			sda_out<='1';
			statemachine <= statemachine + 1;
			
		when 13=>
			scl_out<='1';
			ack<=sda; 
			if ack = '1' then
			statemachine <= 4;
			else 
			statemachine <= 6;
			end if;

------------------P-----------------


		when 14 =>
			scl_out<='1';
			sda_out<='0'; 
			statemachine <=statemachine + 1;
			
		when 15 =>
			scl_out<='1';
			sda_out<='1'; 
			statemachine <=0;
			data_out<=data_in;
			data_outDecimal<=data_in1(7);		

-------------------Other condition-------------------
		when others => statemachine<=1;
		
end case;
 end if;
 end process;
 end rtl;


