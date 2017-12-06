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
-- Generated on "12/05/2017 23:09:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          banco
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY banco_vhd_vec_tst IS
END banco_vhd_vec_tst;
ARCHITECTURE banco_arch OF banco_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Dado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL EscritaReg : STD_LOGIC;
SIGNAL RegA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SaidaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SaidaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT banco
	PORT (
	Clock : IN STD_LOGIC;
	Dado : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	EscritaReg : IN STD_LOGIC;
	RegA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SaidaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SaidaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : banco
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Dado => Dado,
	EscritaReg => EscritaReg,
	RegA => RegA,
	RegB => RegB,
	SaidaA => SaidaA,
	SaidaB => SaidaB
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 500000 ps;
	Clock <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- Dado[7]
t_prcs_Dado_7: PROCESS
BEGIN
LOOP
	Dado(7) <= '0';
	WAIT FOR 1000000 ps;
	Dado(7) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_7;
-- Dado[6]
t_prcs_Dado_6: PROCESS
BEGIN
LOOP
	Dado(6) <= '0';
	WAIT FOR 1000000 ps;
	Dado(6) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_6;
-- Dado[5]
t_prcs_Dado_5: PROCESS
BEGIN
LOOP
	Dado(5) <= '0';
	WAIT FOR 1000000 ps;
	Dado(5) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_5;
-- Dado[4]
t_prcs_Dado_4: PROCESS
BEGIN
LOOP
	Dado(4) <= '0';
	WAIT FOR 1000000 ps;
	Dado(4) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_4;
-- Dado[3]
t_prcs_Dado_3: PROCESS
BEGIN
LOOP
	Dado(3) <= '0';
	WAIT FOR 1000000 ps;
	Dado(3) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_3;
-- Dado[2]
t_prcs_Dado_2: PROCESS
BEGIN
LOOP
	Dado(2) <= '0';
	WAIT FOR 1000000 ps;
	Dado(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_2;
-- Dado[1]
t_prcs_Dado_1: PROCESS
BEGIN
LOOP
	Dado(1) <= '0';
	WAIT FOR 1000000 ps;
	Dado(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_1;
-- Dado[0]
t_prcs_Dado_0: PROCESS
BEGIN
LOOP
	Dado(0) <= '0';
	WAIT FOR 1000000 ps;
	Dado(0) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Dado_0;

-- EscritaReg
t_prcs_EscritaReg: PROCESS
BEGIN
LOOP
	EscritaReg <= '0';
	WAIT FOR 1000000 ps;
	EscritaReg <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EscritaReg;
-- RegA[1]
t_prcs_RegA_1: PROCESS
BEGIN
LOOP
	RegA(1) <= '0';
	WAIT FOR 500000 ps;
	RegA(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegA_1;
-- RegA[0]
t_prcs_RegA_0: PROCESS
BEGIN
LOOP
	RegA(0) <= '0';
	WAIT FOR 500000 ps;
	RegA(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegA_0;
-- RegB[1]
t_prcs_RegB_1: PROCESS
BEGIN
LOOP
	RegB(1) <= '0';
	WAIT FOR 1000000 ps;
	RegB(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegB_1;
-- RegB[0]
t_prcs_RegB_0: PROCESS
BEGIN
LOOP
	RegB(0) <= '0';
	WAIT FOR 1000000 ps;
	RegB(0) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegB_0;
END banco_arch;
