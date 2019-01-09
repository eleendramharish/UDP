`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2019 03:15:11 AM
// Design Name: 
// Module Name: counter
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


module counter(clk,rst,count);
input clk;
    input rst;
    output [3:0] count;
    reg [3:0] count;

    always @(posedge clk or posedge rst)
    begin
    if(rst==1)
    begin
    count<=4'b0011;
    end
    else if(count< 4'b1100)
    begin
    count<=count+1;
    end
    end
endmodule
