library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux4Way is
begin
	q <= a when (sel [0] = "00" and sel[1] = "01") else
	b when (sel [0] = "00" and sel[1] = "10") else
	c when (sel [0] = "00" and sel[1] = "11") else
	d when (sel [0] = "01" and sel[1] = "00") else
	"0000";
end architecture;
