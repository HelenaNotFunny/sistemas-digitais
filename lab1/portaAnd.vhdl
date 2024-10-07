entity PortaAnd is
    port(en1, en2, en3: in bit;
          saida_and    : out bit);
    end PortaAnd;
    
    architecture behav of PortaAnd is
    begin
        saida_and <= en1 and en2 and en3;
        
    end architecture behav;