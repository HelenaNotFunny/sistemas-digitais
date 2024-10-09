library ieee;
use ieee.std_logic_1164.all;

entity circuito is 
port(A,B,C  : in bit;
	 S1, S2 : out bit);
end circuito;

architecture behav of circuito is
	signal Si1: bit; -- recebe o sinal do primeiro AND do S1
	signal Si2: bit; -- recebe o sinal do segundo AND do S1
	signal Si3: bit; -- recebe o sinal do terceiro AND do S1

	signal Sig1: bit; -- recebe o sinal do primeiro AND do S2
	signal Sig2: bit; -- recebe o sinal do segundo AND do S2
	signal Sig3: bit; -- recebe o sinal do terceiro AND do S2
	signal Sig4: bit; -- recebe o sinal do quarto AND do S2

	component PortaAnd2 is
		port(e1, e2    : in bit;
			 saida_and2: out bit);
	end component;

	component PortaOr3 is
		port(in1, in2, in3: in bit;
			 saida_or3    : out bit);
	end component;

	component PortaAnd3 is
		port(en1, en2, en3 : in bit;
			 saida_and3    : out bit);
	end component;

	component PortaOr4 is
		port(input1, input2, input3, input4: in bit;
			 saida_or4        			   : out bit);
	end component;

begin
	u1: PortaAnd2 port map(e1 => A, e2 => B, saida_and2 => Si1);
	u2: PortaAnd2 port map(e1 => B, e2 => C, saida_and2 => Si2);
	u3: PortaAnd2  port map(e1 => A, e2 => C, saida_and2 => Si3);
	u4: PortaOr3 port map (in1 => Si1, in2 => Si2, inp3 => Si3, saida_or3 => S1);

	u5: PortaAnd3 port map(en1 => A, en2 => not(B), en3 => not(C), saida_and3 => Sig1);
	u6: PortaAnd3 port map(en1 => A, en2 => B, en3 => C, saida_and3 => Sig2);
	u7: PortaAnd3 port map(en1 => not(A), en2 => B, en3 => not(C), saida_and3 => Sig3);
	u8: PortaAnd3 port map(en1 => not(A), en2 => not(B), en3 => C, saida_and3 => Sig4);
	u9: PortaOr4 port map (input1 => Sig1, input2 => Sig2, input3 => Sig3, input4 => Sig4, saida_or4 => S2);
end architecture behav;