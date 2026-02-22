LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY demux1_2 IS
	PORT 
	(
		A   : IN  STD_LOGIC                   ;
		SEL : IN  STD_LOGIC                   ;
		Y0  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		Y1  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END ENTITY demux1_2;

ARCHITECTURE compound OF demux1_2 IS
BEGIN
	
	demux_gatelevel : ENTITY WORK.demux1_2_gates
	PORT MAP
	(
		A   => A    ,
		SEL => SEL  ,
		Y0  => Y0(0),
		Y1  => Y1(0)
	);
	
	demux_function : ENTITY WORK.demux1_2_functional
	PORT MAP
	(
		A   => A    ,
		SEL => SEL  ,
		Y0  => Y0(1),
		Y1  => Y1(1)
	);
	
END ARCHITECTURE compound;




