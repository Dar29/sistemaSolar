library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Simulacion is
--  
end Simulacion;

architecture Behavioral of Simulacion is

component Compuerta1
port ( 	e1: in STD_LOGIC;
		e2: in STD_LOGIC;
		s:  out STD_LOGIC; 	 
);
end component;

-- Señales de las entradas
signal s_e1, s_e2 : STD_LOGIC:=  '0';

-- Señales de salidas
signal s_s:  STD_LOGIC;

begin

UO: Compuerta1 Port map (
e1 => s_e1,
e2 => s_e2, 
s  => s_s
);


process begin
--- Estímulos de la simulación wait for 100 ns;
	s_e1 <= '0'; 
	s_e2 <= '0'; 
	wait for 100 ns;

	s_e1 <= '0'; 
	s_e2 <= '1'; 
	wait for 100 ns;


	s_e1 <= '1'; 
	s_e2 <= '0'; 
	wait for 100 ns;

	s_e1 <= '1'; 
	s_e2 <= '1'; 
	wait for 100 ns;

	wait;
end process;

end Behavioral;

