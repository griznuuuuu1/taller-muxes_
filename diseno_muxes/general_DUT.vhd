LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY general_DUT IS
	PORT
	(
		A : IN  STD_LOGIC                   ;
		B : IN  STD_LOGIC                   ;
		C : IN  STD_LOGIC                   ;
		D : IN  STD_LOGIC                   ;
		Y : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END ENTITY general_DUT;
-------------------------------------
ARCHITECTURE call OF general_DUT IS
BEGIN
	
	gate_design : ENTITY WORK.general_gate_design
	PORT MAP
	(
		A => A,
		B => B,
		C => C,
		D => D,
		Y => Y(0)
	);
	
	mux_design : ENTITY WORK.mux_general_design
	PORT MAP
	(
		A => A,
		B => B,
		C => C,
		D => D,
		Y => Y(1)
	);
	
END ARCHITECTURE call;











