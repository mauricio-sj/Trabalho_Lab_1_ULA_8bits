module ALU(ALU_controle, Entrada_A, Entrada_B, Saida);

  input [3:0] ALU_controle;
  input [7:0] Entrada_A;
  input [7:0] Entrada_B;
  output reg [7:0] Saida;

  always @(ALU_controle or Entrada_A or Entrada_B)
    case(ALU_controle)
      4'b0001: Saida = Entrada_A + Entrada_B;
      4'b0010: Saida = Entrada_A - Entrada_B;
      4'b0100: Saida = Entrada_A & Entrada_B;
      4'b1000: Saida = Entrada_A  | Entrada_B;
      default: Saida = 0;

    endcase
endmodule