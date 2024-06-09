`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 23:03:01
// Design Name: 
// Module Name: combined
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


module combined( in , clk, LP_out, HP_out, BP_out, MA_out );

input clk;
input  signed [15:0] in;
output signed [15:0] LP_out;
output signed [15:0] HP_out;
output signed [15:0] BP_out;
output signed [15:0] MA_out;

LowPass LP ( clk, in, LP_out );
HighPass HP ( clk, in, HP_out );
BandPass BP ( clk, in, BP_out );
MovingAverage MA ( clk, in, MA_out );


endmodule
