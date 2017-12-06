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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/05/2017 23:34:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	entradaA : IN std_logic_vector(7 DOWNTO 0);
	entradaB : IN std_logic_vector(7 DOWNTO 0);
	Operacao : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic_vector(7 DOWNTO 0);
	zero : OUT std_logic
	);
END ula;

ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Operacao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \Operacao[0]~input_o\ : std_logic;
SIGNAL \Operacao[2]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \somadorSubtrator|Add1~34_cout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~1_sumout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Operacao[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \saidaSignal~0_combout\ : std_logic;
SIGNAL \saidaSignal~8_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~2\ : std_logic;
SIGNAL \somadorSubtrator|Add1~5_sumout\ : std_logic;
SIGNAL \saidaSignal~1_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~6\ : std_logic;
SIGNAL \somadorSubtrator|Add1~9_sumout\ : std_logic;
SIGNAL \saidaSignal~2_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~10\ : std_logic;
SIGNAL \somadorSubtrator|Add1~13_sumout\ : std_logic;
SIGNAL \saidaSignal~3_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~14\ : std_logic;
SIGNAL \somadorSubtrator|Add1~17_sumout\ : std_logic;
SIGNAL \saidaSignal~4_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~18\ : std_logic;
SIGNAL \somadorSubtrator|Add1~21_sumout\ : std_logic;
SIGNAL \saidaSignal~5_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~22\ : std_logic;
SIGNAL \somadorSubtrator|Add1~25_sumout\ : std_logic;
SIGNAL \saidaSignal~6_combout\ : std_logic;
SIGNAL \somadorSubtrator|Add1~26\ : std_logic;
SIGNAL \somadorSubtrator|Add1~29_sumout\ : std_logic;
SIGNAL \saidaSignal~7_combout\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_saidaSignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \somadorSubtrator|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_Operacao <= Operacao;
saida <= ww_saida;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_Operacao[2]~input_o\ <= NOT \Operacao[2]~input_o\;
\ALT_INV_Operacao[0]~input_o\ <= NOT \Operacao[0]~input_o\;
\ALT_INV_Operacao[1]~input_o\ <= NOT \Operacao[1]~input_o\;
\ALT_INV_saidaSignal~0_combout\ <= NOT \saidaSignal~0_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\somadorSubtrator|ALT_INV_Add1~29_sumout\ <= NOT \somadorSubtrator|Add1~29_sumout\;
\somadorSubtrator|ALT_INV_Add1~25_sumout\ <= NOT \somadorSubtrator|Add1~25_sumout\;
\somadorSubtrator|ALT_INV_Add1~21_sumout\ <= NOT \somadorSubtrator|Add1~21_sumout\;
\somadorSubtrator|ALT_INV_Add1~17_sumout\ <= NOT \somadorSubtrator|Add1~17_sumout\;
\somadorSubtrator|ALT_INV_Add1~13_sumout\ <= NOT \somadorSubtrator|Add1~13_sumout\;
\somadorSubtrator|ALT_INV_Add1~9_sumout\ <= NOT \somadorSubtrator|Add1~9_sumout\;
\somadorSubtrator|ALT_INV_Add1~5_sumout\ <= NOT \somadorSubtrator|Add1~5_sumout\;
\somadorSubtrator|ALT_INV_Add1~1_sumout\ <= NOT \somadorSubtrator|Add1~1_sumout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~8_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~5_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~6_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaSignal~7_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \zero~output_o\);

\Operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacao(0),
	o => \Operacao[0]~input_o\);

\Operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacao(2),
	o => \Operacao[2]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\somadorSubtrator|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~34_cout\ = CARRY(( \Operacao[2]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	cin => GND,
	cout => \somadorSubtrator|Add1~34_cout\);

\somadorSubtrator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~1_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[0]~input_o\) ) + ( \entradaA[0]~input_o\ ) + ( \somadorSubtrator|Add1~34_cout\ ))
-- \somadorSubtrator|Add1~2\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[0]~input_o\) ) + ( \entradaA[0]~input_o\ ) + ( \somadorSubtrator|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	cin => \somadorSubtrator|Add1~34_cout\,
	sumout => \somadorSubtrator|Add1~1_sumout\,
	cout => \somadorSubtrator|Add1~2\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\entradaA[7]~input_o\ & (!\entradaB[7]~input_o\ & (!\entradaA[6]~input_o\ $ (\entradaB[6]~input_o\)))) # (\entradaA[7]~input_o\ & (\entradaB[7]~input_o\ & (!\entradaA[6]~input_o\ $ (\entradaB[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100110010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[7]~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	datac => \ALT_INV_entradaA[6]~input_o\,
	datad => \ALT_INV_entradaB[6]~input_o\,
	combout => \LessThan0~0_combout\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\entradaA[7]~input_o\ & (!\entradaB[7]~input_o\ & (!\entradaA[6]~input_o\ & \entradaB[6]~input_o\))) # (\entradaA[7]~input_o\ & ((!\entradaB[7]~input_o\) # ((!\entradaA[6]~input_o\ & \entradaB[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011010100010001001101010001000100110101000100010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[7]~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	datac => \ALT_INV_entradaA[6]~input_o\,
	datad => \ALT_INV_entradaB[6]~input_o\,
	combout => \LessThan0~7_combout\);

\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \entradaB[4]~input_o\ & ( \LessThan0~7_combout\ ) ) # ( !\entradaB[4]~input_o\ & ( \LessThan0~7_combout\ ) ) # ( \entradaB[4]~input_o\ & ( !\LessThan0~7_combout\ & ( (\LessThan0~0_combout\ & ((!\entradaA[5]~input_o\ & 
-- ((!\entradaA[4]~input_o\) # (\entradaB[5]~input_o\))) # (\entradaA[5]~input_o\ & (\entradaB[5]~input_o\ & !\entradaA[4]~input_o\)))) ) ) ) # ( !\entradaB[4]~input_o\ & ( !\LessThan0~7_combout\ & ( (!\entradaA[5]~input_o\ & (\entradaB[5]~input_o\ & 
-- \LessThan0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000010110000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	datae => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

\Operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacao(1),
	o => \Operacao[1]~input_o\);

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = !\entradaA[5]~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[5]~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \LessThan0~1_combout\);

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = !\entradaA[4]~input_o\ $ (!\entradaB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[4]~input_o\,
	datab => \ALT_INV_entradaB[4]~input_o\,
	combout => \LessThan0~2_combout\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\entradaA[1]~input_o\ & (((!\entradaA[0]~input_o\ & \entradaB[0]~input_o\)) # (\entradaB[1]~input_o\))) # (\entradaA[1]~input_o\ & (\entradaB[1]~input_o\ & (!\entradaA[0]~input_o\ & \entradaB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001000100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[1]~input_o\,
	datab => \ALT_INV_entradaB[1]~input_o\,
	datac => \ALT_INV_entradaA[0]~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	combout => \LessThan0~3_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\entradaA[3]~input_o\ & (!\entradaB[3]~input_o\ & (!\entradaA[2]~input_o\ $ (\entradaB[2]~input_o\)))) # (\entradaA[3]~input_o\ & (\entradaB[3]~input_o\ & (!\entradaA[2]~input_o\ $ (\entradaB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100110010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ALT_INV_entradaB[2]~input_o\,
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\entradaA[3]~input_o\ & (((!\entradaA[2]~input_o\ & \entradaB[2]~input_o\)) # (\entradaB[3]~input_o\))) # (\entradaA[3]~input_o\ & (\entradaB[3]~input_o\ & (!\entradaA[2]~input_o\ & \entradaB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001000100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[3]~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	datac => \ALT_INV_entradaA[2]~input_o\,
	datad => \ALT_INV_entradaB[2]~input_o\,
	combout => \LessThan0~5_combout\);

\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( \LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & (!\LessThan0~1_combout\ & !\LessThan0~2_combout\)) ) ) ) # ( !\LessThan0~4_combout\ & ( \LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & 
-- (!\LessThan0~1_combout\ & !\LessThan0~2_combout\)) ) ) ) # ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ & ( (\LessThan0~0_combout\ & (!\LessThan0~1_combout\ & (!\LessThan0~2_combout\ & \LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\saidaSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~0_combout\ = (!\Operacao[0]~input_o\ & (\entradaA[0]~input_o\ & \entradaB[0]~input_o\)) # (\Operacao[0]~input_o\ & ((\entradaB[0]~input_o\) # (\entradaA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_entradaA[0]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	combout => \saidaSignal~0_combout\);

\saidaSignal~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~8_combout\ = ( !\Operacao[1]~input_o\ & ( (((\saidaSignal~0_combout\))) ) ) # ( \Operacao[1]~input_o\ & ( (!\Operacao[0]~input_o\ & (\somadorSubtrator|Add1~1_sumout\)) # (\Operacao[0]~input_o\ & ((!\Operacao[2]~input_o\ & 
-- (\somadorSubtrator|Add1~1_sumout\)) # (\Operacao[2]~input_o\ & (((\LessThan0~6_combout\) # (\LessThan0~8_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100100011011100001111000011110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \somadorSubtrator|ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_LessThan0~8_combout\,
	datae => \ALT_INV_Operacao[1]~input_o\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	datag => \ALT_INV_saidaSignal~0_combout\,
	combout => \saidaSignal~8_combout\);

\somadorSubtrator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~5_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[1]~input_o\) ) + ( \entradaA[1]~input_o\ ) + ( \somadorSubtrator|Add1~2\ ))
-- \somadorSubtrator|Add1~6\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[1]~input_o\) ) + ( \entradaA[1]~input_o\ ) + ( \somadorSubtrator|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[1]~input_o\,
	dataf => \ALT_INV_entradaA[1]~input_o\,
	cin => \somadorSubtrator|Add1~2\,
	sumout => \somadorSubtrator|Add1~5_sumout\,
	cout => \somadorSubtrator|Add1~6\);

\saidaSignal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~1_combout\ = ( \entradaB[1]~input_o\ & ( \somadorSubtrator|Add1~5_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[1]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # ((!\Operacao[2]~input_o\)))) 
-- ) ) ) # ( !\entradaB[1]~input_o\ & ( \somadorSubtrator|Add1~5_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[1]~input_o\))) # (\Operacao[1]~input_o\ & 
-- (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[1]~input_o\ & ( !\somadorSubtrator|Add1~5_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[1]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[1]~input_o\ & ( !\somadorSubtrator|Add1~5_sumout\ & ( 
-- (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[1]~input_o\,
	datae => \ALT_INV_entradaB[1]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~5_sumout\,
	combout => \saidaSignal~1_combout\);

\somadorSubtrator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~9_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[2]~input_o\) ) + ( \entradaA[2]~input_o\ ) + ( \somadorSubtrator|Add1~6\ ))
-- \somadorSubtrator|Add1~10\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[2]~input_o\) ) + ( \entradaA[2]~input_o\ ) + ( \somadorSubtrator|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[2]~input_o\,
	dataf => \ALT_INV_entradaA[2]~input_o\,
	cin => \somadorSubtrator|Add1~6\,
	sumout => \somadorSubtrator|Add1~9_sumout\,
	cout => \somadorSubtrator|Add1~10\);

\saidaSignal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~2_combout\ = ( \entradaB[2]~input_o\ & ( \somadorSubtrator|Add1~9_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[2]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # ((!\Operacao[2]~input_o\)))) 
-- ) ) ) # ( !\entradaB[2]~input_o\ & ( \somadorSubtrator|Add1~9_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[2]~input_o\))) # (\Operacao[1]~input_o\ & 
-- (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[2]~input_o\ & ( !\somadorSubtrator|Add1~9_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[2]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[2]~input_o\ & ( !\somadorSubtrator|Add1~9_sumout\ & ( 
-- (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[2]~input_o\,
	datae => \ALT_INV_entradaB[2]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~9_sumout\,
	combout => \saidaSignal~2_combout\);

\somadorSubtrator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~13_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[3]~input_o\) ) + ( \entradaA[3]~input_o\ ) + ( \somadorSubtrator|Add1~10\ ))
-- \somadorSubtrator|Add1~14\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[3]~input_o\) ) + ( \entradaA[3]~input_o\ ) + ( \somadorSubtrator|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[3]~input_o\,
	dataf => \ALT_INV_entradaA[3]~input_o\,
	cin => \somadorSubtrator|Add1~10\,
	sumout => \somadorSubtrator|Add1~13_sumout\,
	cout => \somadorSubtrator|Add1~14\);

\saidaSignal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~3_combout\ = ( \entradaB[3]~input_o\ & ( \somadorSubtrator|Add1~13_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[3]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # 
-- ((!\Operacao[2]~input_o\)))) ) ) ) # ( !\entradaB[3]~input_o\ & ( \somadorSubtrator|Add1~13_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[3]~input_o\))) # 
-- (\Operacao[1]~input_o\ & (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[3]~input_o\ & ( !\somadorSubtrator|Add1~13_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[3]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[3]~input_o\ & ( 
-- !\somadorSubtrator|Add1~13_sumout\ & ( (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ALT_INV_entradaB[3]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~13_sumout\,
	combout => \saidaSignal~3_combout\);

\somadorSubtrator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~17_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[4]~input_o\) ) + ( \entradaA[4]~input_o\ ) + ( \somadorSubtrator|Add1~14\ ))
-- \somadorSubtrator|Add1~18\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[4]~input_o\) ) + ( \entradaA[4]~input_o\ ) + ( \somadorSubtrator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ALT_INV_entradaA[4]~input_o\,
	cin => \somadorSubtrator|Add1~14\,
	sumout => \somadorSubtrator|Add1~17_sumout\,
	cout => \somadorSubtrator|Add1~18\);

\saidaSignal~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~4_combout\ = ( \entradaB[4]~input_o\ & ( \somadorSubtrator|Add1~17_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[4]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # 
-- ((!\Operacao[2]~input_o\)))) ) ) ) # ( !\entradaB[4]~input_o\ & ( \somadorSubtrator|Add1~17_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[4]~input_o\))) # 
-- (\Operacao[1]~input_o\ & (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[4]~input_o\ & ( !\somadorSubtrator|Add1~17_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[4]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[4]~input_o\ & ( 
-- !\somadorSubtrator|Add1~17_sumout\ & ( (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	datae => \ALT_INV_entradaB[4]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~17_sumout\,
	combout => \saidaSignal~4_combout\);

\somadorSubtrator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~21_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[5]~input_o\) ) + ( \entradaA[5]~input_o\ ) + ( \somadorSubtrator|Add1~18\ ))
-- \somadorSubtrator|Add1~22\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[5]~input_o\) ) + ( \entradaA[5]~input_o\ ) + ( \somadorSubtrator|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[5]~input_o\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	cin => \somadorSubtrator|Add1~18\,
	sumout => \somadorSubtrator|Add1~21_sumout\,
	cout => \somadorSubtrator|Add1~22\);

\saidaSignal~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~5_combout\ = ( \entradaB[5]~input_o\ & ( \somadorSubtrator|Add1~21_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[5]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # 
-- ((!\Operacao[2]~input_o\)))) ) ) ) # ( !\entradaB[5]~input_o\ & ( \somadorSubtrator|Add1~21_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[5]~input_o\))) # 
-- (\Operacao[1]~input_o\ & (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[5]~input_o\ & ( !\somadorSubtrator|Add1~21_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[5]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[5]~input_o\ & ( 
-- !\somadorSubtrator|Add1~21_sumout\ & ( (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[5]~input_o\,
	datae => \ALT_INV_entradaB[5]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~21_sumout\,
	combout => \saidaSignal~5_combout\);

\somadorSubtrator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~25_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[6]~input_o\) ) + ( \entradaA[6]~input_o\ ) + ( \somadorSubtrator|Add1~22\ ))
-- \somadorSubtrator|Add1~26\ = CARRY(( !\Operacao[2]~input_o\ $ (!\entradaB[6]~input_o\) ) + ( \entradaA[6]~input_o\ ) + ( \somadorSubtrator|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[6]~input_o\,
	dataf => \ALT_INV_entradaA[6]~input_o\,
	cin => \somadorSubtrator|Add1~22\,
	sumout => \somadorSubtrator|Add1~25_sumout\,
	cout => \somadorSubtrator|Add1~26\);

\saidaSignal~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~6_combout\ = ( \entradaB[6]~input_o\ & ( \somadorSubtrator|Add1~25_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[6]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # 
-- ((!\Operacao[2]~input_o\)))) ) ) ) # ( !\entradaB[6]~input_o\ & ( \somadorSubtrator|Add1~25_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[6]~input_o\))) # 
-- (\Operacao[1]~input_o\ & (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[6]~input_o\ & ( !\somadorSubtrator|Add1~25_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[6]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[6]~input_o\ & ( 
-- !\somadorSubtrator|Add1~25_sumout\ & ( (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ALT_INV_entradaB[6]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~25_sumout\,
	combout => \saidaSignal~6_combout\);

\somadorSubtrator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somadorSubtrator|Add1~29_sumout\ = SUM(( !\Operacao[2]~input_o\ $ (!\entradaB[7]~input_o\) ) + ( \entradaA[7]~input_o\ ) + ( \somadorSubtrator|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaB[7]~input_o\,
	dataf => \ALT_INV_entradaA[7]~input_o\,
	cin => \somadorSubtrator|Add1~26\,
	sumout => \somadorSubtrator|Add1~29_sumout\);

\saidaSignal~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \saidaSignal~7_combout\ = ( \entradaB[7]~input_o\ & ( \somadorSubtrator|Add1~29_sumout\ & ( (!\Operacao[0]~input_o\ & (((\entradaA[7]~input_o\)) # (\Operacao[1]~input_o\))) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\) # 
-- ((!\Operacao[2]~input_o\)))) ) ) ) # ( !\entradaB[7]~input_o\ & ( \somadorSubtrator|Add1~29_sumout\ & ( (!\Operacao[0]~input_o\ & (\Operacao[1]~input_o\)) # (\Operacao[0]~input_o\ & ((!\Operacao[1]~input_o\ & ((\entradaA[7]~input_o\))) # 
-- (\Operacao[1]~input_o\ & (!\Operacao[2]~input_o\)))) ) ) ) # ( \entradaB[7]~input_o\ & ( !\somadorSubtrator|Add1~29_sumout\ & ( (!\Operacao[1]~input_o\ & ((\entradaA[7]~input_o\) # (\Operacao[0]~input_o\))) ) ) ) # ( !\entradaB[7]~input_o\ & ( 
-- !\somadorSubtrator|Add1~29_sumout\ & ( (\Operacao[0]~input_o\ & (!\Operacao[1]~input_o\ & \entradaA[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100010001001100110000110010011101100111011011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operacao[0]~input_o\,
	datab => \ALT_INV_Operacao[1]~input_o\,
	datac => \ALT_INV_Operacao[2]~input_o\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ALT_INV_entradaB[7]~input_o\,
	dataf => \somadorSubtrator|ALT_INV_Add1~29_sumout\,
	combout => \saidaSignal~7_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


