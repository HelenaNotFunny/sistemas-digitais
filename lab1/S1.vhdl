library ieee;
use ieee.std_logic_1164.all;

entity circuito is 
port(A,B,C: in bit;
	  S1    : out bit);
end circuito;

architecture behav of circuito is
	signal Sig1: bit; -- recebe o sinal do primeiro and
	signal Sig2: bit; -- recebe o sinal do segundo and
	signal Sig3: bit; -- recebe o sinal do terceiro and
	component PortaAnd2 is
		port(e1, e2: in bit;
			  saida_and2 : out bit);
	end component;
	component PortaOr3 is
		port(in1, in2, in3: in bit;
			  saida_or3        				 : out bit);
	end component;
begin
	u1: PortaAnd2 port map(e1 => A, e2 => B, saida_and2 => Sig1);
	u2: PortaAnd2 port map(e1 => B, e2 => C, saida_and2 => Sig2);
	u3: PortaAnd2  port map(e1 => A, e2 => C, saida_and2 => Sig3);
	u5: PortaOr3 port map (in1 => Sig1, in2 => Sig2, inp3 => Sig3, saida_or3 => S1);
end architecture behav;