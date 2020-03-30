--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity module1 is
	port(
		w, x, y, z : in std_logic;
			f, g : out std_logic;
		);
end module1;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of module1 is

--------------
-- signals
--------------
---------------
-- implementacao
---------------
begin
   f <= w and x when z = "1" else
	x xor y;
	g <= not(w or x);
end rtl;				


