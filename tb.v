`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 21:13:29
// Design Name: 
// Module Name: tb
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


module tb(  );

reg clk = 0;
reg  signed [15:0] in;
wire signed [15:0] LP_out;
wire signed [15:0] HP_out;
wire signed [15:0] BP_out;
wire signed [15:0] MA_out;

combined dut ( in , clk, LP_out, HP_out, BP_out, MA_out );

initial
begin  
    #50 forever #10 clk = !clk;
end

initial
begin
    #50 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    #20 in = 50;
    #20 in = -50;
    
    #20 in = 50;
    #20 in = 0;
    #20 in = -50;
    #20 in = 0;
    #20 in = 50;
    #20 in = 0;
    #20 in = -50;
    #20 in = 0;
    #20 in = 50;
    #20 in = 0;
    #20 in = -50;
    #20 in = 0;
    #20 in = 50;
    #20 in = 0;
    #20 in = -50;
    #20 in = 0;
    #20 in = 50;
   
   
end

endmodule
