LIBRARY IEEE;
USE ieee.std_logic_1164.all;
--------------------------------------
ENTITY mux4_1_comp IS
	PORT
	(
		A    : IN  STD_LOGIC                   ;
		B    : IN  STD_LOGIC                   ;
		C    : IN  STD_LOGIC                   ;
		D    : IN  STD_LOGIC                   ;
		SEL0 : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SEL1 : IN  STD_LOGIC                   ;
		Y    : OUT STD_LOGIC
	);
END ENTITY mux4_1_comp;
--------------------------------------
ARCHITECTURE functional OF mux4_1_comp IS
	SIGNAL MUX0 : STD_LOGIC;
	SIGNAL MUX1 : STD_LOGIC;
BEGIN
	
	WITH SEL1 SELECT
		Y <= MUX0 WHEN '0',
			 MUX1 WHEN OTHERS;
	
	WITH SEL0(0) SELECT
		MUX0 <= A WHEN '0',
				B WHEN OTHERS;
	
	WITH SEL0(1) SELECT
		MUX1 <= C WHEN '0',
				D WHEN OTHERS;
	
END ARCHITECTURE functional;






