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

-- DATE "12/05/2017 22:39:11"

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

ENTITY 	somador IS
    PORT (
	cin : IN std_logic;
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic;
	s : OUT std_logic_vector(7 DOWNTO 0)
	);
END somador;

ARCHITECTURE structure OF somador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \soma~0_combout\ : std_logic;
SIGNAL \soma~1_combout\ : std_logic;
SIGNAL \soma~2_combout\ : std_logic;
SIGNAL \soma~3_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \soma~4_combout\ : std_logic;
SIGNAL \soma~5_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \soma~6_combout\ : std_logic;
SIGNAL \soma~7_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;

BEGIN

ww_cin <= cin;
ww_a <= a;
ww_b <= b;
cout <= ww_cout;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;

\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~3_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~3_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~4_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~5_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~6_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~7_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \cin~input_o\ & ( (!\a[1]~input_o\ & (\b[1]~input_o\ & ((\b[0]~input_o\) # (\a[0]~input_o\)))) # (\a[1]~input_o\ & (((\b[0]~input_o\) # (\a[0]~input_o\)) # (\b[1]~input_o\))) ) ) # ( !\cin~input_o\ & ( (!\a[1]~input_o\ & (\b[1]~input_o\ 
-- & (\a[0]~input_o\ & \b[0]~input_o\))) # (\a[1]~input_o\ & (((\a[0]~input_o\ & \b[0]~input_o\)) # (\b[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	combout => \c~0_combout\);

\c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \c~0_combout\ & ( (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\b[2]~input_o\) # (\a[2]~input_o\)))) # (\a[3]~input_o\ & (((\b[2]~input_o\) # (\a[2]~input_o\)) # (\b[3]~input_o\))) ) ) # ( !\c~0_combout\ & ( (!\a[3]~input_o\ & (\b[3]~input_o\ 
-- & (\a[2]~input_o\ & \b[2]~input_o\))) # (\a[3]~input_o\ & (((\a[2]~input_o\ & \b[2]~input_o\)) # (\b[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_c~0_combout\,
	combout => \c~1_combout\);

\c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \c~1_combout\ & ( (!\a[5]~input_o\ & (\b[5]~input_o\ & ((\b[4]~input_o\) # (\a[4]~input_o\)))) # (\a[5]~input_o\ & (((\b[4]~input_o\) # (\a[4]~input_o\)) # (\b[5]~input_o\))) ) ) # ( !\c~1_combout\ & ( (!\a[5]~input_o\ & (\b[5]~input_o\ 
-- & (\a[4]~input_o\ & \b[4]~input_o\))) # (\a[5]~input_o\ & (((\a[4]~input_o\ & \b[4]~input_o\)) # (\b[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_c~1_combout\,
	combout => \c~2_combout\);

\c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \c~2_combout\ & ( (!\a[7]~input_o\ & (\b[7]~input_o\ & ((\b[6]~input_o\) # (\a[6]~input_o\)))) # (\a[7]~input_o\ & (((\b[6]~input_o\) # (\a[6]~input_o\)) # (\b[7]~input_o\))) ) ) # ( !\c~2_combout\ & ( (!\a[7]~input_o\ & (\b[7]~input_o\ 
-- & (\a[6]~input_o\ & \b[6]~input_o\))) # (\a[7]~input_o\ & (((\a[6]~input_o\ & \b[6]~input_o\)) # (\b[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[7]~input_o\,
	datab => \ALT_INV_b[7]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	datae => \ALT_INV_c~2_combout\,
	combout => \c~3_combout\);

\soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = !\a[0]~input_o\ $ (!\b[0]~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	combout => \soma~0_combout\);

\soma~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~1_combout\ = ( \cin~input_o\ & ( !\a[1]~input_o\ $ (!\b[1]~input_o\ $ (((\b[0]~input_o\) # (\a[0]~input_o\)))) ) ) # ( !\cin~input_o\ & ( !\a[1]~input_o\ $ (!\b[1]~input_o\ $ (((\a[0]~input_o\ & \b[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_cin~input_o\,
	combout => \soma~1_combout\);

\soma~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~2_combout\ = !\a[2]~input_o\ $ (!\b[2]~input_o\ $ (\c~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_c~0_combout\,
	combout => \soma~2_combout\);

\soma~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~3_combout\ = ( \c~0_combout\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\b[2]~input_o\) # (\a[2]~input_o\)))) ) ) # ( !\c~0_combout\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\ $ (((\a[2]~input_o\ & \b[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_c~0_combout\,
	combout => \soma~3_combout\);

\c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~4_combout\ = !\a[4]~input_o\ $ (!\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_b[4]~input_o\,
	combout => \c~4_combout\);

\soma~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~4_combout\ = ( \c~0_combout\ & ( \c~4_combout\ & ( (!\a[3]~input_o\ & ((!\b[3]~input_o\) # ((!\a[2]~input_o\ & !\b[2]~input_o\)))) # (\a[3]~input_o\ & (!\b[3]~input_o\ & (!\a[2]~input_o\ & !\b[2]~input_o\))) ) ) ) # ( !\c~0_combout\ & ( 
-- \c~4_combout\ & ( (!\a[3]~input_o\ & ((!\b[3]~input_o\) # ((!\a[2]~input_o\) # (!\b[2]~input_o\)))) # (\a[3]~input_o\ & (!\b[3]~input_o\ & ((!\a[2]~input_o\) # (!\b[2]~input_o\)))) ) ) ) # ( \c~0_combout\ & ( !\c~4_combout\ & ( (!\a[3]~input_o\ & 
-- (\b[3]~input_o\ & ((\b[2]~input_o\) # (\a[2]~input_o\)))) # (\a[3]~input_o\ & (((\b[2]~input_o\) # (\a[2]~input_o\)) # (\b[3]~input_o\))) ) ) ) # ( !\c~0_combout\ & ( !\c~4_combout\ & ( (!\a[3]~input_o\ & (\b[3]~input_o\ & (\a[2]~input_o\ & 
-- \b[2]~input_o\))) # (\a[3]~input_o\ & (((\a[2]~input_o\ & \b[2]~input_o\)) # (\b[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011111101110111010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_c~0_combout\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \soma~4_combout\);

\soma~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~5_combout\ = ( \c~1_combout\ & ( !\a[5]~input_o\ $ (!\b[5]~input_o\ $ (((\b[4]~input_o\) # (\a[4]~input_o\)))) ) ) # ( !\c~1_combout\ & ( !\a[5]~input_o\ $ (!\b[5]~input_o\ $ (((\a[4]~input_o\ & \b[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_c~1_combout\,
	combout => \soma~5_combout\);

\c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~5_combout\ = !\a[6]~input_o\ $ (!\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[6]~input_o\,
	datab => \ALT_INV_b[6]~input_o\,
	combout => \c~5_combout\);

\soma~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~6_combout\ = ( \c~1_combout\ & ( \c~5_combout\ & ( (!\a[5]~input_o\ & ((!\b[5]~input_o\) # ((!\a[4]~input_o\ & !\b[4]~input_o\)))) # (\a[5]~input_o\ & (!\b[5]~input_o\ & (!\a[4]~input_o\ & !\b[4]~input_o\))) ) ) ) # ( !\c~1_combout\ & ( 
-- \c~5_combout\ & ( (!\a[5]~input_o\ & ((!\b[5]~input_o\) # ((!\a[4]~input_o\) # (!\b[4]~input_o\)))) # (\a[5]~input_o\ & (!\b[5]~input_o\ & ((!\a[4]~input_o\) # (!\b[4]~input_o\)))) ) ) ) # ( \c~1_combout\ & ( !\c~5_combout\ & ( (!\a[5]~input_o\ & 
-- (\b[5]~input_o\ & ((\b[4]~input_o\) # (\a[4]~input_o\)))) # (\a[5]~input_o\ & (((\b[4]~input_o\) # (\a[4]~input_o\)) # (\b[5]~input_o\))) ) ) ) # ( !\c~1_combout\ & ( !\c~5_combout\ & ( (!\a[5]~input_o\ & (\b[5]~input_o\ & (\a[4]~input_o\ & 
-- \b[4]~input_o\))) # (\a[5]~input_o\ & (((\a[4]~input_o\ & \b[4]~input_o\)) # (\b[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011111101110111010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_c~1_combout\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \soma~6_combout\);

\soma~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~7_combout\ = ( \c~2_combout\ & ( !\a[7]~input_o\ $ (!\b[7]~input_o\ $ (((\b[6]~input_o\) # (\a[6]~input_o\)))) ) ) # ( !\c~2_combout\ & ( !\a[7]~input_o\ $ (!\b[7]~input_o\ $ (((\a[6]~input_o\ & \b[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[7]~input_o\,
	datab => \ALT_INV_b[7]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	datae => \ALT_INV_c~2_combout\,
	combout => \soma~7_combout\);

ww_cout <= \cout~output_o\;

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;
END structure;


