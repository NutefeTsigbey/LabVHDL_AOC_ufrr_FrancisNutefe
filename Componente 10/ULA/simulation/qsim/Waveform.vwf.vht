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
-- Generated on "12/05/2017 23:34:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Operacao : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT ula
	PORT (
	entradaA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Operacao : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	entradaA => entradaA,
	entradaB => entradaB,
	Operacao => Operacao,
	saida => saida,
	zero => zero
	);
-- entradaA[7]
t_prcs_entradaA_7: PROCESS
BEGIN
	entradaA(7) <= '0';
	WAIT FOR 500000 ps;
	entradaA(7) <= '1';
	WAIT FOR 499000 ps;
	entradaA(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_7;
-- entradaA[6]
t_prcs_entradaA_6: PROCESS
BEGIN
	entradaA(6) <= '0';
	WAIT FOR 500000 ps;
	entradaA(6) <= '1';
	WAIT FOR 499000 ps;
	entradaA(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_6;
-- entradaA[5]
t_prcs_entradaA_5: PROCESS
BEGIN
	entradaA(5) <= '0';
	WAIT FOR 500000 ps;
	entradaA(5) <= '1';
	WAIT FOR 499000 ps;
	entradaA(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_5;
-- entradaA[4]
t_prcs_entradaA_4: PROCESS
BEGIN
	entradaA(4) <= '0';
	WAIT FOR 500000 ps;
	entradaA(4) <= '1';
	WAIT FOR 499000 ps;
	entradaA(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_4;
-- entradaA[3]
t_prcs_entradaA_3: PROCESS
BEGIN
	entradaA(3) <= '0';
	WAIT FOR 500000 ps;
	entradaA(3) <= '1';
	WAIT FOR 499000 ps;
	entradaA(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_3;
-- entradaA[2]
t_prcs_entradaA_2: PROCESS
BEGIN
	entradaA(2) <= '0';
	WAIT FOR 500000 ps;
	entradaA(2) <= '1';
	WAIT FOR 499000 ps;
	entradaA(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_2;
-- entradaA[1]
t_prcs_entradaA_1: PROCESS
BEGIN
	entradaA(1) <= '0';
	WAIT FOR 500000 ps;
	entradaA(1) <= '1';
	WAIT FOR 499000 ps;
	entradaA(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_1;
-- entradaA[0]
t_prcs_entradaA_0: PROCESS
BEGIN
	entradaA(0) <= '0';
	WAIT FOR 500000 ps;
	entradaA(0) <= '1';
	WAIT FOR 499000 ps;
	entradaA(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_0;
-- entradaB[7]
t_prcs_entradaB_7: PROCESS
BEGIN
	entradaB(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_7;
-- entradaB[6]
t_prcs_entradaB_6: PROCESS
BEGIN
	entradaB(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_6;
-- entradaB[5]
t_prcs_entradaB_5: PROCESS
BEGIN
	entradaB(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_5;
-- entradaB[4]
t_prcs_entradaB_4: PROCESS
BEGIN
	entradaB(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_4;
-- entradaB[3]
t_prcs_entradaB_3: PROCESS
BEGIN
	entradaB(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_3;
-- entradaB[2]
t_prcs_entradaB_2: PROCESS
BEGIN
	entradaB(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_2;
-- entradaB[1]
t_prcs_entradaB_1: PROCESS
BEGIN
	entradaB(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_1;
-- entradaB[0]
t_prcs_entradaB_0: PROCESS
BEGIN
	entradaB(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_0;
-- Operacao[2]
t_prcs_Operacao_2: PROCESS
BEGIN
LOOP
	Operacao(2) <= '0';
	WAIT FOR 500000 ps;
	Operacao(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Operacao_2;
-- Operacao[1]
t_prcs_Operacao_1: PROCESS
BEGIN
LOOP
	Operacao(1) <= '0';
	WAIT FOR 500000 ps;
	Operacao(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Operacao_1;
-- Operacao[0]
t_prcs_Operacao_0: PROCESS
BEGIN
LOOP
	Operacao(0) <= '0';
	WAIT FOR 500000 ps;
	Operacao(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Operacao_0;
END ula_arch;
