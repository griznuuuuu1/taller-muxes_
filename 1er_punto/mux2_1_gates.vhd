LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY mux2_1_gates IS
	PORT
	(
		A   : IN  STD_LOGIC;
		B   : IN  STD_LOGIC;
		SEL : IN  STD_LOGIC;
		Y   : OUT STD_LOGIC
	);
END ENTITY mux2_1_gates;
-------------------------------------
ARCHITECTURE gateLevel OF mux2_1_gates IS
	SIGNAL p0 : STD_LOGIC;
	SIGNAL p1 : STD_LOGIC;
BEGIN
	
	sumOfProducts : Y <= p0 OR p1;
	
	bothHigh : p0 <= A AND (NOT SEL); 
	bothLow  : p1 <= B AND      SEL ;
	
END ARCHITECTURE gateLevel;






