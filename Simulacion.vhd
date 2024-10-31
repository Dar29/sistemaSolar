library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Simulacion is
--  
end Simulacion;

architecture Behavioral of Simulacion is

component <NOMBRE> 
port ( <entrada1> : in STD_LOGIC;
              <entrada2> : in STD_LOGIC_VECTOR (3 downto 0);
              <salida1> : out STD_LOGIC;
              <salida2> : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;

-- Señales de las entradas
signal <entrada1> : STD_LOGIC:=  '0';
signal <entrada2> : STD_LOGIC_VECTOR (3 downto 0):=  (others => '0');

-- Señales de salidas
signal <salida1> :  STD_LOGIC;
signal <salida2> :  STD_LOGIC_VECTOR (3 downto 0);


begin

UO: <NOMBRE> Port map (
entrada1 => entrada1,
entrada2  => entrada2, 
salida1=> salida1
);


process begin
--- Estímulos de la simulación wait for 100 ns;
wait for 100 ns;

entrada1 <= '0'; 
entrada2 <= "0000"; 
wait for 100 ns;

entrada1 <= '1'; 
entrada2 <= "0001"; 
wait for 100 ns;


entrada1 <= '0'; 
entrada2 <= "0110"; 
wait for 100 ns;

wait;
end process;

end Behavioral;

