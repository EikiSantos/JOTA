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
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity DE0_CV_Default is
	port(
		SW       : in  std_logic_vector(9 downto 0);
		LEDR		: out std_logic_vector(9 downto 0);
		hex0		: out std_logic_vector(6 downto 0);
		hex1		: out std_logic_vector(6 downto 0);
		hex2		: out std_logic_vector(6 downto 0)
		);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of DE0_CV_Default is

--------------
-- signals
--------------
	
---------------
-- implementacao
---------------
begin

	LEDR <= SW;
											  
	hex0 <=  "1111001" when SW(3 downto 0) = "0001" else -- 1 pronto
				"0100100" when SW(3 downto 0) = "0010" else -- 2 pronto
				"0110000" when SW(3 downto 0) = "0011" else -- 3 pronto
				"0011001" when SW(3 downto 0) = "0100" else -- 4 pronto
				"0010010" when SW(3 downto 0) = "0101" else -- 5 pronto
				"0000010" when SW(3 downto 0) = "0110" else -- 6 pronto
				"1111000" when SW(3 downto 0) = "0111" else -- 7 pronto
				"0000000" when SW(3 downto 0) = "1000" else -- 8 pronto
				"0010000" when SW(3 downto 0) = "1001" else -- 9 pronto
				"1000000" when SW(3 downto 0) = "0000" else -- 0 pronto
				"0001000" when SW(3 downto 0) = "1010" else -- A pronto
				"0000011" when SW(3 downto 0) = "1011" else -- b pronto
				"1000110" when SW(3 downto 0) = "1100" else -- C pronto
				"0100001" when SW(3 downto 0) = "1101" else -- d pronto
				"0000110" when SW(3 downto 0) = "1110" else -- E pronto
				"0001110";                                  -- F pronto
				
	hex1 <=  "1111001" when SW(7 downto 4) = "0001" else -- 1 pronto
				"0100100" when SW(7 downto 4) = "0010" else -- 2 pronto
				"0110000" when SW(7 downto 4) = "0011" else -- 3 pronto
				"0011001" when SW(7 downto 4) = "0100" else -- 4 pronto
				"0010010" when SW(7 downto 4) = "0101" else -- 5 pronto
				"0000010" when SW(7 downto 4) = "0110" else -- 6 pronto
				"1111000" when SW(7 downto 4) = "0111" else -- 7 pronto
				"0000000" when SW(7 downto 4) = "1000" else -- 8 pronto
				"0010000" when SW(7 downto 4) = "1001" else -- 9 pronto
				"1000000" when SW(7 downto 4) = "0000" else -- 0 pronto
				"0001000" when SW(7 downto 4) = "1010" else -- A pronto
				"0000011" when SW(7 downto 4) = "1011" else -- b pronto
				"1000110" when SW(7 downto 4) = "1100" else -- C pronto
				"0100001" when SW(7 downto 4) = "1101" else -- d pronto
				"0000110" when SW(7 downto 4) = "1110" else -- E pronto
				"0001110";                                  -- F pronto
	
	hex2 <=  "1111001" when SW(9 downto 8) = "01" else -- 1 pronto
				"0100100" when SW(9 downto 8) = "10" else -- 2 pronto
				"0110000" when SW(9 downto 8) = "11" else -- 3 pronto
				"1000000" when SW(9 downto 8) = "00"; -- 0 pronto
end rtl;				


