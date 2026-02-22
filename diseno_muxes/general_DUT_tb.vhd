LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY general_DUT_tb IS
END ENTITY general_DUT_tb;
-------------------------------------
ARCHITECTURE testbench OF general_DUT_tb IS
	SIGNAL BLOCK0_TB : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL BLOCK1_TB : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL INPUT_TB  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL OUTPUT_TB : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	
	INPUT_TB <= BLOCK1_TB & BLOCK0_TB;
	
	DUT : ENTITY WORK.general_DUT
	PORT MAP
	(
		A => INPUT_TB(0),
		B => INPUT_TB(1),
		C => INPUT_TB(2),
		D => INPUT_TB(3),
		Y => OUTPUT_TB
	);
	
	BLOCK1_TB <= "11" AFTER   0 ns,
				 "10" AFTER  40 ns,
				 "01" AFTER  80 ns,
				 "00" AFTER 120 ns;
	
	BLOCK0_TB <= "11" AFTER   0 ns,
				 "10" AFTER  10 ns,
				 "01" AFTER  20 ns,
				 "00" AFTER  30 ns,
				 "11" AFTER  40 ns,
				 "10" AFTER  50 ns,
				 "01" AFTER  60 ns,
				 "00" AFTER  70 ns,
				 "11" AFTER  80 ns,
				 "10" AFTER  90 ns,
				 "01" AFTER 100 ns,
				 "00" AFTER 110 ns,
				 "11" AFTER 120 ns,
				 "10" AFTER 130 ns,
				 "01" AFTER 140 ns,
				 "00" AFTER 150 ns;
	
END ARCHITECTURE testbench;













