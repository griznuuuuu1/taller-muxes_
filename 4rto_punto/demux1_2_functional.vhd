LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY demux1_2_functional IS
	PORT
	(
		A   : IN  STD_LOGIC; 
		SEL : IN  STD_LOGIC;
		Y0  : OUT STD_LOGIC;
		Y1  : OUT STD_LOGIC
	);
END ENTITY demux1_2_functional;
-------------------------------------
ARCHITECTURE functional OF demux1_2_functional IS
BEGIN
	
	WITH SEL SELECT
		Y0 <=  A  WHEN '0',
			  '0' WHEN OTHERS;
	
	WITH SEL SELECT
		Y1 <=  A  WHEN '1',
			  '0' WHEN OTHERS;
	
END ARCHITECTURE functional;




