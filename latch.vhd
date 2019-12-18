library IEEE;
use  IEEE.STD_LOGIC_1164.ALL;
use  IEEE.STD_LOGIC_ARITH.ALL;
use  IEEE.STD_LOGIC_UNSIGNED.ALL;

entity latch is 
	port (
		clk	:	in	std_logic;
		rst	:	in	std_logic;
		input1 : in std_logic_vector(6 downto 0);
		input2 : in std_logic_vector(4 downto 0);
		lad1 : in std_logic;
		lad2 : in std_logic;
		lad3 : in std_logic;
		lad4 : in std_logic;
		output	:	out	std_logic_vector(13 downto 0)
	);
end latch;

architecture behave of latch is 

signal input1lad1 : std_logic_vector(6 downto 0);
signal input1lad2 : std_logic_vector(6 downto 0);
signal input1lad3 : std_logic_vector(6 downto 0);
signal input1lad41 : std_logic_vector(6 downto 0);
signal input1lad42 : std_logic_vector(6 downto 0);
signal input1lad43 : std_logic_vector(6 downto 0);
signal input2reg1 : std_logic_vector(4 downto 0);
signal input2reg2 : std_logic_vector(4 downto 0);
signal input2reg3 : std_logic_vector(4 downto 0);
signal  mul1		:	std_logic_vector(11 downto 0);
signal  mul2		:   std_logic_vector(11 downto 0);
signal  mul3		:   std_logic_vector(11 downto 0);
signal add1  : std_logic_vector(12 downto 0);
signal add2  : std_logic_vector(13 downto 0);

begin

lad1proc : process(lad1,input1)
begin
	   if (lad1 = '1') then
	      input1lad1 <= input1;
	   end if;
	end process;

lad2proc : process(lad2,input1)
begin
	   if (lad1 = '1') then
	      input1lad2 <= input1;
	   end if;
	end process;
	
lad3proc : process(lad3,input1)
begin
	   if (lad1 = '1') then
	      input1lad3 <= input1;
	   end if;
	end process;

lad4proc : process(lad4, input1lad1, input1lad2, input1lad3)
	begin
	   if (lad4 = '1') then
	      input1lad41 <= input1lad1;
	  	  input1lad42 <= input1lad2;
	  	  input1lad43 <= input1lad3;
	    end if;
	end process;
	
d3r1_proc : process (clk,rst)
	begin
		
		if rst = '1' then
		  input2reg1 <= (others => '0');
	      input2reg2 <= (others => '0');
	      input2reg3 <= (others => '0');
		  
		elsif falling_edge (clk) then
		  input2reg1 <= input2;
	      input2reg2 <= input2reg1;
	      input2reg3 <= input2reg2;
		  
	
		end if;
		
	end process;

	mul1 <= input1lad41 * input2reg1;
	mul2 <= input1lad42 * input2reg2;
	mul3 <= input1lad43 * input2reg3;

	
	add1 <= EXT(mul1, 13) + EXT(mul2, 13);
	add2 <= EXT(add1, 14) + EXT(mul3, 14);
	
d3r2_proc : process (clk,rst)	
	begin
		
		if rst = '1' then
			output <=(others => '0');
		elsif falling_edge (clk) then
		  output <= add2;
		  
		  
		end if;
	end process;

end behave;



