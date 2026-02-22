LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY mux2_1_process IS
	PORT
	(
		A   : IN  STD_LOGIC;
		B   : IN  STD_LOGIC;
		SEL : IN  STD_LOGIC;
		Y   : OUT STD_LOGIC
	);
END ENTITY mux2_1_process;
-------------------------------------
ARCHITECTURE behaviour OF mux2_1_process IS
BEGIN
	
	mux_process : PROCESS (A, B, SEL)
	BEGIN
		IF (SEL = '0') THEN
			Y <= A;
		ELSE
			Y <= B;
		END IF;
	END PROCESS mux_process;
END ARCHITECTURE behaviour;

