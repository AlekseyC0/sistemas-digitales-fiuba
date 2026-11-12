LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity lab1 is
	port (swt : in STD_LOGIC_VECTOR (3 downto 0);
		  led : inout STD_LOGIC_VECTOR (3 downto 0)
		  );
end lab1;	

architecture logica of lab1 is
begin
   led(0) <= not swt(0);
   led(1) <= swt(1) and not swt(2);
   led(2) <= led(1) or led(3);
   led(3) <= swt(2) and swt(3);
 end logica;	  

