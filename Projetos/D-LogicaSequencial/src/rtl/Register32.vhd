-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture arch of Register32 is

	component Register16 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(15 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(15 downto 0)
      );
	end component;

begin
	bit_reg32_0: Register16
	port map(
			clock => clock,
			load => load,
			input => input(15 downto 0),
			output => output(15 downto 0)
	);

	bit_reg32_1: Register16
	port map(
			clock => clock,
			load => load,
			input => input(31 downto 16),
			output => output(31 downto 16)
	);

end architecture;
