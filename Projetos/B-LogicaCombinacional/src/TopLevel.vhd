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
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3		: out std_logic_vector(6 downto 0)
		);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
	signal ajudinha0, ajudinha1, ajudinha2, ajudinha3, ajudinha4: std_logic_vector(3 downto 0);
---------------
-- implementacao
---------------
begin
   u1 : work.binarioToBcd port map(clk   => CLOCK_50,
                                   reset => '0',
                                   binary_in => SW,
                                   bcd0  => ajudinha0,
                                   bcd1  => ajudinha1,
                                   bcd2  => ajudinha2,
                                   bcd3  => ajudinha3,
                                   bcd4  => open										  
											  );
											  
	HEX0 <=  "1111001" when ajudinha0 = "0001" else -- 1 pronto
				"0100100" when ajudinha0 = "0010" else -- 2 pronto
				"0110000" when ajudinha0 = "0011" else -- 3 pronto
				"0011001" when ajudinha0 = "0100" else -- 4 pronto
				"0010010" when ajudinha0 = "0101" else -- 5 pronto
				"0000010" when ajudinha0 = "0110" else -- 6 pronto
				"1111000" when ajudinha0 = "0111" else -- 7 pronto
				"0000000" when ajudinha0 = "1000" else -- 8 pronto
				"0010000" when ajudinha0 = "1001" else -- 9 pronto
				"1000000" when ajudinha0 = "0000"; -- 0 pronto
				
	HEX1 <=  "1111001" when ajudinha1 = "0001" else -- 1 pronto
				"0100100" when ajudinha1 = "0010" else -- 2 pronto
				"0110000" when ajudinha1 = "0011" else -- 3 pronto
				"0011001" when ajudinha1 = "0100" else -- 4 pronto
				"0010010" when ajudinha1 = "0101" else -- 5 pronto
				"0000010" when ajudinha1 = "0110" else -- 6 pronto
				"1111000" when ajudinha1 = "0111" else -- 7 pronto
				"0000000" when ajudinha1 = "1000" else -- 8 pronto
				"0010000" when ajudinha1 = "1001" else -- 9 pronto
				"1000000" when ajudinha1 = "0000"; -- 0 pronto

	HEX2 <=  "1111001" when ajudinha2 = "0001" else -- 1 pronto
				"0100100" when ajudinha2 = "0010" else -- 2 pronto
				"0110000" when ajudinha2 = "0011" else -- 3 pronto
				"0011001" when ajudinha2 = "0100" else -- 4 pronto
				"0010010" when ajudinha2 = "0101" else -- 5 pronto
				"0000010" when ajudinha2 = "0110" else -- 6 pronto
				"1111000" when ajudinha2 = "0111" else -- 7 pronto
				"0000000" when ajudinha2 = "1000" else -- 8 pronto
				"0010000" when ajudinha2 = "1001" else -- 9 pronto
				"1000000" when ajudinha2 = "0000"; -- 0 pronto

	HEX3 <=  "1111001" when ajudinha3 = "0001" else -- 1 pronto
				"0100100" when ajudinha3 = "0010" else -- 2 pronto
				"0110000" when ajudinha3 = "0011" else -- 3 pronto
				"0011001" when ajudinha3 = "0100" else -- 4 pronto
				"0010010" when ajudinha3 = "0101" else -- 5 pronto
				"0000010" when ajudinha3 = "0110" else -- 6 pronto
				"1111000" when ajudinha3 = "0111" else -- 7 pronto
				"0000000" when ajudinha3 = "1000" else -- 8 pronto
				"0010000" when ajudinha3 = "1001" else -- 9 pronto
				"1000000" when ajudinha3 = "0000"; -- 0 pronto
end rtl;				


