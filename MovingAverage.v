`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2024 20:53:54
// Design Name: 
// Module Name: filter
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


module MovingAverage (  clk , in , out );

input clk;
input signed [15:0] in;
output signed [15:0] out;

reg [15:0] reg1 = 0, reg2 = 0, reg3 = 0, reg4 = 0;

always @(posedge clk)
begin
    reg1 <= in;
    reg2 <= reg1;
    reg3 <= reg2;
    reg4 <= reg3;
    
end

assign out = (reg1 + reg2 + reg3 + reg4) >>> 2;

endmodule