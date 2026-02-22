LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY mux_general_design IS
	PORT
	(
		A : IN  STD_LOGIC;
		B : IN  STD_LOGIC;
		C : IN  STD_LOGIC;
		D : IN  STD_LOGIC;
		Y : OUT STD_LOGIC
	);
END ENTITY mux_general_design;
-------------------------------------
ARCHITECTURE functional OF mux_general_design IS
	SIGNAL SEL0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL SEL1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL SEL2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL MUX0 : STD_LOGIC                   ;
	SIGNAL MUX1 : STD_LOGIC                   ;
BEGIN
	
	SEL0 <= A    & B   ;
	SEL1 <= C    & D   ;
	SEL2 <= MUX1 & MUX0;
	
	WITH SEL0 SELECT
		 MUX0 <= '1' WHEN "00",
		         '1' WHEN "11",
		         '0' WHEN OTHERS;
	
	WITH SEL1 SELECT
		 MUX1 <= '1' WHEN "00",
		         '1' WHEN "11",
		         '0' WHEN OTHERS;
	
	WITH SEL2 SELECT
		 Y    <= '1' WHEN "00",
		         '1' WHEN "11",
		         '0' WHEN OTHERS;
	
END ARCHITECTURE functional;










