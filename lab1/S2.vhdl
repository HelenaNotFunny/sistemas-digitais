library ieee;
use ieee.std_logic_1164.all;

entity circuito is 
port(A,B,C: in bit;
	  S2    : out bit);
end circuito;

architecture behav of circuito is
	signal Sig1: bit; -- recebe o sinal do primeiro and
	signal Sig2: bit; -- recebe o sinal do segundo and
	signal Sig3: bit; -- recebe o sinal do terceiro and
	signal Sig4: bit; -- recebe o sinal do quarto and
	component PortaAnd3 is
		port(en1, en2, en3 : in bit;
			  saida_and3 : out bit);
	end component;
	component PortaOr4 is
		port(input1, input2, input3, input4: in bit;
			  saida_or4        				 : out bit);
	end component;
begin
	u1: PortaAnd3 port map(en1 => A, en2 => not(B), en3 => not(C), saida_and3 => Sig1);
	u2: PortaAnd3 port map(en1 => A, en2 => B, en3 => C, saida_and3 => Sig2);
	u3: PortaAnd3 port map(en1 => not(A), en2 => B, en3 => not(C), saida_and3 => Sig3);
	u4: PortaAnd3 port map(en1 => not(A), en2 => not(B), en3 => C, saida_and3 => Sig4);
	u5: PortaOr4 port map (input1 => Sig1, input2 => Sig2, input3 => Sig3, input4 => Sig4, saida_or4 => S2);
end architecture behav;