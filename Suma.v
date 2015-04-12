`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:27 04/12/2015 
// Design Name: 
// Module Name:    Suma 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Suma
#(parameter N = 25)
(
	input wire [N-1:0] A, B,
	output reg [N-1:0] SUMA
    );

reg [N-1:0] SUMAAux;

always @*
	SUMAAux = A+B;
	
always @*
	if (A[24] == 0 && B[24] == 0 && SUMAAux[24] == 1)
		SUMA = 25'b0111111111111111111111111;
	else if (A[24] == 1 && B[24] == 1 && SUMAAux[24] == 0)
		SUMA = 25'b1000000000000000000000001;
	else
		SUMA = SUMAAux;
		

endmodule

