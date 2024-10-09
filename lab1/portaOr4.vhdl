entity PortaOr4 is
    port(input1, input2, input3, input4: in bit;
          saida_or4							  : out bit);
    end PortaOr4;
    
    architecture behav of PortaOr4 is
    begin 
        saida_or4 <= input1 or input2 or input3 or input4;
    end architecture behav;