library IEEE;
use  IEEE.STD_LOGIC_1164.ALL;
use  IEEE.STD_LOGIC_ARITH.ALL;
use  IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_latch is
end entity;

architecture behave of tb_latch is
component latch is 
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
end component;

signal clk_sim	:	std_logic;
signal rst_sim	:		std_logic;
signal input1_sim :  std_logic_vector(6 downto 0);
signal input2_sim :  std_logic_vector(4 downto 0);
signal lad1_sim :  std_logic;
signal lad2_sim :  std_logic;
signal lad3_sim :  std_logic;
signal lad4_sim :  std_logic;
signal output_sim	:	std_logic_vector(13 downto 0);

constant clk_per : time := 10 ns;

begin
df_int : latch port map (
        clk => clk_sim,
		rst => rst_sim,
		input1 => input1_sim,
		input2 => input2_sim,
		lad1 => lad1_sim,
		lad2 => lad2_sim,
		lad3 => lad3_sim,
		lad4 => lad4_sim,
		output => output_sim		
		);
		
	clock_proc : process 
	 begin 
		clk_sim <= '0';
		wait for clk_per/2;
		clk_sim <= not clk_sim;
		wait for clk_per/2;
	end process;
	
	reset_proc : process
	 begin 
		rst_sim <='1';
		wait for clk_per * 4;
		rst_sim <= not rst_sim;
		wait;
	end process;
	
input1_sim <= "0000011";
input2_sim <= "00101";

end behave;



