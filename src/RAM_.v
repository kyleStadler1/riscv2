`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2025 08:05:55 AM
// Design Name: 
// Module Name: _RAM
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


module RAM_ #(
    parameter MEM_DISABLE   = 2'b00,
    parameter MEM_READ_SEXT = 2'b01,
    parameter MEM_READ_ZEXT = 2'b10,
    parameter MEM_WRITE     = 2'b11
)(
    input clk,
    input reset,
    input [31:0] addrA,
    output [31:0] doutA,
    output reg readValidA,
    input [3:0] web,
    input enB,
    input [31:0] addrB,
    input [31:0] dinB,
    output [31:0] doutB,
    output reg readValidB,
    output reg NOTready
    );
    reg tempA, tempB;
    always @(posedge clk) begin
        if (reset) begin
            readValidA <= 1'b0;
            tempA <= 1'b0;
            readValidB <= 1'b0;
            tempB <= 1'b0;
            NOTready <= 1'b0;
        end else begin
            tempA <= 1'b1;
            tempB <= web == 4'b0000 & enB;
            NOTready <= 1'b0;
            
            readValidA <= tempA;
            readValidB <= tempB;
        end
    end
    
    dualSRAM sram(
        .addra(addrA[16:2]),
        .clka(clk),
        .dina(32'hd0d0d0d0),
        .douta(doutA),
        .wea(4'b0000),
        .addrb(addrB[16:2]),
        .clkb(clk),
        .dinb(dinB),
        .doutb(doutB),
        .web(web)
    );
endmodule
