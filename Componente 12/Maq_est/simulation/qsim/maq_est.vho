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

-- DATE "12/05/2017 23:48:02"

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

ENTITY 	maq_est IS
    PORT (
	ck : IN std_logic;
	P : IN std_logic;
	iniciar : IN std_logic;
	R : OUT std_logic
	);
END maq_est;

ARCHITECTURE structure OF maq_est IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.caso_a~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.caso_b~q\ : std_logic;
SIGNAL \estado.caso_c~0_combout\ : std_logic;
SIGNAL \estado.caso_c~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado.caso_d~q\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \ALT_INV_P~input_o\ : std_logic;
SIGNAL \ALT_INV_estado.caso_a~q\ : std_logic;
SIGNAL \ALT_INV_estado.caso_b~q\ : std_logic;
SIGNAL \ALT_INV_estado.caso_c~q\ : std_logic;
SIGNAL \ALT_INV_estado.caso_d~q\ : std_logic;

BEGIN

ww_ck <= ck;
ww_P <= P;
ww_iniciar <= iniciar;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\ALT_INV_P~input_o\ <= NOT \P~input_o\;
\ALT_INV_estado.caso_a~q\ <= NOT \estado.caso_a~q\;
\ALT_INV_estado.caso_b~q\ <= NOT \estado.caso_b~q\;
\ALT_INV_estado.caso_c~q\ <= NOT \estado.caso_c~q\;
\ALT_INV_estado.caso_d~q\ <= NOT \estado.caso_d~q\;

\R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.caso_d~q\,
	devoe => ww_devoe,
	o => \R~output_o\);

\ck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

\P~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\P~input_o\) # (\estado.caso_d~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.caso_d~q\,
	datab => \ALT_INV_P~input_o\,
	combout => \Selector0~0_combout\);

\estado.caso_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \P~input_o\,
	clrn => \ALT_INV_iniciar~input_o\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.caso_a~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\P~input_o\ & ((!\estado.caso_a~q\) # (\estado.caso_d~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.caso_d~q\,
	datab => \ALT_INV_P~input_o\,
	datac => \ALT_INV_estado.caso_a~q\,
	combout => \Selector1~0_combout\);

\estado.caso_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_iniciar~input_o\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.caso_b~q\);

\estado.caso_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.caso_c~0_combout\ = (!\P~input_o\ & (\estado.caso_c~q\)) # (\P~input_o\ & ((\estado.caso_b~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_estado.caso_c~q\,
	datac => \ALT_INV_estado.caso_b~q\,
	combout => \estado.caso_c~0_combout\);

\estado.caso_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \estado.caso_c~0_combout\,
	clrn => \ALT_INV_iniciar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.caso_c~q\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\P~input_o\ & \estado.caso_c~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_estado.caso_c~q\,
	combout => \Selector3~0_combout\);

\estado.caso_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_iniciar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.caso_d~q\);

ww_R <= \R~output_o\;
END structure;


