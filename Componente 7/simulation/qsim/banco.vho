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

-- DATE "12/05/2017 23:10:01"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	banco IS
    PORT (
	EscritaReg : IN std_logic;
	Clock : IN std_logic;
	RegA : IN std_logic_vector(1 DOWNTO 0);
	RegB : IN std_logic_vector(1 DOWNTO 0);
	Dado : IN std_logic_vector(7 DOWNTO 0);
	SaidaA : OUT std_logic_vector(7 DOWNTO 0);
	SaidaB : OUT std_logic_vector(7 DOWNTO 0)
	);
END banco;

ARCHITECTURE structure OF banco IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EscritaReg : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_RegA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SaidaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SaidaB : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegA[1]~input_o\ : std_logic;
SIGNAL \RegB[1]~input_o\ : std_logic;
SIGNAL \SaidaA[0]~output_o\ : std_logic;
SIGNAL \SaidaA[1]~output_o\ : std_logic;
SIGNAL \SaidaA[2]~output_o\ : std_logic;
SIGNAL \SaidaA[3]~output_o\ : std_logic;
SIGNAL \SaidaA[4]~output_o\ : std_logic;
SIGNAL \SaidaA[5]~output_o\ : std_logic;
SIGNAL \SaidaA[6]~output_o\ : std_logic;
SIGNAL \SaidaA[7]~output_o\ : std_logic;
SIGNAL \SaidaB[0]~output_o\ : std_logic;
SIGNAL \SaidaB[1]~output_o\ : std_logic;
SIGNAL \SaidaB[2]~output_o\ : std_logic;
SIGNAL \SaidaB[3]~output_o\ : std_logic;
SIGNAL \SaidaB[4]~output_o\ : std_logic;
SIGNAL \SaidaB[5]~output_o\ : std_logic;
SIGNAL \SaidaB[6]~output_o\ : std_logic;
SIGNAL \SaidaB[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \RegA[0]~input_o\ : std_logic;
SIGNAL \Dado[0]~input_o\ : std_logic;
SIGNAL \EscritaReg~input_o\ : std_logic;
SIGNAL \reg~42_combout\ : std_logic;
SIGNAL \reg~18_q\ : std_logic;
SIGNAL \reg~43_combout\ : std_logic;
SIGNAL \reg~10_q\ : std_logic;
SIGNAL \reg~26_combout\ : std_logic;
SIGNAL \SaidaA[0]~reg0_q\ : std_logic;
SIGNAL \Dado[1]~input_o\ : std_logic;
SIGNAL \reg~19_q\ : std_logic;
SIGNAL \reg~11_q\ : std_logic;
SIGNAL \reg~27_combout\ : std_logic;
SIGNAL \SaidaA[1]~reg0_q\ : std_logic;
SIGNAL \Dado[2]~input_o\ : std_logic;
SIGNAL \reg~20_q\ : std_logic;
SIGNAL \reg~12_q\ : std_logic;
SIGNAL \reg~28_combout\ : std_logic;
SIGNAL \SaidaA[2]~reg0_q\ : std_logic;
SIGNAL \Dado[3]~input_o\ : std_logic;
SIGNAL \reg~21_q\ : std_logic;
SIGNAL \reg~13_q\ : std_logic;
SIGNAL \reg~29_combout\ : std_logic;
SIGNAL \SaidaA[3]~reg0_q\ : std_logic;
SIGNAL \Dado[4]~input_o\ : std_logic;
SIGNAL \reg~22_q\ : std_logic;
SIGNAL \reg~14_q\ : std_logic;
SIGNAL \reg~30_combout\ : std_logic;
SIGNAL \SaidaA[4]~reg0_q\ : std_logic;
SIGNAL \Dado[5]~input_o\ : std_logic;
SIGNAL \reg~23_q\ : std_logic;
SIGNAL \reg~15_q\ : std_logic;
SIGNAL \reg~31_combout\ : std_logic;
SIGNAL \SaidaA[5]~reg0_q\ : std_logic;
SIGNAL \Dado[6]~input_o\ : std_logic;
SIGNAL \reg~24_q\ : std_logic;
SIGNAL \reg~16_q\ : std_logic;
SIGNAL \reg~32_combout\ : std_logic;
SIGNAL \SaidaA[6]~reg0_q\ : std_logic;
SIGNAL \Dado[7]~input_o\ : std_logic;
SIGNAL \reg~25_q\ : std_logic;
SIGNAL \reg~17_q\ : std_logic;
SIGNAL \reg~33_combout\ : std_logic;
SIGNAL \SaidaA[7]~reg0_q\ : std_logic;
SIGNAL \RegB[0]~input_o\ : std_logic;
SIGNAL \reg~34_combout\ : std_logic;
SIGNAL \SaidaB[0]~reg0_q\ : std_logic;
SIGNAL \reg~35_combout\ : std_logic;
SIGNAL \SaidaB[1]~reg0_q\ : std_logic;
SIGNAL \reg~36_combout\ : std_logic;
SIGNAL \SaidaB[2]~reg0_q\ : std_logic;
SIGNAL \reg~37_combout\ : std_logic;
SIGNAL \SaidaB[3]~reg0_q\ : std_logic;
SIGNAL \reg~38_combout\ : std_logic;
SIGNAL \SaidaB[4]~reg0_q\ : std_logic;
SIGNAL \reg~39_combout\ : std_logic;
SIGNAL \SaidaB[5]~reg0_q\ : std_logic;
SIGNAL \reg~40_combout\ : std_logic;
SIGNAL \SaidaB[6]~reg0_q\ : std_logic;
SIGNAL \reg~41_combout\ : std_logic;
SIGNAL \SaidaB[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RegB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EscritaReg~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg~17_q\ : std_logic;
SIGNAL \ALT_INV_reg~25_q\ : std_logic;
SIGNAL \ALT_INV_reg~16_q\ : std_logic;
SIGNAL \ALT_INV_reg~24_q\ : std_logic;
SIGNAL \ALT_INV_reg~15_q\ : std_logic;
SIGNAL \ALT_INV_reg~23_q\ : std_logic;
SIGNAL \ALT_INV_reg~14_q\ : std_logic;
SIGNAL \ALT_INV_reg~22_q\ : std_logic;
SIGNAL \ALT_INV_reg~13_q\ : std_logic;
SIGNAL \ALT_INV_reg~21_q\ : std_logic;
SIGNAL \ALT_INV_reg~12_q\ : std_logic;
SIGNAL \ALT_INV_reg~20_q\ : std_logic;
SIGNAL \ALT_INV_reg~11_q\ : std_logic;
SIGNAL \ALT_INV_reg~19_q\ : std_logic;
SIGNAL \ALT_INV_reg~10_q\ : std_logic;
SIGNAL \ALT_INV_reg~18_q\ : std_logic;

BEGIN

ww_EscritaReg <= EscritaReg;
ww_Clock <= Clock;
ww_RegA <= RegA;
ww_RegB <= RegB;
ww_Dado <= Dado;
SaidaA <= ww_SaidaA;
SaidaB <= ww_SaidaB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegB[0]~input_o\ <= NOT \RegB[0]~input_o\;
\ALT_INV_EscritaReg~input_o\ <= NOT \EscritaReg~input_o\;
\ALT_INV_RegA[0]~input_o\ <= NOT \RegA[0]~input_o\;
\ALT_INV_reg~17_q\ <= NOT \reg~17_q\;
\ALT_INV_reg~25_q\ <= NOT \reg~25_q\;
\ALT_INV_reg~16_q\ <= NOT \reg~16_q\;
\ALT_INV_reg~24_q\ <= NOT \reg~24_q\;
\ALT_INV_reg~15_q\ <= NOT \reg~15_q\;
\ALT_INV_reg~23_q\ <= NOT \reg~23_q\;
\ALT_INV_reg~14_q\ <= NOT \reg~14_q\;
\ALT_INV_reg~22_q\ <= NOT \reg~22_q\;
\ALT_INV_reg~13_q\ <= NOT \reg~13_q\;
\ALT_INV_reg~21_q\ <= NOT \reg~21_q\;
\ALT_INV_reg~12_q\ <= NOT \reg~12_q\;
\ALT_INV_reg~20_q\ <= NOT \reg~20_q\;
\ALT_INV_reg~11_q\ <= NOT \reg~11_q\;
\ALT_INV_reg~19_q\ <= NOT \reg~19_q\;
\ALT_INV_reg~10_q\ <= NOT \reg~10_q\;
\ALT_INV_reg~18_q\ <= NOT \reg~18_q\;

\SaidaA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[0]~output_o\);

\SaidaA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[1]~output_o\);

\SaidaA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[2]~output_o\);

\SaidaA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[3]~output_o\);

\SaidaA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[4]~output_o\);

\SaidaA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[5]~output_o\);

\SaidaA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[6]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[6]~output_o\);

\SaidaA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaA[7]~output_o\);

\SaidaB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[0]~output_o\);

\SaidaB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[1]~output_o\);

\SaidaB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[2]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[2]~output_o\);

\SaidaB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[3]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[3]~output_o\);

\SaidaB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[4]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[4]~output_o\);

\SaidaB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[5]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[5]~output_o\);

\SaidaB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[6]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[6]~output_o\);

\SaidaB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SaidaB[7]~reg0_q\,
	devoe => ww_devoe,
	o => \SaidaB[7]~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\RegA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(0),
	o => \RegA[0]~input_o\);

\Dado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(0),
	o => \Dado[0]~input_o\);

\EscritaReg~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EscritaReg,
	o => \EscritaReg~input_o\);

\reg~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~42_combout\ = (\RegA[0]~input_o\ & \EscritaReg~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_EscritaReg~input_o\,
	combout => \reg~42_combout\);

\reg~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[0]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~18_q\);

\reg~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~43_combout\ = (!\RegA[0]~input_o\ & \EscritaReg~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_EscritaReg~input_o\,
	combout => \reg~43_combout\);

\reg~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[0]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~10_q\);

\reg~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~26_combout\ = (!\RegA[0]~input_o\ & ((\reg~10_q\))) # (\RegA[0]~input_o\ & (\reg~18_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~18_q\,
	datac => \ALT_INV_reg~10_q\,
	combout => \reg~26_combout\);

\SaidaA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~26_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[0]~reg0_q\);

\Dado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(1),
	o => \Dado[1]~input_o\);

\reg~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[1]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~19_q\);

\reg~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[1]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~11_q\);

\reg~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~27_combout\ = (!\RegA[0]~input_o\ & ((\reg~11_q\))) # (\RegA[0]~input_o\ & (\reg~19_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~19_q\,
	datac => \ALT_INV_reg~11_q\,
	combout => \reg~27_combout\);

\SaidaA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~27_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[1]~reg0_q\);

\Dado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(2),
	o => \Dado[2]~input_o\);

\reg~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[2]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~20_q\);

\reg~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[2]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~12_q\);

\reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~28_combout\ = (!\RegA[0]~input_o\ & ((\reg~12_q\))) # (\RegA[0]~input_o\ & (\reg~20_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~20_q\,
	datac => \ALT_INV_reg~12_q\,
	combout => \reg~28_combout\);

\SaidaA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~28_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[2]~reg0_q\);

\Dado[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(3),
	o => \Dado[3]~input_o\);

\reg~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[3]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~21_q\);

\reg~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[3]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~13_q\);

\reg~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~29_combout\ = (!\RegA[0]~input_o\ & ((\reg~13_q\))) # (\RegA[0]~input_o\ & (\reg~21_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~21_q\,
	datac => \ALT_INV_reg~13_q\,
	combout => \reg~29_combout\);

\SaidaA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~29_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[3]~reg0_q\);

\Dado[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(4),
	o => \Dado[4]~input_o\);

\reg~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[4]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~22_q\);

\reg~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[4]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~14_q\);

\reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~30_combout\ = (!\RegA[0]~input_o\ & ((\reg~14_q\))) # (\RegA[0]~input_o\ & (\reg~22_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~22_q\,
	datac => \ALT_INV_reg~14_q\,
	combout => \reg~30_combout\);

\SaidaA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~30_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[4]~reg0_q\);

\Dado[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(5),
	o => \Dado[5]~input_o\);

\reg~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[5]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~23_q\);

\reg~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[5]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~15_q\);

\reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~31_combout\ = (!\RegA[0]~input_o\ & ((\reg~15_q\))) # (\RegA[0]~input_o\ & (\reg~23_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~23_q\,
	datac => \ALT_INV_reg~15_q\,
	combout => \reg~31_combout\);

\SaidaA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~31_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[5]~reg0_q\);

\Dado[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(6),
	o => \Dado[6]~input_o\);

\reg~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[6]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~24_q\);

\reg~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[6]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~16_q\);

\reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~32_combout\ = (!\RegA[0]~input_o\ & ((\reg~16_q\))) # (\RegA[0]~input_o\ & (\reg~24_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~24_q\,
	datac => \ALT_INV_reg~16_q\,
	combout => \reg~32_combout\);

\SaidaA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~32_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[6]~reg0_q\);

\Dado[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dado(7),
	o => \Dado[7]~input_o\);

\reg~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[7]~input_o\,
	ena => \reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~25_q\);

\reg~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Dado[7]~input_o\,
	ena => \reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg~17_q\);

\reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~33_combout\ = (!\RegA[0]~input_o\ & ((\reg~17_q\))) # (\RegA[0]~input_o\ & (\reg~25_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \ALT_INV_reg~25_q\,
	datac => \ALT_INV_reg~17_q\,
	combout => \reg~33_combout\);

\SaidaA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~33_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaA[7]~reg0_q\);

\RegB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(0),
	o => \RegB[0]~input_o\);

\reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~34_combout\ = (!\RegB[0]~input_o\ & ((\reg~10_q\))) # (\RegB[0]~input_o\ & (\reg~18_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~18_q\,
	datab => \ALT_INV_reg~10_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~34_combout\);

\SaidaB[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~34_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[0]~reg0_q\);

\reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~35_combout\ = (!\RegB[0]~input_o\ & ((\reg~11_q\))) # (\RegB[0]~input_o\ & (\reg~19_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~19_q\,
	datab => \ALT_INV_reg~11_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~35_combout\);

\SaidaB[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~35_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[1]~reg0_q\);

\reg~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~36_combout\ = (!\RegB[0]~input_o\ & ((\reg~12_q\))) # (\RegB[0]~input_o\ & (\reg~20_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~20_q\,
	datab => \ALT_INV_reg~12_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~36_combout\);

\SaidaB[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~36_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[2]~reg0_q\);

\reg~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~37_combout\ = (!\RegB[0]~input_o\ & ((\reg~13_q\))) # (\RegB[0]~input_o\ & (\reg~21_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~21_q\,
	datab => \ALT_INV_reg~13_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~37_combout\);

\SaidaB[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~37_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[3]~reg0_q\);

\reg~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~38_combout\ = (!\RegB[0]~input_o\ & ((\reg~14_q\))) # (\RegB[0]~input_o\ & (\reg~22_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~22_q\,
	datab => \ALT_INV_reg~14_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~38_combout\);

\SaidaB[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~38_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[4]~reg0_q\);

\reg~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~39_combout\ = (!\RegB[0]~input_o\ & ((\reg~15_q\))) # (\RegB[0]~input_o\ & (\reg~23_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~23_q\,
	datab => \ALT_INV_reg~15_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~39_combout\);

\SaidaB[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~39_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[5]~reg0_q\);

\reg~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~40_combout\ = (!\RegB[0]~input_o\ & ((\reg~16_q\))) # (\RegB[0]~input_o\ & (\reg~24_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~24_q\,
	datab => \ALT_INV_reg~16_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~40_combout\);

\SaidaB[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~40_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[6]~reg0_q\);

\reg~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg~41_combout\ = (!\RegB[0]~input_o\ & ((\reg~17_q\))) # (\RegB[0]~input_o\ & (\reg~25_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg~25_q\,
	datab => \ALT_INV_reg~17_q\,
	datac => \ALT_INV_RegB[0]~input_o\,
	combout => \reg~41_combout\);

\SaidaB[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \reg~41_combout\,
	ena => \ALT_INV_EscritaReg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SaidaB[7]~reg0_q\);

\RegA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(1),
	o => \RegA[1]~input_o\);

\RegB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(1),
	o => \RegB[1]~input_o\);

ww_SaidaA(0) <= \SaidaA[0]~output_o\;

ww_SaidaA(1) <= \SaidaA[1]~output_o\;

ww_SaidaA(2) <= \SaidaA[2]~output_o\;

ww_SaidaA(3) <= \SaidaA[3]~output_o\;

ww_SaidaA(4) <= \SaidaA[4]~output_o\;

ww_SaidaA(5) <= \SaidaA[5]~output_o\;

ww_SaidaA(6) <= \SaidaA[6]~output_o\;

ww_SaidaA(7) <= \SaidaA[7]~output_o\;

ww_SaidaB(0) <= \SaidaB[0]~output_o\;

ww_SaidaB(1) <= \SaidaB[1]~output_o\;

ww_SaidaB(2) <= \SaidaB[2]~output_o\;

ww_SaidaB(3) <= \SaidaB[3]~output_o\;

ww_SaidaB(4) <= \SaidaB[4]~output_o\;

ww_SaidaB(5) <= \SaidaB[5]~output_o\;

ww_SaidaB(6) <= \SaidaB[6]~output_o\;

ww_SaidaB(7) <= \SaidaB[7]~output_o\;
END structure;


