`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2024 12:58:10 AM
// Design Name: 
// Module Name: top
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


module top(
    
    );
    
    wire clk, rsta, ena, wea, rstb, enb, web, rsta_busy, rstb_busy;
    wire [31:0] addra, dina, douta, addrb, sdinb, doutb;
    DualBram ram(clk, rsta, ena, wea, addra, dina, douta, clkb, rstb, enb, web, dinb, rsta_busy, rstb_busy);
    
    
endmodule
