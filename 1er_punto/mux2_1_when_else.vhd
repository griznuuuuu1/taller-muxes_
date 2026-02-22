LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY mux2_1_when_else IS
	PORT
	(
		A   : IN STD_LOGIC;
		B   : IN STD_LOGIC;
		SEL : IN STD_LOGIC;
		Y   :OUT STD_LOGIC
	);
END ENTITY mux2_1_when_else;
-------------------------------------
ARCHITECTURE functional OF mux2_1_when_else IS
BEGIN
	Y <= A WHEN SEL = '0' ELSE
		 B;
END ARCHITECTURE functional;

