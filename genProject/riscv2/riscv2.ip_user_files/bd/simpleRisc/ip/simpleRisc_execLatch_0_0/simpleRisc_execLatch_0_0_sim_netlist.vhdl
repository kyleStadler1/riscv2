-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Jan 10 14:02:00 2025
-- Host        : e9a767cbc9ba running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/project/riscv2/genProject/riscv2/riscv2.gen/sources_1/bd/simpleRisc/ip/simpleRisc_execLatch_0_0/simpleRisc_execLatch_0_0_sim_netlist.vhdl
-- Design      : simpleRisc_execLatch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simpleRisc_execLatch_0_0_execLatch is
  port (
    alu : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aluToReg : out STD_LOGIC;
    memSize : out STD_LOGIC_VECTOR ( 1 downto 0 );
    memOp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2Val : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aluIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    aluToRegIn : in STD_LOGIC;
    memSizeIn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    memOpIn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rdIn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2ValIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stall : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of simpleRisc_execLatch_0_0_execLatch : entity is "execLatch";
end simpleRisc_execLatch_0_0_execLatch;

architecture STRUCTURE of simpleRisc_execLatch_0_0_execLatch is
  signal p_0_in : STD_LOGIC;
begin
aluToReg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluToRegIn,
      Q => aluToReg,
      R => reset
    );
\alu[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stall,
      O => p_0_in
    );
\alu_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(0),
      Q => alu(0),
      R => '0'
    );
\alu_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(10),
      Q => alu(10),
      R => '0'
    );
\alu_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(11),
      Q => alu(11),
      R => '0'
    );
\alu_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(12),
      Q => alu(12),
      R => '0'
    );
\alu_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(13),
      Q => alu(13),
      R => '0'
    );
\alu_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(14),
      Q => alu(14),
      R => '0'
    );
\alu_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(15),
      Q => alu(15),
      R => '0'
    );
\alu_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(16),
      Q => alu(16),
      R => '0'
    );
\alu_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(17),
      Q => alu(17),
      R => '0'
    );
\alu_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(18),
      Q => alu(18),
      R => '0'
    );
\alu_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(19),
      Q => alu(19),
      R => '0'
    );
\alu_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(1),
      Q => alu(1),
      R => '0'
    );
\alu_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(20),
      Q => alu(20),
      R => '0'
    );
\alu_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(21),
      Q => alu(21),
      R => '0'
    );
\alu_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(22),
      Q => alu(22),
      R => '0'
    );
\alu_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(23),
      Q => alu(23),
      R => '0'
    );
\alu_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(24),
      Q => alu(24),
      R => '0'
    );
\alu_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(25),
      Q => alu(25),
      R => '0'
    );
\alu_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(26),
      Q => alu(26),
      R => '0'
    );
\alu_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(27),
      Q => alu(27),
      R => '0'
    );
\alu_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(28),
      Q => alu(28),
      R => '0'
    );
\alu_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(29),
      Q => alu(29),
      R => '0'
    );
\alu_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(2),
      Q => alu(2),
      R => '0'
    );
\alu_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(30),
      Q => alu(30),
      R => '0'
    );
\alu_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(31),
      Q => alu(31),
      R => '0'
    );
\alu_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(3),
      Q => alu(3),
      R => '0'
    );
\alu_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(4),
      Q => alu(4),
      R => '0'
    );
\alu_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(5),
      Q => alu(5),
      R => '0'
    );
\alu_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(6),
      Q => alu(6),
      R => '0'
    );
\alu_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(7),
      Q => alu(7),
      R => '0'
    );
\alu_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(8),
      Q => alu(8),
      R => '0'
    );
\alu_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => aluIn(9),
      Q => alu(9),
      R => '0'
    );
\memOp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => memOpIn(0),
      Q => memOp(0),
      R => reset
    );
\memOp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => memOpIn(1),
      Q => memOp(1),
      R => reset
    );
\memSize_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => memSizeIn(0),
      Q => memSize(0),
      R => '0'
    );
\memSize_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => memSizeIn(1),
      Q => memSize(1),
      R => '0'
    );
\rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rdIn(0),
      Q => rd(0),
      R => reset
    );
\rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rdIn(1),
      Q => rd(1),
      R => reset
    );
\rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rdIn(2),
      Q => rd(2),
      R => reset
    );
\rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rdIn(3),
      Q => rd(3),
      R => reset
    );
\rd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rdIn(4),
      Q => rd(4),
      R => reset
    );
\rs2Val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(0),
      Q => rs2Val(0),
      R => '0'
    );
\rs2Val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(10),
      Q => rs2Val(10),
      R => '0'
    );
\rs2Val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(11),
      Q => rs2Val(11),
      R => '0'
    );
\rs2Val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(12),
      Q => rs2Val(12),
      R => '0'
    );
\rs2Val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(13),
      Q => rs2Val(13),
      R => '0'
    );
\rs2Val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(14),
      Q => rs2Val(14),
      R => '0'
    );
\rs2Val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(15),
      Q => rs2Val(15),
      R => '0'
    );
\rs2Val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(16),
      Q => rs2Val(16),
      R => '0'
    );
\rs2Val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(17),
      Q => rs2Val(17),
      R => '0'
    );
\rs2Val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(18),
      Q => rs2Val(18),
      R => '0'
    );
\rs2Val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(19),
      Q => rs2Val(19),
      R => '0'
    );
\rs2Val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(1),
      Q => rs2Val(1),
      R => '0'
    );
\rs2Val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(20),
      Q => rs2Val(20),
      R => '0'
    );
\rs2Val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(21),
      Q => rs2Val(21),
      R => '0'
    );
\rs2Val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(22),
      Q => rs2Val(22),
      R => '0'
    );
\rs2Val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(23),
      Q => rs2Val(23),
      R => '0'
    );
\rs2Val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(24),
      Q => rs2Val(24),
      R => '0'
    );
\rs2Val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(25),
      Q => rs2Val(25),
      R => '0'
    );
\rs2Val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(26),
      Q => rs2Val(26),
      R => '0'
    );
\rs2Val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(27),
      Q => rs2Val(27),
      R => '0'
    );
\rs2Val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(28),
      Q => rs2Val(28),
      R => '0'
    );
\rs2Val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(29),
      Q => rs2Val(29),
      R => '0'
    );
\rs2Val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(2),
      Q => rs2Val(2),
      R => '0'
    );
\rs2Val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(30),
      Q => rs2Val(30),
      R => '0'
    );
\rs2Val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(31),
      Q => rs2Val(31),
      R => '0'
    );
\rs2Val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(3),
      Q => rs2Val(3),
      R => '0'
    );
\rs2Val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(4),
      Q => rs2Val(4),
      R => '0'
    );
\rs2Val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(5),
      Q => rs2Val(5),
      R => '0'
    );
\rs2Val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(6),
      Q => rs2Val(6),
      R => '0'
    );
\rs2Val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(7),
      Q => rs2Val(7),
      R => '0'
    );
\rs2Val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(8),
      Q => rs2Val(8),
      R => '0'
    );
\rs2Val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => rs2ValIn(9),
      Q => rs2Val(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simpleRisc_execLatch_0_0 is
  port (
    clk : in STD_LOGIC;
    stall : in STD_LOGIC;
    reset : in STD_LOGIC;
    aluIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aluToRegIn : in STD_LOGIC;
    memSizeIn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    memOpIn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rdIn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2ValIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aluToReg : out STD_LOGIC;
    memSize : out STD_LOGIC_VECTOR ( 1 downto 0 );
    memOp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2Val : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of simpleRisc_execLatch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of simpleRisc_execLatch_0_0 : entity is "simpleRisc_execLatch_0_0,execLatch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of simpleRisc_execLatch_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of simpleRisc_execLatch_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of simpleRisc_execLatch_0_0 : entity is "execLatch,Vivado 2023.1";
end simpleRisc_execLatch_0_0;

architecture STRUCTURE of simpleRisc_execLatch_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.simpleRisc_execLatch_0_0_execLatch
     port map (
      alu(31 downto 0) => alu(31 downto 0),
      aluIn(31 downto 0) => aluIn(31 downto 0),
      aluToReg => aluToReg,
      aluToRegIn => aluToRegIn,
      clk => clk,
      memOp(1 downto 0) => memOp(1 downto 0),
      memOpIn(1 downto 0) => memOpIn(1 downto 0),
      memSize(1 downto 0) => memSize(1 downto 0),
      memSizeIn(1 downto 0) => memSizeIn(1 downto 0),
      rd(4 downto 0) => rd(4 downto 0),
      rdIn(4 downto 0) => rdIn(4 downto 0),
      reset => reset,
      rs2Val(31 downto 0) => rs2Val(31 downto 0),
      rs2ValIn(31 downto 0) => rs2ValIn(31 downto 0),
      stall => stall
    );
end STRUCTURE;
