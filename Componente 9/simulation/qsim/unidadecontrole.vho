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

-- DATE "12/05/2017 23:26:27"

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

ENTITY 	unidadecontrole IS
    PORT (
	clock : IN std_logic;
	opcode : IN std_logic_vector(3 DOWNTO 0);
	pc_flag : INOUT std_logic;
	ler_men : OUT std_logic;
	esc_men : OUT std_logic;
	memParaReg : OUT std_logic;
	ULAop : OUT std_logic_vector(2 DOWNTO 0);
	esc_reg : OUT std_logic;
	ula_fonte : OUT std_logic
	);
END unidadecontrole;

ARCHITECTURE structure OF unidadecontrole IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ler_men : std_logic;
SIGNAL ww_esc_men : std_logic;
SIGNAL ww_memParaReg : std_logic;
SIGNAL ww_ULAop : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_esc_reg : std_logic;
SIGNAL ww_ula_fonte : std_logic;
SIGNAL \pc_flag~input_o\ : std_logic;
SIGNAL \pc_flag~output_o\ : std_logic;
SIGNAL \ler_men~output_o\ : std_logic;
SIGNAL \esc_men~output_o\ : std_logic;
SIGNAL \memParaReg~output_o\ : std_logic;
SIGNAL \ULAop[0]~output_o\ : std_logic;
SIGNAL \ULAop[1]~output_o\ : std_logic;
SIGNAL \ULAop[2]~output_o\ : std_logic;
SIGNAL \esc_reg~output_o\ : std_logic;
SIGNAL \ula_fonte~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \ULAop~0_combout\ : std_logic;
SIGNAL \esc_men~0_combout\ : std_logic;
SIGNAL \ULAop[0]~reg0_q\ : std_logic;
SIGNAL \ULAop~1_combout\ : std_logic;
SIGNAL \ULAop[1]~reg0_q\ : std_logic;
SIGNAL \ULAop~2_combout\ : std_logic;
SIGNAL \ULAop[2]~reg0_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \ula_fonte~reg0_q\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_opcode <= opcode;
ler_men <= ww_ler_men;
esc_men <= ww_esc_men;
memParaReg <= ww_memParaReg;
ULAop <= ww_ULAop;
esc_reg <= ww_esc_reg;
ula_fonte <= ww_ula_fonte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;

\pc_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \pc_flag~output_o\);

\ler_men~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ler_men~output_o\);

\esc_men~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \esc_men~output_o\);

\memParaReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \memParaReg~output_o\);

\ULAop[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAop[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ULAop[0]~output_o\);

\ULAop[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAop[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ULAop[1]~output_o\);

\ULAop[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAop[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ULAop[2]~output_o\);

\esc_reg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \esc_reg~output_o\);

\ula_fonte~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_fonte~reg0_q\,
	devoe => ww_devoe,
	o => \ula_fonte~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

\ULAop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAop~0_combout\ = (!\opcode[3]~input_o\ & ((!\opcode[0]~input_o\ & (\opcode[1]~input_o\ & \opcode[2]~input_o\)) # (\opcode[0]~input_o\ & ((!\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000000000001101000000000000110100000000000011010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \ULAop~0_combout\);

\esc_men~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \esc_men~0_combout\ = (!\opcode[2]~input_o\ & ((!\opcode[1]~input_o\) # ((!\opcode[0]~input_o\) # (!\opcode[3]~input_o\)))) # (\opcode[2]~input_o\ & (!\opcode[3]~input_o\ & ((!\opcode[1]~input_o\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111111101110000011111110111000001111111011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \esc_men~0_combout\);

\ULAop[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ULAop~0_combout\,
	ena => \esc_men~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAop[0]~reg0_q\);

\ULAop~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAop~1_combout\ = ((!\opcode[2]~input_o\ & (!\opcode[1]~input_o\)) # (\opcode[2]~input_o\ & ((\opcode[0]~input_o\)))) # (\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001111111111101000111111111110100011111111111010001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \ULAop~1_combout\);

\ULAop[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ULAop~1_combout\,
	ena => \esc_men~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAop[1]~reg0_q\);

\ULAop~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAop~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[3]~input_o\ & ((!\opcode[1]~input_o\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \ULAop~2_combout\);

\ULAop[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ULAop~2_combout\,
	ena => \esc_men~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULAop[2]~reg0_q\);

\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & (\opcode[2]~input_o\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \Equal4~0_combout\);

\ula_fonte~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Equal4~0_combout\,
	ena => \esc_men~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ula_fonte~reg0_q\);

\pc_flag~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pc_flag,
	o => \pc_flag~input_o\);

ww_ler_men <= \ler_men~output_o\;

ww_esc_men <= \esc_men~output_o\;

ww_memParaReg <= \memParaReg~output_o\;

ww_ULAop(0) <= \ULAop[0]~output_o\;

ww_ULAop(1) <= \ULAop[1]~output_o\;

ww_ULAop(2) <= \ULAop[2]~output_o\;

ww_esc_reg <= \esc_reg~output_o\;

ww_ula_fonte <= \ula_fonte~output_o\;

pc_flag <= \pc_flag~output_o\;
END structure;


