module memInputLogic_ (
    input [31:0] addr, //for byte locations
    input [1:0] memOp,
    input [1:0] memSize,
    input [31:0] rawDin,
    output [3:0] wen,
    output [31:0] din,
    output RAMenB,
    output ROMenB
);
    assign din = rawDin;
    assign wen = memOp == 2'b11 ? 4'b1111 : 4'b0000;
    assign RAMenB = memOp != 2'b00;
    assign ROMenB = memOp != 2'b00 & memOp != 2'b11;
endmodule