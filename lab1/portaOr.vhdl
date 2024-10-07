entity PortaOr is
    port(input1, input2, input3, input4: in bit;
          saida_or							  : out bit);
    end PortaOr;
    
    architecture behav of PortaOr is
    begin 
        saida_or <= input1 or input2 or input3 or input4;
    end architecture behav;