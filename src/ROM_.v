

module ROM_ #(
    parameter D0 = 32'h93001000,
    parameter D4 = 32'h93900001,
    parameter D8 = 32'h93830000,
    parameter Dc = 32'h93001000,
    parameter D10 = 32'h13012000,
    parameter D14 = 32'h93013000,
    parameter D18 = 32'h13024000,
    parameter D1c = 32'h23a01300,
    parameter D20 = 32'h23a22300,
    parameter D24 = 32'h23a43300,
    parameter D28 = 32'h23a64300,

    parameter D2c = 32'h93000000,

    parameter D30 = 32'h83a00300,
    parameter D34 = 32'h83a04300,
    parameter D38 = 32'h83a08300,
    parameter D3c = 32'h83a0c300,
    parameter D40 = 32'h93007000,
    parameter NOP = 32'h93000000
    )(
    input clk,
    input reset,
    input [31:0] addrA,
    input [31:0] addrB,
    input enB,
    output reg [31:0] doutAFinal,
    output reg readValidA,
    output reg [31:0] doutBFinal,
    output reg readValidB,
    output wire NOTready
    );
    assign NOTready = 1'b0;
    reg tempA, tempB;
    reg [31:0] doutA, doutB;
    assign ready = 1'b0;
    always @(posedge clk) begin
        if (reset) begin
            tempA <= 1'b0;
            tempB <= 1'b0;
            readValidA <= 1'b0;
            readValidB <= 1'b0;
            doutA <= NOP;
            doutB <= NOP;
            doutAFinal <= NOP;
            doutBFinal <= NOP;
        end else begin
            case(addrA[15:0]) 
                16'h0000 : doutA <= D0;
                16'h0004 : doutA <= D4;
                16'h0008 : doutA <= D8;
                16'h000c : doutA <= Dc;
                16'h0010 : doutA <= D10;
                16'h0014 : doutA <= D14;
                16'h0018 : doutA <= D18;
                16'h001c : doutA <= D1c;
                16'h0020 : doutA <= D20;
                16'h0024 : doutA <= D24;
                16'h0028 : doutA <= D28;
                16'h002c : doutA <= D2c;
                16'h0030 : doutA <= D30;
                16'h0034 : doutA <= D34;
                16'h0038 : doutA <= D38;
                16'h003c : doutA <= D3c;
                default : doutA <= NOP;
            endcase
            case(addrB[15:0]) 
                16'h0000 : doutB <= D0;
                16'h0004 : doutB <= D4;
                16'h0008 : doutB <= D8;
                16'h000c : doutB <= Dc;
                16'h0010 : doutB <= D10;
                16'h0014 : doutB <= D14;
                16'h0018 : doutB <= D18;
                16'h001c : doutB <= D1c;
                16'h0020 : doutB <= D20;
                16'h0024 : doutB <= D24;
                16'h0028 : doutB <= D28;
                16'h002c : doutB <= D2c;
                16'h0030 : doutB <= D30;
                16'h0034 : doutB <= D34;
                16'h0038 : doutB <= D38;
                16'h003c : doutB <= D3c;
                default : doutB <= NOP;
            endcase
            tempA <= 1'b1;
            tempB <= 1'b1 & enB;
            readValidA <= tempA;
            readValidB <= tempB;
            doutAFinal <= doutA;
            doutBFinal <= doutB;
        end
    end
endmodule