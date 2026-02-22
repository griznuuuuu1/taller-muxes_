LIBRARY IEEE;
USE ieee.std_logic_1164.all;
--------------------------------------
ENTITY demux1_2_gates IS
	PORT
	(
		A   : IN  STD_LOGIC;
		SEL : IN  STD_LOGIC;
		Y0  : OUT STD_LOGIC;
		Y1  : OUT STD_LOGIC
	);
END ENTITY demux1_2_gates;
--------------------------------------
ARCHITECTURE gatelevel OF demux1_2_gates IS
BEGIN
	
	Y0 <= A AND      SEL ;
	Y1 <= A AND (NOT SEL);
	
END ARCHITECTURE gatelevel;







