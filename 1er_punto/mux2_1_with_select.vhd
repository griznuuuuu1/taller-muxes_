LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY mux2_1_with_select IS
	PORT
	(
		A   : IN  STD_LOGIC;
		B   : IN  STD_LOGIC;
		SEL : IN  STD_LOGIC;
		Y   : OUT STD_LOGIC
	);
END ENTITY mux2_1_with_select;
-------------------------------------
ARCHITECTURE functional OF mux2_1_with_select IS
BEGIN
	WITH SEL SELECT
		Y <= A WHEN '0',
			 B WHEN OTHERS;
END ARCHITECTURE functional;




