LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

ENTITY banco IS
PORT ( EscritaReg,Clock: in STD_LOGIC;
		 RegA,RegB: IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		 Dado : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
		 SaidaA , SaidaB: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
		);
END banco;


ARCHITECTURE Behavior OF banco IS
TYPE TypeBanco  IS ARRAY (1 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reg:TypeBanco ;

BEGIN
	PROCESS(clock)
	BEGIN
		IF(clock'EVENT) AND (clock = '1') THEN
			IF(EscritaReg = '1') THEN
				reg(to_integer(unsigned(RegA))) <= Dado;
			ELSE
				SaidaA <= reg(to_integer(unsigned(RegA)));
				SaidaB <= reg(to_integer(unsigned(RegB)));
			END IF;
		END IF;
	END PROCESS;
END Behavior;