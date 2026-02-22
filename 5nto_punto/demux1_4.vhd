LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------
ENTITY demux1_4 IS
	PORT 
	(
		A   : IN  STD_LOGIC                   ;
		SEL : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Y   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY demux1_4;
-------------------------------------
ARCHITECTURE functional OF demux1_4 IS
BEGIN
	
	WITH SEL SELECT
		Y(0) <=  A  WHEN "00"  ,
			    '0' WHEN OTHERS;
	
	WITH SEL SELECT
		Y(1) <=  A  WHEN "01"  ,
			    '0' WHEN OTHERS;
	
	WITH SEL SELECT
		Y(2) <=  A  WHEN "10"  ,
			    '0' WHEN OTHERS;
	
	WITH SEL SELECT
		Y(3) <=  A  WHEN "11"  ,
			    '0' WHEN OTHERS;
	
END ARCHITECTURE functional;




