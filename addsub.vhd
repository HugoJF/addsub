LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std_unsigned.ALL;

ENTITY addsub IS
	GENERIC 
	(
		N : NATURAL := 8
	);
	PORT 
	(
		A, B      : IN std_logic_vector(N - 1 DOWNTO 0);
		operation : IN std_logic;
		S         : OUT std_logic_vector(N - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavioral OF addsub IS
BEGIN
	PROCESS (A, B, operation)
	BEGIN
		IF operation = '0' THEN
			S <= A + B;
		ELSE
			S <= A - B;
		END IF;
	END PROCESS;

END ARCHITECTURE;