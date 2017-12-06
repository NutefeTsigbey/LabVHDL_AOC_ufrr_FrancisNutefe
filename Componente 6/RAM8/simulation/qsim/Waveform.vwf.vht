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
-- Generated on "12/05/2017 22:54:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram8_vhd_vec_tst IS
END ram8_vhd_vec_tst;
ARCHITECTURE ram8_arch OF ram8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ce : STD_LOGIC;
SIGNAL data_entrada : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT ram8
	PORT (
	address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ce : IN STD_LOGIC;
	data_entrada : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram8
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	ce => ce,
	data_entrada => data_entrada,
	data_saida => data_saida,
	we => we
	);
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
LOOP
	address(3) <= '0';
	WAIT FOR 500000 ps;
	address(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
LOOP
	address(2) <= '0';
	WAIT FOR 500000 ps;
	address(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
LOOP
	address(1) <= '0';
	WAIT FOR 500000 ps;
	address(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
LOOP
	address(0) <= '0';
	WAIT FOR 500000 ps;
	address(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_0;

-- ce
t_prcs_ce: PROCESS
BEGIN
LOOP
	ce <= '0';
	WAIT FOR 1000000 ps;
	ce <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ce;
-- data_entrada[7]
t_prcs_data_entrada_7: PROCESS
BEGIN
LOOP
	data_entrada(7) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(7) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_7;
-- data_entrada[6]
t_prcs_data_entrada_6: PROCESS
BEGIN
LOOP
	data_entrada(6) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(6) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_6;
-- data_entrada[5]
t_prcs_data_entrada_5: PROCESS
BEGIN
LOOP
	data_entrada(5) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(5) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_5;
-- data_entrada[4]
t_prcs_data_entrada_4: PROCESS
BEGIN
LOOP
	data_entrada(4) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(4) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_4;
-- data_entrada[3]
t_prcs_data_entrada_3: PROCESS
BEGIN
LOOP
	data_entrada(3) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_3;
-- data_entrada[2]
t_prcs_data_entrada_2: PROCESS
BEGIN
LOOP
	data_entrada(2) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_2;
-- data_entrada[1]
t_prcs_data_entrada_1: PROCESS
BEGIN
LOOP
	data_entrada(1) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_1;
-- data_entrada[0]
t_prcs_data_entrada_0: PROCESS
BEGIN
LOOP
	data_entrada(0) <= '0';
	WAIT FOR 500000 ps;
	data_entrada(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_entrada_0;

-- we
t_prcs_we: PROCESS
BEGIN
LOOP
	we <= '0';
	WAIT FOR 1000000 ps;
	we <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_we;
END ram8_arch;
