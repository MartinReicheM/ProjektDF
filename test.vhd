library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity test is
port(
	clock_400: in    std_logic;
	reset		: in    std_logic;
	sda		: inout std_logic;
	scl		: out   std_logic
	);
 end entity;
 
 architecture rtl of test is
 
 ----Signals----
 signal state: integer range 0 to 30 :=0;
 signal count: integer range 0 to 15 :=15;

 signal ack: std_logic:= '0';
 
 signal register_count: integer := 0;
 
  ----SDA and SCL signals----
 signal sda_out: std_logic:='1';
 signal scl_out: std_logic:='0';
 
 ----Slave adress----
 constant addr_slave: std_logic_vector(7 downto 0) :="00110100"; --Slave address + write
 
 --Register values
 constant R0 : std_logic_vector (15 downto 0):= x"0000";
 constant R1 : std_logic_vector (15 downto 0):= x"0010"; 
 constant R2 : std_logic_vector (15 downto 0):= X"0210";
 constant R3 : std_logic_vector (15 downto 0):= x"0479"; 
 constant R4 : std_logic_vector (15 downto 0):= x"0679";
 constant R5 : std_logic_vector (15 downto 0):= x"08D0"; 
 constant R6 : std_logic_vector (15 downto 0):= x"0A06"; 
 constant R7 : std_logic_vector (15 downto 0):= x"0C00"; 
 constant R8 : std_logic_vector (15 downto 0):= x"0E0A"; 
 constant R9 : std_logic_vector (15 downto 0):= x"1000"; 
 constant R10: std_logic_vector (15 downto 0):= x"1201"; 
 
 
 begin
 
 sda <= 'Z' when sda_out='1' else '0';
 scl <= scl_out;
 
 process(clock_400)
 begin
 
 if rising_edge(clock_400) then
 
 case state is
 
 --------------------IDLE STATE--------------------- 
		when 0 =>
			scl_out<='1';
			sda_out<='1';
			count<=15;
			state<=state+1;
--------------------START ADRESS--------------------			
		when 1 =>
			scl_out<='1';
			sda_out<='0';
		   state<=state+1;
		
		when 2 =>
			scl_out<='0';
			sda_out<='0';
			state<=state+1;
--------------------START REGISTER------------------			
		when 3 =>
			scl_out<='0';
			sda_out<=addr_slave(count-8);
			state<=state+1;
			
		when 4 =>
			scl_out<='1';
			sda_out<=addr_slave(count-8);
			state<=state+1;
			
		when 5 =>
			scl_out<='0';
			sda_out<=addr_slave(count-8);
			count<=count-1;
			if count<8 then 
				state<= 6;
				count<=15;
			else 
				state<=3;
			end if;
-------------------wait for ack---------------------
		
		when 6 =>
			scl_out<='0';
			sda_out<='1';
			ack<=sda;
			if ack<='0' then 
			state<=state+1;
			else state<=0;
			end if;
			
		when 7 => 
			scl_out<='1';
			sda_out<='1';
			ack<=sda;
			if ack<='0' then 
			state<=state+1;
			else state<=0;
			end if;
		
		when 8 => 
			scl_out<='0';
			sda_out<='1';
			ack<=sda;
			if ack<='0' then 
			state<=state+1;
			else state<=0;
			end if;
			
-----------------akc acquired -----------------------

		when 9 =>
			scl_out<='0';
			sda_out<=R0(count-8);
			state<=state+1;
			
		when 10 =>
			scl_out<='1';
			sda_out<=addr_slave(count-8);
			state<=state+1;
			
		when 11 =>
			scl_out<='0';
			sda_out<=addr_slave(count-8);
			count<=count-1;
			if count<8 then 
				state<= 6;
				count<=15;
			else 
				state<=3;
			end if;
			
			
 end case;
 
 end if;
 end process;
 end rtl;