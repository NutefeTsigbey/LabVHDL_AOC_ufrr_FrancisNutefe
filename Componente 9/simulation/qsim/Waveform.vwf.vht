-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2017 23:26:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          unidadecontrole
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY unidadecontrole_vhd_vec_tst IS
END unidadecontrole_vhd_vec_tst;
ARCHITECTURE unidadecontrole_arch OF unidadecontrole_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL esc_men : STD_LOGIC;
SIGNAL esc_reg : STD_LOGIC;
SIGNAL ler_men : STD_LOGIC;
SIGNAL memParaReg : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pc_flag : STD_LOGIC;
SIGNAL ula_fonte : STD_LOGIC;
SIGNAL ULAop : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT unidadecontrole
	PORT (
	clock : IN STD_LOGIC;
	esc_men : OUT STD_LOGIC;
	esc_reg : OUT STD_LOGIC;
	ler_men : OUT STD_LOGIC;
	memParaReg : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pc_flag : INOUT STD_LOGIC;
	ula_fonte : OUT STD_LOGIC;
	ULAop : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : unidadecontrole
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	esc_men => esc_men,
	esc_reg => esc_reg,
	ler_men => ler_men,
	memParaReg => memParaReg,
	opcode => opcode,
	pc_flag => pc_flag,
	ula_fonte => ula_fonte,
	ULAop => ULAop
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 500000 ps;
	clock <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
LOOP
	opcode(3) <= '0';
	WAIT FOR 1000000 ps;
	opcode(3) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
LOOP
	opcode(2) <= '0';
	WAIT FOR 1000000 ps;
	opcode(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
LOOP
	opcode(1) <= '0';
	WAIT FOR 1000000 ps;
	opcode(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
LOOP
	opcode(0) <= '0';
	WAIT FOR 1000000 ps;
	opcode(0) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_0;

-- pc_flag
t_prcs_pc_flag: PROCESS
BEGIN
LOOP
	pc_flag <= '0';
	WAIT FOR 500000 ps;
	pc_flag <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pc_flag;
END unidadecontrole_arch;
