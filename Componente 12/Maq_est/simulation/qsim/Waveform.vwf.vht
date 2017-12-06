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
-- Generated on "12/05/2017 23:48:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maq_est
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maq_est_vhd_vec_tst IS
END maq_est_vhd_vec_tst;
ARCHITECTURE maq_est_arch OF maq_est_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL iniciar : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL R : STD_LOGIC;
COMPONENT maq_est
	PORT (
	ck : IN STD_LOGIC;
	iniciar : IN STD_LOGIC;
	P : IN STD_LOGIC;
	R : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : maq_est
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	iniciar => iniciar,
	P => P,
	R => R
	);

-- ck
t_prcs_ck: PROCESS
BEGIN
LOOP
	ck <= '0';
	WAIT FOR 500000 ps;
	ck <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ck;

-- iniciar
t_prcs_iniciar: PROCESS
BEGIN
LOOP
	iniciar <= '0';
	WAIT FOR 1000000 ps;
	iniciar <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_iniciar;

-- P
t_prcs_P: PROCESS
BEGIN
LOOP
	P <= '0';
	WAIT FOR 500000 ps;
	P <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_P;
END maq_est_arch;
