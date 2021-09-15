module ALU(ALU_controle, Entrada_A, Entrada_B, ALU_Result, CarryOut);

		input [3:0] ALU_controle;
		input [7:0] Entrada_A;
		input [7:0] Entrada_B;
		output CarryOut;
		output reg [7:0] ALU_Result;
		wire [8:0] tmp;
		assign tmp = {1'b0,Entrada_A} + {1'b0,Entrada_B};
		assign CarryOut = tmp[8]; // Carryout flag

  always @(ALU_controle, Entrada_A, Entrada_B)
  begin
	ALU_Result = 0;
	case(ALU_controle) 
      	4'b0001: ALU_Result = Entrada_A + Entrada_B;
      	4'b0010: ALU_Result = Entrada_A - Entrada_B;
      	4'b0100: ALU_Result = Entrada_A & Entrada_B;
      	4'b1000: ALU_Result = Entrada_A | Entrada_B;
      default: ALU_Result = Entrada_A + Entrada_B;
    endcase
   end
endmodule
