`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2018 07:49:42 PM
// Design Name: 
// Module Name: FourBitCLAdder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FourBitCLAdder_tb;

reg           c_in;
reg   [3:0]   a;
reg   [3:0]   b;
wire  [3:0]   sum;
wire          c_out;

FourBitCLAdder uut(c_in, a, b, sum, c_out);

initial begin
    #100 c_in = 0; a = 0; b = 0;
    #100 c_in = 0; a = 4'b0001; b = 4'b0001;
    #100 assert( sum == 4'b0010 && c_out == 0 ) else $fatal(1, "1 failed");
    #100 c_in = 0; a = 4'b1111; b = 4'b0001;
    #100 assert( sum == 4'b0000 && c_out == 1 ) else $fatal(1, "2 failed");
    #100 c_in = 1; a = 4'b1100; b = 4'b0001;
    #100 assert( sum == 4'b1110 && c_out == 0 ) else $fatal(1, "3 failed");
    $display("@@@Passed");
    $finish;
end
endmodule
