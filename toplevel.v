// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

module toplevel
(
// {ALTERA_ARGS_BEGIN} DO NOT REMOVE THIS LINE!

	AD,
	AU,
	BD,
	BU,
	Entrada_A,
	Entrada_B,
	SaidaC,
	SaidaD,
	SaidaU
// {ALTERA_ARGS_END} DO NOT REMOVE THIS LINE!

);

// {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!
output	[6:0]	AD;
output	[6:0]	AU;
output	[6:0]	BD;
output	[6:0]	BU;
input	[7:0]	Entrada_A;
input	[7:0]	Entrada_B;
output	[6:0]	SaidaC;
output	[6:0]	SaidaD;
output	[6:0]	SaidaU;

// {ALTERA_IO_END} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_BEGIN} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_END} DO NOT REMOVE THIS LINE!
endmodule
