LIBRARY IEEE;
USE ieee.std_logic_1164.all;
--------------------------------------
ENTITY mux4_1_whenelse IS
	PORT
	(
		A   : IN  STD_LOGIC                   ;
		B   : IN  STD_LOGIC                   ;
		C   : IN  STD_LOGIC                   ;
		D   : IN  STD_LOGIC                   ;
		SEL : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Y   : OUT STD_LOGIC
	);
END ENTITY mux4_1_whenelse;
--------------------------------------
ARCHITECTURE functional OF mux4_1_whenelse IS
BEGIN
	
	Y <= A WHEN SEL = "00" ELSE
		 B WHEN SEL = "01" ELSE
		 C WHEN SEL = "10" ELSE
		 D;
END ARCHITECTURE functional;





