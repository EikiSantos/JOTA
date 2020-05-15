-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: ControlUnit.vhd
-- date: 4/4/2017
-- Modificação:
--   - Rafael Corsi : nova versão: adicionado reg S
--
-- Unidade que controla os componentes da CPU

library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
    port(
		instruction                 : in STD_LOGIC_VECTOR(17 downto 0);  -- instrução para executar
		zr,ng                       : in STD_LOGIC;                      -- valores zr(se zero) e
                                                                     -- ng (se negativo) da ALU
		muxALUI_A                   : out STD_LOGIC;                     -- mux que seleciona entre
                                                                     -- instrução  e ALU para reg. A
		muxAM                       : out STD_LOGIC;                     -- mux que seleciona entre
                                                                     -- reg. A e Mem. RAM para ALU
                                                                     -- A  e Mem. RAM para ALU
		zx, nx, zy, ny, f, no       : out STD_LOGIC;                     -- sinais de controle da ALU
		loadA, loadD, loadM, loadPC : out STD_LOGIC                      -- sinais de load do reg. A,
                                                                     -- reg. D, Mem. RAM e Program Counter
    );
end entity;

architecture arch of ControlUnit is

  signal tipoA                  : STD_LOGIC;

begin
  tipoA <= instruction(17);
  muxALUI_A <= not tipoA;
  loadA <= not tipoA or instruction(3);
  loadD <= tipoA and instruction(4);
  loadM <= tipoA and instruction(5);
  
  loadPC <= '0' when tipoA = '0' else
            '0' when (instruction(2 downto 0) = "000") else
            '0' when (instruction(2) = '0' and ng = '1') else
            '0' when (instruction(0) = '0' and ng = '0') else
            '0' when (instruction(1) = '0' and zr = '1') 
            else '1';

  muxAM <= tipoA and instruction(13);
  zx <= tipoA and instruction(12);
  nx <= tipoA and instruction(11);
  zy <= tipoA and instruction(10);
  ny <= tipoA and instruction(9);
  f <= tipoA and instruction(8);
  no <= tipoA and instruction(7);

end architecture;
