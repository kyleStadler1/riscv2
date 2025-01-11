// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Jan 10 14:01:59 2025
// Host        : e9a767cbc9ba running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/project/riscv2/genProject/riscv2/riscv2.gen/sources_1/bd/simpleRisc/ip/simpleRisc_execLatch_0_0/simpleRisc_execLatch_0_0_sim_netlist.v
// Design      : simpleRisc_execLatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simpleRisc_execLatch_0_0,execLatch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "execLatch,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module simpleRisc_execLatch_0_0
   (clk,
    stall,
    reset,
    aluIn,
    aluToRegIn,
    memSizeIn,
    memOpIn,
    rdIn,
    rs2ValIn,
    alu,
    aluToReg,
    memSize,
    memOp,
    rd,
    rs2Val);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input stall;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]aluIn;
  input aluToRegIn;
  input [1:0]memSizeIn;
  input [1:0]memOpIn;
  input [4:0]rdIn;
  input [31:0]rs2ValIn;
  output [31:0]alu;
  output aluToReg;
  output [1:0]memSize;
  output [1:0]memOp;
  output [4:0]rd;
  output [31:0]rs2Val;

  wire [31:0]alu;
  wire [31:0]aluIn;
  wire aluToReg;
  wire aluToRegIn;
  wire clk;
  wire [1:0]memOp;
  wire [1:0]memOpIn;
  wire [1:0]memSize;
  wire [1:0]memSizeIn;
  wire [4:0]rd;
  wire [4:0]rdIn;
  wire reset;
  wire [31:0]rs2Val;
  wire [31:0]rs2ValIn;
  wire stall;

  simpleRisc_execLatch_0_0_execLatch inst
       (.alu(alu),
        .aluIn(aluIn),
        .aluToReg(aluToReg),
        .aluToRegIn(aluToRegIn),
        .clk(clk),
        .memOp(memOp),
        .memOpIn(memOpIn),
        .memSize(memSize),
        .memSizeIn(memSizeIn),
        .rd(rd),
        .rdIn(rdIn),
        .reset(reset),
        .rs2Val(rs2Val),
        .rs2ValIn(rs2ValIn),
        .stall(stall));
endmodule

(* ORIG_REF_NAME = "execLatch" *) 
module simpleRisc_execLatch_0_0_execLatch
   (alu,
    aluToReg,
    memSize,
    memOp,
    rd,
    rs2Val,
    aluIn,
    clk,
    reset,
    aluToRegIn,
    memSizeIn,
    memOpIn,
    rdIn,
    rs2ValIn,
    stall);
  output [31:0]alu;
  output aluToReg;
  output [1:0]memSize;
  output [1:0]memOp;
  output [4:0]rd;
  output [31:0]rs2Val;
  input [31:0]aluIn;
  input clk;
  input reset;
  input aluToRegIn;
  input [1:0]memSizeIn;
  input [1:0]memOpIn;
  input [4:0]rdIn;
  input [31:0]rs2ValIn;
  input stall;

  wire [31:0]alu;
  wire [31:0]aluIn;
  wire aluToReg;
  wire aluToRegIn;
  wire clk;
  wire [1:0]memOp;
  wire [1:0]memOpIn;
  wire [1:0]memSize;
  wire [1:0]memSizeIn;
  wire p_0_in;
  wire [4:0]rd;
  wire [4:0]rdIn;
  wire reset;
  wire [31:0]rs2Val;
  wire [31:0]rs2ValIn;
  wire stall;

  FDRE aluToReg_reg
       (.C(clk),
        .CE(p_0_in),
        .D(aluToRegIn),
        .Q(aluToReg),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \alu[31]_i_1 
       (.I0(stall),
        .O(p_0_in));
  FDRE \alu_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[0]),
        .Q(alu[0]),
        .R(1'b0));
  FDRE \alu_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[10]),
        .Q(alu[10]),
        .R(1'b0));
  FDRE \alu_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[11]),
        .Q(alu[11]),
        .R(1'b0));
  FDRE \alu_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[12]),
        .Q(alu[12]),
        .R(1'b0));
  FDRE \alu_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[13]),
        .Q(alu[13]),
        .R(1'b0));
  FDRE \alu_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[14]),
        .Q(alu[14]),
        .R(1'b0));
  FDRE \alu_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[15]),
        .Q(alu[15]),
        .R(1'b0));
  FDRE \alu_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[16]),
        .Q(alu[16]),
        .R(1'b0));
  FDRE \alu_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[17]),
        .Q(alu[17]),
        .R(1'b0));
  FDRE \alu_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[18]),
        .Q(alu[18]),
        .R(1'b0));
  FDRE \alu_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[19]),
        .Q(alu[19]),
        .R(1'b0));
  FDRE \alu_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[1]),
        .Q(alu[1]),
        .R(1'b0));
  FDRE \alu_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[20]),
        .Q(alu[20]),
        .R(1'b0));
  FDRE \alu_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[21]),
        .Q(alu[21]),
        .R(1'b0));
  FDRE \alu_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[22]),
        .Q(alu[22]),
        .R(1'b0));
  FDRE \alu_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[23]),
        .Q(alu[23]),
        .R(1'b0));
  FDRE \alu_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[24]),
        .Q(alu[24]),
        .R(1'b0));
  FDRE \alu_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[25]),
        .Q(alu[25]),
        .R(1'b0));
  FDRE \alu_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[26]),
        .Q(alu[26]),
        .R(1'b0));
  FDRE \alu_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[27]),
        .Q(alu[27]),
        .R(1'b0));
  FDRE \alu_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[28]),
        .Q(alu[28]),
        .R(1'b0));
  FDRE \alu_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[29]),
        .Q(alu[29]),
        .R(1'b0));
  FDRE \alu_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[2]),
        .Q(alu[2]),
        .R(1'b0));
  FDRE \alu_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[30]),
        .Q(alu[30]),
        .R(1'b0));
  FDRE \alu_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[31]),
        .Q(alu[31]),
        .R(1'b0));
  FDRE \alu_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[3]),
        .Q(alu[3]),
        .R(1'b0));
  FDRE \alu_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[4]),
        .Q(alu[4]),
        .R(1'b0));
  FDRE \alu_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[5]),
        .Q(alu[5]),
        .R(1'b0));
  FDRE \alu_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[6]),
        .Q(alu[6]),
        .R(1'b0));
  FDRE \alu_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[7]),
        .Q(alu[7]),
        .R(1'b0));
  FDRE \alu_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[8]),
        .Q(alu[8]),
        .R(1'b0));
  FDRE \alu_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(aluIn[9]),
        .Q(alu[9]),
        .R(1'b0));
  FDRE \memOp_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(memOpIn[0]),
        .Q(memOp[0]),
        .R(reset));
  FDRE \memOp_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(memOpIn[1]),
        .Q(memOp[1]),
        .R(reset));
  FDRE \memSize_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(memSizeIn[0]),
        .Q(memSize[0]),
        .R(1'b0));
  FDRE \memSize_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(memSizeIn[1]),
        .Q(memSize[1]),
        .R(1'b0));
  FDRE \rd_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(rdIn[0]),
        .Q(rd[0]),
        .R(reset));
  FDRE \rd_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(rdIn[1]),
        .Q(rd[1]),
        .R(reset));
  FDRE \rd_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(rdIn[2]),
        .Q(rd[2]),
        .R(reset));
  FDRE \rd_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(rdIn[3]),
        .Q(rd[3]),
        .R(reset));
  FDRE \rd_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(rdIn[4]),
        .Q(rd[4]),
        .R(reset));
  FDRE \rs2Val_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[0]),
        .Q(rs2Val[0]),
        .R(1'b0));
  FDRE \rs2Val_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[10]),
        .Q(rs2Val[10]),
        .R(1'b0));
  FDRE \rs2Val_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[11]),
        .Q(rs2Val[11]),
        .R(1'b0));
  FDRE \rs2Val_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[12]),
        .Q(rs2Val[12]),
        .R(1'b0));
  FDRE \rs2Val_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[13]),
        .Q(rs2Val[13]),
        .R(1'b0));
  FDRE \rs2Val_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[14]),
        .Q(rs2Val[14]),
        .R(1'b0));
  FDRE \rs2Val_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[15]),
        .Q(rs2Val[15]),
        .R(1'b0));
  FDRE \rs2Val_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[16]),
        .Q(rs2Val[16]),
        .R(1'b0));
  FDRE \rs2Val_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[17]),
        .Q(rs2Val[17]),
        .R(1'b0));
  FDRE \rs2Val_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[18]),
        .Q(rs2Val[18]),
        .R(1'b0));
  FDRE \rs2Val_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[19]),
        .Q(rs2Val[19]),
        .R(1'b0));
  FDRE \rs2Val_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[1]),
        .Q(rs2Val[1]),
        .R(1'b0));
  FDRE \rs2Val_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[20]),
        .Q(rs2Val[20]),
        .R(1'b0));
  FDRE \rs2Val_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[21]),
        .Q(rs2Val[21]),
        .R(1'b0));
  FDRE \rs2Val_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[22]),
        .Q(rs2Val[22]),
        .R(1'b0));
  FDRE \rs2Val_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[23]),
        .Q(rs2Val[23]),
        .R(1'b0));
  FDRE \rs2Val_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[24]),
        .Q(rs2Val[24]),
        .R(1'b0));
  FDRE \rs2Val_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[25]),
        .Q(rs2Val[25]),
        .R(1'b0));
  FDRE \rs2Val_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[26]),
        .Q(rs2Val[26]),
        .R(1'b0));
  FDRE \rs2Val_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[27]),
        .Q(rs2Val[27]),
        .R(1'b0));
  FDRE \rs2Val_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[28]),
        .Q(rs2Val[28]),
        .R(1'b0));
  FDRE \rs2Val_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[29]),
        .Q(rs2Val[29]),
        .R(1'b0));
  FDRE \rs2Val_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[2]),
        .Q(rs2Val[2]),
        .R(1'b0));
  FDRE \rs2Val_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[30]),
        .Q(rs2Val[30]),
        .R(1'b0));
  FDRE \rs2Val_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[31]),
        .Q(rs2Val[31]),
        .R(1'b0));
  FDRE \rs2Val_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[3]),
        .Q(rs2Val[3]),
        .R(1'b0));
  FDRE \rs2Val_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[4]),
        .Q(rs2Val[4]),
        .R(1'b0));
  FDRE \rs2Val_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[5]),
        .Q(rs2Val[5]),
        .R(1'b0));
  FDRE \rs2Val_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[6]),
        .Q(rs2Val[6]),
        .R(1'b0));
  FDRE \rs2Val_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[7]),
        .Q(rs2Val[7]),
        .R(1'b0));
  FDRE \rs2Val_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[8]),
        .Q(rs2Val[8]),
        .R(1'b0));
  FDRE \rs2Val_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(rs2ValIn[9]),
        .Q(rs2Val[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
