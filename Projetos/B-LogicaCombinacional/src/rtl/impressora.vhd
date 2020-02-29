library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity impressora is
	port (
    SW1,SW2,SW3,SW4 : in  STD_LOGIC;
    x : out STD_LOGIC );
end entity;

architecture arch of impressora is

begin
    x <= (SW2 and (SW1 or ((not SW1) and SW4))) or (SW3 and ((SW1 xor SW4) or (SW2 and not SW4))) -- B(A + A_D) + C(A(+)D + BD_)
end architecture;
