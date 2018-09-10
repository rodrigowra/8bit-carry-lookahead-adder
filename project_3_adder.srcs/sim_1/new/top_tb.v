`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2018 07:50:21 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb;

reg           c_in;
reg   [7:0]   a;
reg   [7:0]   b;
wire  [7:0]   sum;
wire          c_out;

top uut(c_in, a, b, sum, c_out);

initial begin
    #100 c_in = 0; a = 0; b = 0;
    #100 c_in = 0; a = 8'hF0; b = 8'h01;
    #100 assert( sum == 8'hF1 && c_out == 0 ) else $fatal(1, "1 failed");
    #100 c_in = 0; a = 8'hFF; b = 8'h01;
    #100 assert( sum == 8'h00 && c_out == 1 ) else $fatal(1, "2 failed");
    #100 c_in = 0; a = 8'hF1; b = 8'h01;
    #100 assert( sum == 8'hF2 && c_out == 0 ) else $fatal(1, "3 failed");        
    $display("@@@Passed");
    $finish;
end
endmodule
