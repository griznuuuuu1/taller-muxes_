LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY general_gate_design IS
	PORT
	(
		A : IN  STD_LOGIC;
		B : IN  STD_LOGIC;
		C : IN  STD_LOGIC;
		D : IN  STD_LOGIC;
		Y : OUT STD_LOGIC
	);
END ENTITY general_gate_design;
-------------------------------------
ARCHITECTURE gatelevel OF general_gate_design IS
	SIGNAL XOR0 : STD_LOGIC;
	SIGNAL XOR1 : STD_LOGIC;
BEGIN
	
	Y    <= NOT(XOR0 XOR XOR1);
	XOR0 <= NOT(A    XOR B   );
	XOR1 <= NOT(C    XOR D   );
	
END ARCHITECTURE gatelevel;





