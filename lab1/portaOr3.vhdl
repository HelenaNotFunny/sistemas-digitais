entity PortaOr3 is
    port(in1, in2, in3: in bit;
         saida_or3	  : out bit);
    end PortaOr3;
    
    architecture behav of PortaOr3 is
    begin 
        saida_or3 <= in1 or in2 or in3;
    end architecture behav;