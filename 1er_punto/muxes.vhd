LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY muxes IS
	PORT 
	(
		A   : IN  STD_LOGIC;
		B   : IN  STD_LOGIC;
		SEL : IN  STD_LOGIC;
		Y0  : OUT STD_LOGIC;
		Y1  : OUT STD_LOGIC; 
		Y2  : OUT STD_LOGIC;
		Y3  : OUT STD_LOGIC
	);
END ENTITY muxes;
-------------------------------------
ARCHITECTURE gateLevel OF muxes IS
BEGIN
	mux_gates: ENTITY WORK.mux2_1_gates
	PORT MAP
	(
		A   => A  ,
		B   => B  ,
		SEL => SEL,
		Y   => Y0
	);
	
	mux_withselect : ENTITY WORK.mux2_1_with_select
	PORT MAP
	(
		A   => A  ,
		B   => B  ,
		SEL => SEL,
		Y   => Y1
	);
	
	mux_whenelse : ENTITY WORK.mux2_1_when_else
	PORT MAP
	(
		A   => A  ,
		B   => B  ,
		SEL => SEL,
		Y   => Y2
	);
	
	mux_process : ENTITY WORK.mux2_1_process
	PORT MAP
	(
		A   => A  ,
		B   => B  ,
		SEL => SEL,
		Y   => Y3
	);
END ARCHITECTURE gateLevel;
