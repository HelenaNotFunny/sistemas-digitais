entity PortaAnd2 is
    port(e1, e2: in bit;
          saida_and2    : out bit);
    end PortaAnd2;
    
    architecture behav of PortaAnd2 is
    begin
        saida_and2 <= e1 and e2;
        
    end architecture behav;