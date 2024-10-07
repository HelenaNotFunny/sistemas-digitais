library ieee;
use ieee.std_logic_1164.all;

entity circuito is 
port(A,B,C: in bit;
	  S    : out bit);
end circuito;

architecture behav of circuito is
	signal S1: bit; -- recebe o sinal do primeiro and
	signal S2: bit; -- recebe o sinal do segundo and
	signal S3: bit; -- recebe o sinal do terceiro and
	signal S4: bit; -- recebe o sinal do quarto and
	component PortaAnd is
		port(en1, en2, en3 : in bit;
			  saida_and : out bit);
	end component;
	component PortaOr is
		port(input1, input2, input3, input4: in bit;
			  saida_or        				 : out bit);
	end component;
begin
	u1: PortaAnd port map(en1 => not(A), en2 => B, en3 => C, saida_and => S1);
	u2: PortaAnd port map(en1 => A, en2 => not(B), en3 => C, saida_and => S2);
	u3: PortaAnd port map(en1 => A, en2 => B, en3 => not(C), saida_and => S3);
	u4: PortaAnd port map(en1 => A, en2 => B, en3 => C, saida_and => S4);
	u5: PortaOr port map (input1 => S1, input2 => S2, input3 => S3, input4 => S4, saida_or => S);
end architecture behav;