`timescale 1ns / 1ps  

module tb_alu;
//Inputs
 reg[7:0] Entrada_A,Entrada_B;
 reg[3:0] ALU_controle;

//Outputs
 wire[7:0] ALU_Result;
 wire CarryOut;
 // Verilog code for ALU
 
 integer i;

 ALU test_unit(
            .Entrada_A(Entrada_A),
	    .Entrada_B(Entrada_B),  // ALU 8-bit Inputs                 
            .ALU_controle(ALU_controle),// ALU Selection
            .ALU_Result(ALU_Result), // ALU 8-bit Output
            .CarryOut(CarryOut) // Carry Out Flag
     );
	
    initial 
    begin
        ALU_controle=4'b0001; Entrada_A=8'b10100110; Entrada_B = 8'b10000000;
        #10;
	$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
        ALU_controle=4'b0010; Entrada_A=8'b11110000; Entrada_B = 8'b01010000;
        #10;
	$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
        ALU_controle=4'b0100; Entrada_A=8'b11110010; Entrada_B = 8'b00010101;
        #10;	
	$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
        ALU_controle=4'b1000; Entrada_A=8'b11110010; Entrada_B = 8'b00010101;
        #10;
	$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
	i = 0;
	while (i < 10)
	begin
		#2
		ALU_controle=4'b0001; Entrada_A=$urandom%255; Entrada_B = $urandom%255;
		#2
		$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
		i = i + 1;
	end
	i = 0;
	while (i < 10)
	begin
		#2
		ALU_controle=4'b0010; Entrada_A=$urandom%255; Entrada_B = $urandom%255;
		#2
		$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
		i = i + 1;
	end
	i = 0;
	while (i < 10)
	begin
		#2
		ALU_controle=4'b0100; Entrada_A=$urandom%255; Entrada_B = $urandom%255;
		#2
		$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
		i = i + 1;
	end
	i = 0;
	while (i < 10)
	begin
		#2
		ALU_controle=4'b1000; Entrada_A=$urandom%255; Entrada_B = $urandom%255;
		#2
		$display("Entrada_A:%d Entrada_B:%d  ALU_controle:%d Saida:%d CarryOut:%d", Entrada_A, Entrada_B, ALU_controle, ALU_Result, CarryOut);
		i = i + 1;
	end
	$stop;
    end
endmodule