// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Jan 10 14:01:59 2025
// Host        : e9a767cbc9ba running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/user/project/riscv2/genProject/riscv2/riscv2.gen/sources_1/bd/simpleRisc/ip/simpleRisc_Decode_0_0/simpleRisc_Decode_0_0_stub.v
// Design      : simpleRisc_Decode_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Decode,Vivado 2023.1" *)
module simpleRisc_Decode_0_0(clk, stall, reset, instruction, pc_in, rs1, rs2, rd, imm, 
  aluOp, selA, selB, aluToReg, memOp, memSize, branch, jal, jalr, regWriteCollision, pc)
/* synthesis syn_black_box black_box_pad_pin="stall,reset,instruction[31:0],pc_in[31:0],rs1[4:0],rs2[4:0],rd[4:0],imm[31:0],aluOp[3:0],selA,selB[1:0],aluToReg,memOp[1:0],memSize[1:0],branch,jal,jalr,regWriteCollision,pc[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input stall;
  input reset;
  input [31:0]instruction;
  input [31:0]pc_in;
  output [4:0]rs1;
  output [4:0]rs2;
  output [4:0]rd;
  output [31:0]imm;
  output [3:0]aluOp;
  output selA;
  output [1:0]selB;
  output aluToReg;
  output [1:0]memOp;
  output [1:0]memSize;
  output branch;
  output jal;
  output jalr;
  output regWriteCollision;
  output [31:0]pc;
endmodule
