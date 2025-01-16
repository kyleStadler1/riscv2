`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2025 12:45:39 AM
// Design Name: 
// Module Name: execLatch
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


module execLatch#(
    parameter DOUBLE = 1'b1
)(
    input clk,
    input stall,
    input reset,
    input [31:0] aluIn,
    input aluToRegIn,
    input [4:0] rdIn,
    output reg [31:0] alu,
    output reg aluToReg,
    output reg [4:0] rd
    );
    
    reg [31:0] tempAlu;
    reg [31:0] tempAluToReg;
    reg [4:0] tempRd;
    
    always @(posedge clk) begin
        if (reset) begin
            tempAlu <= 32'hx;
            tempAluToReg <= 1'b0;
            tempRd = 5'b00000;
            
           
            alu <= 32'hx;
            aluToReg <= 1'b0;
            rd <= 5'b00000;
        end
        else if (stall) begin
            tempAlu <= tempAlu;
            tempAluToReg <= tempAluToReg;
            tempRd <= tempRd;
        
            alu <= alu;
            aluToReg <= aluToReg;
            rd <= rd;
        end
        else begin
            tempAlu <= aluIn;
            tempAluToReg <= aluToRegIn;
            tempRd <= rdIn;
            
            
            alu <= DOUBLE ? tempAlu : aluIn;
            aluToReg <= DOUBLE ? tempAluToReg : aluToRegIn;
            rd <= DOUBLE ? tempRd : rdIn;
        end
    end
endmodule
