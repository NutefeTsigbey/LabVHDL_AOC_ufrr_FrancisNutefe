LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY extensor IS
PORT(a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
     s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	 );
END extensor;

ARCHITECTURE ext OF extensor IS
BEGIN
	s <= ("0000" & a);
END ext;