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

-- DATE "12/05/2017 22:54:55"

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

ENTITY 	ram8 IS
    PORT (
	ce : IN std_logic;
	we : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0);
	data_entrada : IN std_logic_vector(7 DOWNTO 0);
	data_saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END ram8;

ARCHITECTURE structure OF ram8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ce : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_saida[0]~output_o\ : std_logic;
SIGNAL \data_saida[1]~output_o\ : std_logic;
SIGNAL \data_saida[2]~output_o\ : std_logic;
SIGNAL \data_saida[3]~output_o\ : std_logic;
SIGNAL \data_saida[4]~output_o\ : std_logic;
SIGNAL \data_saida[5]~output_o\ : std_logic;
SIGNAL \data_saida[6]~output_o\ : std_logic;
SIGNAL \data_saida[7]~output_o\ : std_logic;
SIGNAL \ce~input_o\ : std_logic;
SIGNAL \data_entrada[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \mem~181_combout\ : std_logic;
SIGNAL \mem~13_q\ : std_logic;
SIGNAL \mem~182_combout\ : std_logic;
SIGNAL \mem~21_q\ : std_logic;
SIGNAL \mem~183_combout\ : std_logic;
SIGNAL \mem~29_q\ : std_logic;
SIGNAL \mem~184_combout\ : std_logic;
SIGNAL \mem~37_q\ : std_logic;
SIGNAL \mem~141_combout\ : std_logic;
SIGNAL \mem~185_combout\ : std_logic;
SIGNAL \mem~45_q\ : std_logic;
SIGNAL \mem~186_combout\ : std_logic;
SIGNAL \mem~53_q\ : std_logic;
SIGNAL \mem~187_combout\ : std_logic;
SIGNAL \mem~61_q\ : std_logic;
SIGNAL \mem~188_combout\ : std_logic;
SIGNAL \mem~69_q\ : std_logic;
SIGNAL \mem~142_combout\ : std_logic;
SIGNAL \mem~189_combout\ : std_logic;
SIGNAL \mem~77_q\ : std_logic;
SIGNAL \mem~190_combout\ : std_logic;
SIGNAL \mem~85_q\ : std_logic;
SIGNAL \mem~191_combout\ : std_logic;
SIGNAL \mem~93_q\ : std_logic;
SIGNAL \mem~192_combout\ : std_logic;
SIGNAL \mem~101_q\ : std_logic;
SIGNAL \mem~143_combout\ : std_logic;
SIGNAL \mem~193_combout\ : std_logic;
SIGNAL \mem~109_q\ : std_logic;
SIGNAL \mem~194_combout\ : std_logic;
SIGNAL \mem~117_q\ : std_logic;
SIGNAL \mem~195_combout\ : std_logic;
SIGNAL \mem~125_q\ : std_logic;
SIGNAL \mem~196_combout\ : std_logic;
SIGNAL \mem~133_q\ : std_logic;
SIGNAL \mem~144_combout\ : std_logic;
SIGNAL \mem~145_combout\ : std_logic;
SIGNAL \data_entrada[1]~input_o\ : std_logic;
SIGNAL \mem~14_q\ : std_logic;
SIGNAL \mem~46_q\ : std_logic;
SIGNAL \mem~78_q\ : std_logic;
SIGNAL \mem~110_q\ : std_logic;
SIGNAL \mem~146_combout\ : std_logic;
SIGNAL \mem~22_q\ : std_logic;
SIGNAL \mem~54_q\ : std_logic;
SIGNAL \mem~86_q\ : std_logic;
SIGNAL \mem~118_q\ : std_logic;
SIGNAL \mem~147_combout\ : std_logic;
SIGNAL \mem~30_q\ : std_logic;
SIGNAL \mem~62_q\ : std_logic;
SIGNAL \mem~94_q\ : std_logic;
SIGNAL \mem~126_q\ : std_logic;
SIGNAL \mem~148_combout\ : std_logic;
SIGNAL \mem~38_q\ : std_logic;
SIGNAL \mem~70_q\ : std_logic;
SIGNAL \mem~102_q\ : std_logic;
SIGNAL \mem~134_q\ : std_logic;
SIGNAL \mem~149_combout\ : std_logic;
SIGNAL \mem~150_combout\ : std_logic;
SIGNAL \data_entrada[2]~input_o\ : std_logic;
SIGNAL \mem~15_q\ : std_logic;
SIGNAL \mem~23_q\ : std_logic;
SIGNAL \mem~31_q\ : std_logic;
SIGNAL \mem~39_q\ : std_logic;
SIGNAL \mem~151_combout\ : std_logic;
SIGNAL \mem~47_q\ : std_logic;
SIGNAL \mem~55_q\ : std_logic;
SIGNAL \mem~63_q\ : std_logic;
SIGNAL \mem~71_q\ : std_logic;
SIGNAL \mem~152_combout\ : std_logic;
SIGNAL \mem~79_q\ : std_logic;
SIGNAL \mem~87_q\ : std_logic;
SIGNAL \mem~95_q\ : std_logic;
SIGNAL \mem~103_q\ : std_logic;
SIGNAL \mem~153_combout\ : std_logic;
SIGNAL \mem~111_q\ : std_logic;
SIGNAL \mem~119_q\ : std_logic;
SIGNAL \mem~127_q\ : std_logic;
SIGNAL \mem~135_q\ : std_logic;
SIGNAL \mem~154_combout\ : std_logic;
SIGNAL \mem~155_combout\ : std_logic;
SIGNAL \data_entrada[3]~input_o\ : std_logic;
SIGNAL \mem~16_q\ : std_logic;
SIGNAL \mem~48_q\ : std_logic;
SIGNAL \mem~80_q\ : std_logic;
SIGNAL \mem~112_q\ : std_logic;
SIGNAL \mem~156_combout\ : std_logic;
SIGNAL \mem~24_q\ : std_logic;
SIGNAL \mem~56_q\ : std_logic;
SIGNAL \mem~88_q\ : std_logic;
SIGNAL \mem~120_q\ : std_logic;
SIGNAL \mem~157_combout\ : std_logic;
SIGNAL \mem~32_q\ : std_logic;
SIGNAL \mem~64_q\ : std_logic;
SIGNAL \mem~96_q\ : std_logic;
SIGNAL \mem~128_q\ : std_logic;
SIGNAL \mem~158_combout\ : std_logic;
SIGNAL \mem~40_q\ : std_logic;
SIGNAL \mem~72_q\ : std_logic;
SIGNAL \mem~104_q\ : std_logic;
SIGNAL \mem~136_q\ : std_logic;
SIGNAL \mem~159_combout\ : std_logic;
SIGNAL \mem~160_combout\ : std_logic;
SIGNAL \data_entrada[4]~input_o\ : std_logic;
SIGNAL \mem~17_q\ : std_logic;
SIGNAL \mem~25_q\ : std_logic;
SIGNAL \mem~33_q\ : std_logic;
SIGNAL \mem~41_q\ : std_logic;
SIGNAL \mem~161_combout\ : std_logic;
SIGNAL \mem~49_q\ : std_logic;
SIGNAL \mem~57_q\ : std_logic;
SIGNAL \mem~65_q\ : std_logic;
SIGNAL \mem~73_q\ : std_logic;
SIGNAL \mem~162_combout\ : std_logic;
SIGNAL \mem~81_q\ : std_logic;
SIGNAL \mem~89_q\ : std_logic;
SIGNAL \mem~97_q\ : std_logic;
SIGNAL \mem~105_q\ : std_logic;
SIGNAL \mem~163_combout\ : std_logic;
SIGNAL \mem~113_q\ : std_logic;
SIGNAL \mem~121_q\ : std_logic;
SIGNAL \mem~129_q\ : std_logic;
SIGNAL \mem~137_q\ : std_logic;
SIGNAL \mem~164_combout\ : std_logic;
SIGNAL \mem~165_combout\ : std_logic;
SIGNAL \data_entrada[5]~input_o\ : std_logic;
SIGNAL \mem~18_q\ : std_logic;
SIGNAL \mem~50_q\ : std_logic;
SIGNAL \mem~82_q\ : std_logic;
SIGNAL \mem~114_q\ : std_logic;
SIGNAL \mem~166_combout\ : std_logic;
SIGNAL \mem~26_q\ : std_logic;
SIGNAL \mem~58_q\ : std_logic;
SIGNAL \mem~90_q\ : std_logic;
SIGNAL \mem~122_q\ : std_logic;
SIGNAL \mem~167_combout\ : std_logic;
SIGNAL \mem~34_q\ : std_logic;
SIGNAL \mem~66_q\ : std_logic;
SIGNAL \mem~98_q\ : std_logic;
SIGNAL \mem~130_q\ : std_logic;
SIGNAL \mem~168_combout\ : std_logic;
SIGNAL \mem~42_q\ : std_logic;
SIGNAL \mem~74_q\ : std_logic;
SIGNAL \mem~106_q\ : std_logic;
SIGNAL \mem~138_q\ : std_logic;
SIGNAL \mem~169_combout\ : std_logic;
SIGNAL \mem~170_combout\ : std_logic;
SIGNAL \data_entrada[6]~input_o\ : std_logic;
SIGNAL \mem~19_q\ : std_logic;
SIGNAL \mem~27_q\ : std_logic;
SIGNAL \mem~35_q\ : std_logic;
SIGNAL \mem~43_q\ : std_logic;
SIGNAL \mem~171_combout\ : std_logic;
SIGNAL \mem~51_q\ : std_logic;
SIGNAL \mem~59_q\ : std_logic;
SIGNAL \mem~67_q\ : std_logic;
SIGNAL \mem~75_q\ : std_logic;
SIGNAL \mem~172_combout\ : std_logic;
SIGNAL \mem~83_q\ : std_logic;
SIGNAL \mem~91_q\ : std_logic;
SIGNAL \mem~99_q\ : std_logic;
SIGNAL \mem~107_q\ : std_logic;
SIGNAL \mem~173_combout\ : std_logic;
SIGNAL \mem~115_q\ : std_logic;
SIGNAL \mem~123_q\ : std_logic;
SIGNAL \mem~131_q\ : std_logic;
SIGNAL \mem~139_q\ : std_logic;
SIGNAL \mem~174_combout\ : std_logic;
SIGNAL \mem~175_combout\ : std_logic;
SIGNAL \data_entrada[7]~input_o\ : std_logic;
SIGNAL \mem~20_q\ : std_logic;
SIGNAL \mem~52_q\ : std_logic;
SIGNAL \mem~84_q\ : std_logic;
SIGNAL \mem~116_q\ : std_logic;
SIGNAL \mem~176_combout\ : std_logic;
SIGNAL \mem~28_q\ : std_logic;
SIGNAL \mem~60_q\ : std_logic;
SIGNAL \mem~92_q\ : std_logic;
SIGNAL \mem~124_q\ : std_logic;
SIGNAL \mem~177_combout\ : std_logic;
SIGNAL \mem~36_q\ : std_logic;
SIGNAL \mem~68_q\ : std_logic;
SIGNAL \mem~100_q\ : std_logic;
SIGNAL \mem~132_q\ : std_logic;
SIGNAL \mem~178_combout\ : std_logic;
SIGNAL \mem~44_q\ : std_logic;
SIGNAL \mem~76_q\ : std_logic;
SIGNAL \mem~108_q\ : std_logic;
SIGNAL \mem~140_q\ : std_logic;
SIGNAL \mem~179_combout\ : std_logic;
SIGNAL \mem~180_combout\ : std_logic;
SIGNAL \ALT_INV_mem~53_q\ : std_logic;
SIGNAL \ALT_INV_mem~45_q\ : std_logic;
SIGNAL \ALT_INV_mem~141_combout\ : std_logic;
SIGNAL \ALT_INV_mem~37_q\ : std_logic;
SIGNAL \ALT_INV_mem~29_q\ : std_logic;
SIGNAL \ALT_INV_mem~21_q\ : std_logic;
SIGNAL \ALT_INV_mem~13_q\ : std_logic;
SIGNAL \ALT_INV_mem~67_q\ : std_logic;
SIGNAL \ALT_INV_mem~59_q\ : std_logic;
SIGNAL \ALT_INV_mem~51_q\ : std_logic;
SIGNAL \ALT_INV_mem~171_combout\ : std_logic;
SIGNAL \ALT_INV_mem~43_q\ : std_logic;
SIGNAL \ALT_INV_mem~35_q\ : std_logic;
SIGNAL \ALT_INV_mem~27_q\ : std_logic;
SIGNAL \ALT_INV_mem~19_q\ : std_logic;
SIGNAL \ALT_INV_mem~169_combout\ : std_logic;
SIGNAL \ALT_INV_mem~138_q\ : std_logic;
SIGNAL \ALT_INV_mem~106_q\ : std_logic;
SIGNAL \ALT_INV_mem~74_q\ : std_logic;
SIGNAL \ALT_INV_mem~42_q\ : std_logic;
SIGNAL \ALT_INV_mem~168_combout\ : std_logic;
SIGNAL \ALT_INV_mem~130_q\ : std_logic;
SIGNAL \ALT_INV_mem~98_q\ : std_logic;
SIGNAL \ALT_INV_mem~66_q\ : std_logic;
SIGNAL \ALT_INV_mem~34_q\ : std_logic;
SIGNAL \ALT_INV_mem~167_combout\ : std_logic;
SIGNAL \ALT_INV_mem~122_q\ : std_logic;
SIGNAL \ALT_INV_mem~90_q\ : std_logic;
SIGNAL \ALT_INV_mem~58_q\ : std_logic;
SIGNAL \ALT_INV_mem~26_q\ : std_logic;
SIGNAL \ALT_INV_mem~166_combout\ : std_logic;
SIGNAL \ALT_INV_mem~114_q\ : std_logic;
SIGNAL \ALT_INV_mem~82_q\ : std_logic;
SIGNAL \ALT_INV_mem~50_q\ : std_logic;
SIGNAL \ALT_INV_mem~18_q\ : std_logic;
SIGNAL \ALT_INV_mem~164_combout\ : std_logic;
SIGNAL \ALT_INV_mem~137_q\ : std_logic;
SIGNAL \ALT_INV_mem~129_q\ : std_logic;
SIGNAL \ALT_INV_mem~121_q\ : std_logic;
SIGNAL \ALT_INV_mem~113_q\ : std_logic;
SIGNAL \ALT_INV_mem~163_combout\ : std_logic;
SIGNAL \ALT_INV_mem~105_q\ : std_logic;
SIGNAL \ALT_INV_mem~97_q\ : std_logic;
SIGNAL \ALT_INV_mem~89_q\ : std_logic;
SIGNAL \ALT_INV_mem~81_q\ : std_logic;
SIGNAL \ALT_INV_mem~162_combout\ : std_logic;
SIGNAL \ALT_INV_mem~73_q\ : std_logic;
SIGNAL \ALT_INV_mem~65_q\ : std_logic;
SIGNAL \ALT_INV_mem~57_q\ : std_logic;
SIGNAL \ALT_INV_mem~49_q\ : std_logic;
SIGNAL \ALT_INV_mem~161_combout\ : std_logic;
SIGNAL \ALT_INV_mem~41_q\ : std_logic;
SIGNAL \ALT_INV_mem~33_q\ : std_logic;
SIGNAL \ALT_INV_mem~25_q\ : std_logic;
SIGNAL \ALT_INV_mem~17_q\ : std_logic;
SIGNAL \ALT_INV_mem~159_combout\ : std_logic;
SIGNAL \ALT_INV_mem~136_q\ : std_logic;
SIGNAL \ALT_INV_mem~104_q\ : std_logic;
SIGNAL \ALT_INV_mem~72_q\ : std_logic;
SIGNAL \ALT_INV_mem~40_q\ : std_logic;
SIGNAL \ALT_INV_mem~158_combout\ : std_logic;
SIGNAL \ALT_INV_mem~128_q\ : std_logic;
SIGNAL \ALT_INV_mem~96_q\ : std_logic;
SIGNAL \ALT_INV_mem~64_q\ : std_logic;
SIGNAL \ALT_INV_mem~32_q\ : std_logic;
SIGNAL \ALT_INV_mem~157_combout\ : std_logic;
SIGNAL \ALT_INV_mem~120_q\ : std_logic;
SIGNAL \ALT_INV_mem~88_q\ : std_logic;
SIGNAL \ALT_INV_mem~56_q\ : std_logic;
SIGNAL \ALT_INV_mem~24_q\ : std_logic;
SIGNAL \ALT_INV_mem~156_combout\ : std_logic;
SIGNAL \ALT_INV_mem~112_q\ : std_logic;
SIGNAL \ALT_INV_mem~80_q\ : std_logic;
SIGNAL \ALT_INV_mem~48_q\ : std_logic;
SIGNAL \ALT_INV_mem~16_q\ : std_logic;
SIGNAL \ALT_INV_mem~154_combout\ : std_logic;
SIGNAL \ALT_INV_mem~135_q\ : std_logic;
SIGNAL \ALT_INV_mem~127_q\ : std_logic;
SIGNAL \ALT_INV_mem~119_q\ : std_logic;
SIGNAL \ALT_INV_mem~111_q\ : std_logic;
SIGNAL \ALT_INV_mem~153_combout\ : std_logic;
SIGNAL \ALT_INV_mem~103_q\ : std_logic;
SIGNAL \ALT_INV_mem~95_q\ : std_logic;
SIGNAL \ALT_INV_mem~87_q\ : std_logic;
SIGNAL \ALT_INV_mem~79_q\ : std_logic;
SIGNAL \ALT_INV_mem~152_combout\ : std_logic;
SIGNAL \ALT_INV_mem~71_q\ : std_logic;
SIGNAL \ALT_INV_mem~63_q\ : std_logic;
SIGNAL \ALT_INV_mem~55_q\ : std_logic;
SIGNAL \ALT_INV_mem~47_q\ : std_logic;
SIGNAL \ALT_INV_mem~151_combout\ : std_logic;
SIGNAL \ALT_INV_mem~39_q\ : std_logic;
SIGNAL \ALT_INV_mem~31_q\ : std_logic;
SIGNAL \ALT_INV_mem~23_q\ : std_logic;
SIGNAL \ALT_INV_mem~15_q\ : std_logic;
SIGNAL \ALT_INV_mem~149_combout\ : std_logic;
SIGNAL \ALT_INV_mem~134_q\ : std_logic;
SIGNAL \ALT_INV_mem~102_q\ : std_logic;
SIGNAL \ALT_INV_mem~70_q\ : std_logic;
SIGNAL \ALT_INV_mem~38_q\ : std_logic;
SIGNAL \ALT_INV_mem~148_combout\ : std_logic;
SIGNAL \ALT_INV_mem~126_q\ : std_logic;
SIGNAL \ALT_INV_mem~94_q\ : std_logic;
SIGNAL \ALT_INV_mem~62_q\ : std_logic;
SIGNAL \ALT_INV_mem~30_q\ : std_logic;
SIGNAL \ALT_INV_mem~147_combout\ : std_logic;
SIGNAL \ALT_INV_mem~118_q\ : std_logic;
SIGNAL \ALT_INV_mem~86_q\ : std_logic;
SIGNAL \ALT_INV_mem~54_q\ : std_logic;
SIGNAL \ALT_INV_mem~22_q\ : std_logic;
SIGNAL \ALT_INV_mem~146_combout\ : std_logic;
SIGNAL \ALT_INV_mem~110_q\ : std_logic;
SIGNAL \ALT_INV_mem~78_q\ : std_logic;
SIGNAL \ALT_INV_mem~46_q\ : std_logic;
SIGNAL \ALT_INV_mem~14_q\ : std_logic;
SIGNAL \ALT_INV_mem~144_combout\ : std_logic;
SIGNAL \ALT_INV_mem~133_q\ : std_logic;
SIGNAL \ALT_INV_mem~125_q\ : std_logic;
SIGNAL \ALT_INV_mem~117_q\ : std_logic;
SIGNAL \ALT_INV_mem~109_q\ : std_logic;
SIGNAL \ALT_INV_mem~143_combout\ : std_logic;
SIGNAL \ALT_INV_mem~101_q\ : std_logic;
SIGNAL \ALT_INV_mem~93_q\ : std_logic;
SIGNAL \ALT_INV_mem~85_q\ : std_logic;
SIGNAL \ALT_INV_mem~77_q\ : std_logic;
SIGNAL \ALT_INV_mem~142_combout\ : std_logic;
SIGNAL \ALT_INV_mem~69_q\ : std_logic;
SIGNAL \ALT_INV_mem~61_q\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mem~179_combout\ : std_logic;
SIGNAL \ALT_INV_mem~140_q\ : std_logic;
SIGNAL \ALT_INV_mem~108_q\ : std_logic;
SIGNAL \ALT_INV_mem~76_q\ : std_logic;
SIGNAL \ALT_INV_mem~44_q\ : std_logic;
SIGNAL \ALT_INV_mem~178_combout\ : std_logic;
SIGNAL \ALT_INV_mem~132_q\ : std_logic;
SIGNAL \ALT_INV_mem~100_q\ : std_logic;
SIGNAL \ALT_INV_mem~68_q\ : std_logic;
SIGNAL \ALT_INV_mem~36_q\ : std_logic;
SIGNAL \ALT_INV_mem~177_combout\ : std_logic;
SIGNAL \ALT_INV_mem~124_q\ : std_logic;
SIGNAL \ALT_INV_mem~92_q\ : std_logic;
SIGNAL \ALT_INV_mem~60_q\ : std_logic;
SIGNAL \ALT_INV_mem~28_q\ : std_logic;
SIGNAL \ALT_INV_mem~176_combout\ : std_logic;
SIGNAL \ALT_INV_mem~116_q\ : std_logic;
SIGNAL \ALT_INV_mem~84_q\ : std_logic;
SIGNAL \ALT_INV_mem~52_q\ : std_logic;
SIGNAL \ALT_INV_mem~20_q\ : std_logic;
SIGNAL \ALT_INV_mem~174_combout\ : std_logic;
SIGNAL \ALT_INV_mem~139_q\ : std_logic;
SIGNAL \ALT_INV_mem~131_q\ : std_logic;
SIGNAL \ALT_INV_mem~123_q\ : std_logic;
SIGNAL \ALT_INV_mem~115_q\ : std_logic;
SIGNAL \ALT_INV_mem~173_combout\ : std_logic;
SIGNAL \ALT_INV_mem~107_q\ : std_logic;
SIGNAL \ALT_INV_mem~99_q\ : std_logic;
SIGNAL \ALT_INV_mem~91_q\ : std_logic;
SIGNAL \ALT_INV_mem~83_q\ : std_logic;
SIGNAL \ALT_INV_mem~172_combout\ : std_logic;
SIGNAL \ALT_INV_mem~75_q\ : std_logic;

BEGIN

ww_ce <= ce;
ww_we <= we;
ww_address <= address;
ww_data_entrada <= data_entrada;
data_saida <= ww_data_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mem~53_q\ <= NOT \mem~53_q\;
\ALT_INV_mem~45_q\ <= NOT \mem~45_q\;
\ALT_INV_mem~141_combout\ <= NOT \mem~141_combout\;
\ALT_INV_mem~37_q\ <= NOT \mem~37_q\;
\ALT_INV_mem~29_q\ <= NOT \mem~29_q\;
\ALT_INV_mem~21_q\ <= NOT \mem~21_q\;
\ALT_INV_mem~13_q\ <= NOT \mem~13_q\;
\ALT_INV_mem~67_q\ <= NOT \mem~67_q\;
\ALT_INV_mem~59_q\ <= NOT \mem~59_q\;
\ALT_INV_mem~51_q\ <= NOT \mem~51_q\;
\ALT_INV_mem~171_combout\ <= NOT \mem~171_combout\;
\ALT_INV_mem~43_q\ <= NOT \mem~43_q\;
\ALT_INV_mem~35_q\ <= NOT \mem~35_q\;
\ALT_INV_mem~27_q\ <= NOT \mem~27_q\;
\ALT_INV_mem~19_q\ <= NOT \mem~19_q\;
\ALT_INV_mem~169_combout\ <= NOT \mem~169_combout\;
\ALT_INV_mem~138_q\ <= NOT \mem~138_q\;
\ALT_INV_mem~106_q\ <= NOT \mem~106_q\;
\ALT_INV_mem~74_q\ <= NOT \mem~74_q\;
\ALT_INV_mem~42_q\ <= NOT \mem~42_q\;
\ALT_INV_mem~168_combout\ <= NOT \mem~168_combout\;
\ALT_INV_mem~130_q\ <= NOT \mem~130_q\;
\ALT_INV_mem~98_q\ <= NOT \mem~98_q\;
\ALT_INV_mem~66_q\ <= NOT \mem~66_q\;
\ALT_INV_mem~34_q\ <= NOT \mem~34_q\;
\ALT_INV_mem~167_combout\ <= NOT \mem~167_combout\;
\ALT_INV_mem~122_q\ <= NOT \mem~122_q\;
\ALT_INV_mem~90_q\ <= NOT \mem~90_q\;
\ALT_INV_mem~58_q\ <= NOT \mem~58_q\;
\ALT_INV_mem~26_q\ <= NOT \mem~26_q\;
\ALT_INV_mem~166_combout\ <= NOT \mem~166_combout\;
\ALT_INV_mem~114_q\ <= NOT \mem~114_q\;
\ALT_INV_mem~82_q\ <= NOT \mem~82_q\;
\ALT_INV_mem~50_q\ <= NOT \mem~50_q\;
\ALT_INV_mem~18_q\ <= NOT \mem~18_q\;
\ALT_INV_mem~164_combout\ <= NOT \mem~164_combout\;
\ALT_INV_mem~137_q\ <= NOT \mem~137_q\;
\ALT_INV_mem~129_q\ <= NOT \mem~129_q\;
\ALT_INV_mem~121_q\ <= NOT \mem~121_q\;
\ALT_INV_mem~113_q\ <= NOT \mem~113_q\;
\ALT_INV_mem~163_combout\ <= NOT \mem~163_combout\;
\ALT_INV_mem~105_q\ <= NOT \mem~105_q\;
\ALT_INV_mem~97_q\ <= NOT \mem~97_q\;
\ALT_INV_mem~89_q\ <= NOT \mem~89_q\;
\ALT_INV_mem~81_q\ <= NOT \mem~81_q\;
\ALT_INV_mem~162_combout\ <= NOT \mem~162_combout\;
\ALT_INV_mem~73_q\ <= NOT \mem~73_q\;
\ALT_INV_mem~65_q\ <= NOT \mem~65_q\;
\ALT_INV_mem~57_q\ <= NOT \mem~57_q\;
\ALT_INV_mem~49_q\ <= NOT \mem~49_q\;
\ALT_INV_mem~161_combout\ <= NOT \mem~161_combout\;
\ALT_INV_mem~41_q\ <= NOT \mem~41_q\;
\ALT_INV_mem~33_q\ <= NOT \mem~33_q\;
\ALT_INV_mem~25_q\ <= NOT \mem~25_q\;
\ALT_INV_mem~17_q\ <= NOT \mem~17_q\;
\ALT_INV_mem~159_combout\ <= NOT \mem~159_combout\;
\ALT_INV_mem~136_q\ <= NOT \mem~136_q\;
\ALT_INV_mem~104_q\ <= NOT \mem~104_q\;
\ALT_INV_mem~72_q\ <= NOT \mem~72_q\;
\ALT_INV_mem~40_q\ <= NOT \mem~40_q\;
\ALT_INV_mem~158_combout\ <= NOT \mem~158_combout\;
\ALT_INV_mem~128_q\ <= NOT \mem~128_q\;
\ALT_INV_mem~96_q\ <= NOT \mem~96_q\;
\ALT_INV_mem~64_q\ <= NOT \mem~64_q\;
\ALT_INV_mem~32_q\ <= NOT \mem~32_q\;
\ALT_INV_mem~157_combout\ <= NOT \mem~157_combout\;
\ALT_INV_mem~120_q\ <= NOT \mem~120_q\;
\ALT_INV_mem~88_q\ <= NOT \mem~88_q\;
\ALT_INV_mem~56_q\ <= NOT \mem~56_q\;
\ALT_INV_mem~24_q\ <= NOT \mem~24_q\;
\ALT_INV_mem~156_combout\ <= NOT \mem~156_combout\;
\ALT_INV_mem~112_q\ <= NOT \mem~112_q\;
\ALT_INV_mem~80_q\ <= NOT \mem~80_q\;
\ALT_INV_mem~48_q\ <= NOT \mem~48_q\;
\ALT_INV_mem~16_q\ <= NOT \mem~16_q\;
\ALT_INV_mem~154_combout\ <= NOT \mem~154_combout\;
\ALT_INV_mem~135_q\ <= NOT \mem~135_q\;
\ALT_INV_mem~127_q\ <= NOT \mem~127_q\;
\ALT_INV_mem~119_q\ <= NOT \mem~119_q\;
\ALT_INV_mem~111_q\ <= NOT \mem~111_q\;
\ALT_INV_mem~153_combout\ <= NOT \mem~153_combout\;
\ALT_INV_mem~103_q\ <= NOT \mem~103_q\;
\ALT_INV_mem~95_q\ <= NOT \mem~95_q\;
\ALT_INV_mem~87_q\ <= NOT \mem~87_q\;
\ALT_INV_mem~79_q\ <= NOT \mem~79_q\;
\ALT_INV_mem~152_combout\ <= NOT \mem~152_combout\;
\ALT_INV_mem~71_q\ <= NOT \mem~71_q\;
\ALT_INV_mem~63_q\ <= NOT \mem~63_q\;
\ALT_INV_mem~55_q\ <= NOT \mem~55_q\;
\ALT_INV_mem~47_q\ <= NOT \mem~47_q\;
\ALT_INV_mem~151_combout\ <= NOT \mem~151_combout\;
\ALT_INV_mem~39_q\ <= NOT \mem~39_q\;
\ALT_INV_mem~31_q\ <= NOT \mem~31_q\;
\ALT_INV_mem~23_q\ <= NOT \mem~23_q\;
\ALT_INV_mem~15_q\ <= NOT \mem~15_q\;
\ALT_INV_mem~149_combout\ <= NOT \mem~149_combout\;
\ALT_INV_mem~134_q\ <= NOT \mem~134_q\;
\ALT_INV_mem~102_q\ <= NOT \mem~102_q\;
\ALT_INV_mem~70_q\ <= NOT \mem~70_q\;
\ALT_INV_mem~38_q\ <= NOT \mem~38_q\;
\ALT_INV_mem~148_combout\ <= NOT \mem~148_combout\;
\ALT_INV_mem~126_q\ <= NOT \mem~126_q\;
\ALT_INV_mem~94_q\ <= NOT \mem~94_q\;
\ALT_INV_mem~62_q\ <= NOT \mem~62_q\;
\ALT_INV_mem~30_q\ <= NOT \mem~30_q\;
\ALT_INV_mem~147_combout\ <= NOT \mem~147_combout\;
\ALT_INV_mem~118_q\ <= NOT \mem~118_q\;
\ALT_INV_mem~86_q\ <= NOT \mem~86_q\;
\ALT_INV_mem~54_q\ <= NOT \mem~54_q\;
\ALT_INV_mem~22_q\ <= NOT \mem~22_q\;
\ALT_INV_mem~146_combout\ <= NOT \mem~146_combout\;
\ALT_INV_mem~110_q\ <= NOT \mem~110_q\;
\ALT_INV_mem~78_q\ <= NOT \mem~78_q\;
\ALT_INV_mem~46_q\ <= NOT \mem~46_q\;
\ALT_INV_mem~14_q\ <= NOT \mem~14_q\;
\ALT_INV_mem~144_combout\ <= NOT \mem~144_combout\;
\ALT_INV_mem~133_q\ <= NOT \mem~133_q\;
\ALT_INV_mem~125_q\ <= NOT \mem~125_q\;
\ALT_INV_mem~117_q\ <= NOT \mem~117_q\;
\ALT_INV_mem~109_q\ <= NOT \mem~109_q\;
\ALT_INV_mem~143_combout\ <= NOT \mem~143_combout\;
\ALT_INV_mem~101_q\ <= NOT \mem~101_q\;
\ALT_INV_mem~93_q\ <= NOT \mem~93_q\;
\ALT_INV_mem~85_q\ <= NOT \mem~85_q\;
\ALT_INV_mem~77_q\ <= NOT \mem~77_q\;
\ALT_INV_mem~142_combout\ <= NOT \mem~142_combout\;
\ALT_INV_mem~69_q\ <= NOT \mem~69_q\;
\ALT_INV_mem~61_q\ <= NOT \mem~61_q\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_address[3]~input_o\ <= NOT \address[3]~input_o\;
\ALT_INV_address[2]~input_o\ <= NOT \address[2]~input_o\;
\ALT_INV_address[1]~input_o\ <= NOT \address[1]~input_o\;
\ALT_INV_address[0]~input_o\ <= NOT \address[0]~input_o\;
\ALT_INV_mem~179_combout\ <= NOT \mem~179_combout\;
\ALT_INV_mem~140_q\ <= NOT \mem~140_q\;
\ALT_INV_mem~108_q\ <= NOT \mem~108_q\;
\ALT_INV_mem~76_q\ <= NOT \mem~76_q\;
\ALT_INV_mem~44_q\ <= NOT \mem~44_q\;
\ALT_INV_mem~178_combout\ <= NOT \mem~178_combout\;
\ALT_INV_mem~132_q\ <= NOT \mem~132_q\;
\ALT_INV_mem~100_q\ <= NOT \mem~100_q\;
\ALT_INV_mem~68_q\ <= NOT \mem~68_q\;
\ALT_INV_mem~36_q\ <= NOT \mem~36_q\;
\ALT_INV_mem~177_combout\ <= NOT \mem~177_combout\;
\ALT_INV_mem~124_q\ <= NOT \mem~124_q\;
\ALT_INV_mem~92_q\ <= NOT \mem~92_q\;
\ALT_INV_mem~60_q\ <= NOT \mem~60_q\;
\ALT_INV_mem~28_q\ <= NOT \mem~28_q\;
\ALT_INV_mem~176_combout\ <= NOT \mem~176_combout\;
\ALT_INV_mem~116_q\ <= NOT \mem~116_q\;
\ALT_INV_mem~84_q\ <= NOT \mem~84_q\;
\ALT_INV_mem~52_q\ <= NOT \mem~52_q\;
\ALT_INV_mem~20_q\ <= NOT \mem~20_q\;
\ALT_INV_mem~174_combout\ <= NOT \mem~174_combout\;
\ALT_INV_mem~139_q\ <= NOT \mem~139_q\;
\ALT_INV_mem~131_q\ <= NOT \mem~131_q\;
\ALT_INV_mem~123_q\ <= NOT \mem~123_q\;
\ALT_INV_mem~115_q\ <= NOT \mem~115_q\;
\ALT_INV_mem~173_combout\ <= NOT \mem~173_combout\;
\ALT_INV_mem~107_q\ <= NOT \mem~107_q\;
\ALT_INV_mem~99_q\ <= NOT \mem~99_q\;
\ALT_INV_mem~91_q\ <= NOT \mem~91_q\;
\ALT_INV_mem~83_q\ <= NOT \mem~83_q\;
\ALT_INV_mem~172_combout\ <= NOT \mem~172_combout\;
\ALT_INV_mem~75_q\ <= NOT \mem~75_q\;

\data_saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~145_combout\,
	devoe => ww_devoe,
	o => \data_saida[0]~output_o\);

\data_saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~150_combout\,
	devoe => ww_devoe,
	o => \data_saida[1]~output_o\);

\data_saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~155_combout\,
	devoe => ww_devoe,
	o => \data_saida[2]~output_o\);

\data_saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~160_combout\,
	devoe => ww_devoe,
	o => \data_saida[3]~output_o\);

\data_saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~165_combout\,
	devoe => ww_devoe,
	o => \data_saida[4]~output_o\);

\data_saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~170_combout\,
	devoe => ww_devoe,
	o => \data_saida[5]~output_o\);

\data_saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~175_combout\,
	devoe => ww_devoe,
	o => \data_saida[6]~output_o\);

\data_saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~180_combout\,
	devoe => ww_devoe,
	o => \data_saida[7]~output_o\);

\ce~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ce,
	o => \ce~input_o\);

\data_entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(0),
	o => \data_entrada[0]~input_o\);

\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

\mem~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~181_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~181_combout\);

\mem~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~13_q\);

\mem~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~182_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~182_combout\);

\mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~21_q\);

\mem~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~183_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~183_combout\);

\mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~29_q\);

\mem~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~184_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~184_combout\);

\mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~37_q\);

\mem~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~141_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~37_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~29_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~21_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~13_q\,
	datab => \ALT_INV_mem~21_q\,
	datac => \ALT_INV_mem~29_q\,
	datad => \ALT_INV_mem~37_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~141_combout\);

\mem~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~185_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~185_combout\);

\mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~45_q\);

\mem~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~186_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~186_combout\);

\mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~53_q\);

\mem~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~187_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~187_combout\);

\mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~61_q\);

\mem~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~188_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & !\address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~188_combout\);

\mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~69_q\);

\mem~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~142_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~69_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~61_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~53_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~45_q\,
	datab => \ALT_INV_mem~53_q\,
	datac => \ALT_INV_mem~61_q\,
	datad => \ALT_INV_mem~69_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~142_combout\);

\mem~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~189_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~189_combout\);

\mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~77_q\);

\mem~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~190_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (!\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~190_combout\);

\mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~85_q\);

\mem~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~191_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~191_combout\);

\mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~93_q\);

\mem~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~192_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~192_combout\);

\mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~101_q\);

\mem~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~143_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~101_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~93_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~85_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~77_q\,
	datab => \ALT_INV_mem~85_q\,
	datac => \ALT_INV_mem~93_q\,
	datad => \ALT_INV_mem~101_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~143_combout\);

\mem~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~193_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~193_combout\);

\mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~109_q\);

\mem~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~194_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~194_combout\);

\mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~117_q\);

\mem~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~195_combout\ = ( !\we~input_o\ & ( (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~195_combout\);

\mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~125_q\);

\mem~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~196_combout\ = ( !\we~input_o\ & ( (\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datad => \ALT_INV_address[3]~input_o\,
	datae => \ALT_INV_we~input_o\,
	combout => \mem~196_combout\);

\mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[0]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~133_q\);

\mem~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~144_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~133_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~125_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~117_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~109_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~109_q\,
	datab => \ALT_INV_mem~117_q\,
	datac => \ALT_INV_mem~125_q\,
	datad => \ALT_INV_mem~133_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~144_combout\);

\mem~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~145_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~144_combout\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~143_combout\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~142_combout\ ) ) ) # 
-- ( !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~141_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~141_combout\,
	datab => \ALT_INV_mem~142_combout\,
	datac => \ALT_INV_mem~143_combout\,
	datad => \ALT_INV_mem~144_combout\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~145_combout\);

\data_entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(1),
	o => \data_entrada[1]~input_o\);

\mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~14_q\);

\mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~46_q\);

\mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~78_q\);

\mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~110_q\);

\mem~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~146_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~110_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~78_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~46_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~14_q\,
	datab => \ALT_INV_mem~46_q\,
	datac => \ALT_INV_mem~78_q\,
	datad => \ALT_INV_mem~110_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~146_combout\);

\mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~22_q\);

\mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~54_q\);

\mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~86_q\);

\mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~118_q\);

\mem~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~147_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~118_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~86_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~54_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~22_q\,
	datab => \ALT_INV_mem~54_q\,
	datac => \ALT_INV_mem~86_q\,
	datad => \ALT_INV_mem~118_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~147_combout\);

\mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~30_q\);

\mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~62_q\);

\mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~94_q\);

\mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~126_q\);

\mem~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~148_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~126_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~94_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~62_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~30_q\,
	datab => \ALT_INV_mem~62_q\,
	datac => \ALT_INV_mem~94_q\,
	datad => \ALT_INV_mem~126_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~148_combout\);

\mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~38_q\);

\mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~70_q\);

\mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~102_q\);

\mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[1]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~134_q\);

\mem~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~149_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~134_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~102_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~70_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~38_q\,
	datab => \ALT_INV_mem~70_q\,
	datac => \ALT_INV_mem~102_q\,
	datad => \ALT_INV_mem~134_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~149_combout\);

\mem~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~150_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~149_combout\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~148_combout\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~147_combout\ ) ) ) # 
-- ( !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~146_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~146_combout\,
	datab => \ALT_INV_mem~147_combout\,
	datac => \ALT_INV_mem~148_combout\,
	datad => \ALT_INV_mem~149_combout\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~150_combout\);

\data_entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(2),
	o => \data_entrada[2]~input_o\);

\mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~15_q\);

\mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~23_q\);

\mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~31_q\);

\mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~39_q\);

\mem~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~151_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~39_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~31_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~23_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~15_q\,
	datab => \ALT_INV_mem~23_q\,
	datac => \ALT_INV_mem~31_q\,
	datad => \ALT_INV_mem~39_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~151_combout\);

\mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~47_q\);

\mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~55_q\);

\mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~63_q\);

\mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~71_q\);

\mem~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~152_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~71_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~63_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~55_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~47_q\,
	datab => \ALT_INV_mem~55_q\,
	datac => \ALT_INV_mem~63_q\,
	datad => \ALT_INV_mem~71_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~152_combout\);

\mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~79_q\);

\mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~87_q\);

\mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~95_q\);

\mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~103_q\);

\mem~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~153_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~103_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~95_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~87_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~79_q\,
	datab => \ALT_INV_mem~87_q\,
	datac => \ALT_INV_mem~95_q\,
	datad => \ALT_INV_mem~103_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~153_combout\);

\mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~111_q\);

\mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~119_q\);

\mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~127_q\);

\mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[2]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~135_q\);

\mem~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~154_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~135_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~127_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~119_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~111_q\,
	datab => \ALT_INV_mem~119_q\,
	datac => \ALT_INV_mem~127_q\,
	datad => \ALT_INV_mem~135_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~154_combout\);

\mem~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~155_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~154_combout\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~153_combout\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~152_combout\ ) ) ) # 
-- ( !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~151_combout\,
	datab => \ALT_INV_mem~152_combout\,
	datac => \ALT_INV_mem~153_combout\,
	datad => \ALT_INV_mem~154_combout\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~155_combout\);

\data_entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(3),
	o => \data_entrada[3]~input_o\);

\mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~16_q\);

\mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~48_q\);

\mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~80_q\);

\mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~112_q\);

\mem~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~156_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~112_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~80_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~48_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~16_q\,
	datab => \ALT_INV_mem~48_q\,
	datac => \ALT_INV_mem~80_q\,
	datad => \ALT_INV_mem~112_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~156_combout\);

\mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~24_q\);

\mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~56_q\);

\mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~88_q\);

\mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~120_q\);

\mem~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~157_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~120_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~88_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~56_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~24_q\,
	datab => \ALT_INV_mem~56_q\,
	datac => \ALT_INV_mem~88_q\,
	datad => \ALT_INV_mem~120_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~157_combout\);

\mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~32_q\);

\mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~64_q\);

\mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~96_q\);

\mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~128_q\);

\mem~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~158_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~128_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~96_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~64_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~32_q\,
	datab => \ALT_INV_mem~64_q\,
	datac => \ALT_INV_mem~96_q\,
	datad => \ALT_INV_mem~128_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~158_combout\);

\mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~40_q\);

\mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~72_q\);

\mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~104_q\);

\mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[3]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~136_q\);

\mem~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~159_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~136_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~104_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~72_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~40_q\,
	datab => \ALT_INV_mem~72_q\,
	datac => \ALT_INV_mem~104_q\,
	datad => \ALT_INV_mem~136_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~159_combout\);

\mem~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~160_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~159_combout\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~158_combout\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~157_combout\ ) ) ) # 
-- ( !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~156_combout\,
	datab => \ALT_INV_mem~157_combout\,
	datac => \ALT_INV_mem~158_combout\,
	datad => \ALT_INV_mem~159_combout\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~160_combout\);

\data_entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(4),
	o => \data_entrada[4]~input_o\);

\mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~17_q\);

\mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~25_q\);

\mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~33_q\);

\mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~41_q\);

\mem~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~161_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~41_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~33_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~25_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~17_q\,
	datab => \ALT_INV_mem~25_q\,
	datac => \ALT_INV_mem~33_q\,
	datad => \ALT_INV_mem~41_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~161_combout\);

\mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~49_q\);

\mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~57_q\);

\mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~65_q\);

\mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~73_q\);

\mem~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~162_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~73_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~65_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~57_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~49_q\,
	datab => \ALT_INV_mem~57_q\,
	datac => \ALT_INV_mem~65_q\,
	datad => \ALT_INV_mem~73_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~162_combout\);

\mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~81_q\);

\mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~89_q\);

\mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~97_q\);

\mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~105_q\);

\mem~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~163_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~105_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~97_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~89_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~81_q\,
	datab => \ALT_INV_mem~89_q\,
	datac => \ALT_INV_mem~97_q\,
	datad => \ALT_INV_mem~105_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~163_combout\);

\mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~113_q\);

\mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~121_q\);

\mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~129_q\);

\mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[4]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~137_q\);

\mem~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~164_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~137_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~129_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~121_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~113_q\,
	datab => \ALT_INV_mem~121_q\,
	datac => \ALT_INV_mem~129_q\,
	datad => \ALT_INV_mem~137_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~164_combout\);

\mem~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~165_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~164_combout\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~163_combout\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~162_combout\ ) ) ) # 
-- ( !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~161_combout\,
	datab => \ALT_INV_mem~162_combout\,
	datac => \ALT_INV_mem~163_combout\,
	datad => \ALT_INV_mem~164_combout\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~165_combout\);

\data_entrada[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(5),
	o => \data_entrada[5]~input_o\);

\mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~18_q\);

\mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~50_q\);

\mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~82_q\);

\mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~114_q\);

\mem~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~166_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~114_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~82_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~50_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~18_q\,
	datab => \ALT_INV_mem~50_q\,
	datac => \ALT_INV_mem~82_q\,
	datad => \ALT_INV_mem~114_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~166_combout\);

\mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~26_q\);

\mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~58_q\);

\mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~90_q\);

\mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~122_q\);

\mem~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~167_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~122_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~90_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~58_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~26_q\,
	datab => \ALT_INV_mem~58_q\,
	datac => \ALT_INV_mem~90_q\,
	datad => \ALT_INV_mem~122_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~167_combout\);

\mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~34_q\);

\mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~66_q\);

\mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~98_q\);

\mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~130_q\);

\mem~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~168_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~130_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~98_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~66_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~34_q\,
	datab => \ALT_INV_mem~66_q\,
	datac => \ALT_INV_mem~98_q\,
	datad => \ALT_INV_mem~130_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~168_combout\);

\mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~42_q\);

\mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~74_q\);

\mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~106_q\);

\mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[5]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~138_q\);

\mem~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~169_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~138_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~106_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~74_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~42_q\,
	datab => \ALT_INV_mem~74_q\,
	datac => \ALT_INV_mem~106_q\,
	datad => \ALT_INV_mem~138_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~169_combout\);

\mem~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~170_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~169_combout\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~168_combout\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~167_combout\ ) ) ) # 
-- ( !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~166_combout\,
	datab => \ALT_INV_mem~167_combout\,
	datac => \ALT_INV_mem~168_combout\,
	datad => \ALT_INV_mem~169_combout\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~170_combout\);

\data_entrada[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(6),
	o => \data_entrada[6]~input_o\);

\mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~19_q\);

\mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~27_q\);

\mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~35_q\);

\mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~43_q\);

\mem~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~171_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~43_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~35_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~27_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~19_q\,
	datab => \ALT_INV_mem~27_q\,
	datac => \ALT_INV_mem~35_q\,
	datad => \ALT_INV_mem~43_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~171_combout\);

\mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~51_q\);

\mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~59_q\);

\mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~67_q\);

\mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~75_q\);

\mem~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~172_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~75_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~67_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~59_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~51_q\,
	datab => \ALT_INV_mem~59_q\,
	datac => \ALT_INV_mem~67_q\,
	datad => \ALT_INV_mem~75_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~172_combout\);

\mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~83_q\);

\mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~91_q\);

\mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~99_q\);

\mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~107_q\);

\mem~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~173_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~107_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~99_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~91_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~83_q\,
	datab => \ALT_INV_mem~91_q\,
	datac => \ALT_INV_mem~99_q\,
	datad => \ALT_INV_mem~107_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~173_combout\);

\mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~115_q\);

\mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~123_q\);

\mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~131_q\);

\mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[6]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~139_q\);

\mem~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~174_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~139_q\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~131_q\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~123_q\ ) ) ) # ( 
-- !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~115_q\,
	datab => \ALT_INV_mem~123_q\,
	datac => \ALT_INV_mem~131_q\,
	datad => \ALT_INV_mem~139_q\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~174_combout\);

\mem~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~175_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~174_combout\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~173_combout\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~172_combout\ ) ) ) # 
-- ( !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~171_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~171_combout\,
	datab => \ALT_INV_mem~172_combout\,
	datac => \ALT_INV_mem~173_combout\,
	datad => \ALT_INV_mem~174_combout\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~175_combout\);

\data_entrada[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_entrada(7),
	o => \data_entrada[7]~input_o\);

\mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~20_q\);

\mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~52_q\);

\mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~84_q\);

\mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~116_q\);

\mem~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~176_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~116_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~84_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~52_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~20_q\,
	datab => \ALT_INV_mem~52_q\,
	datac => \ALT_INV_mem~84_q\,
	datad => \ALT_INV_mem~116_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~176_combout\);

\mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~28_q\);

\mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~60_q\);

\mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~92_q\);

\mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~124_q\);

\mem~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~177_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~124_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~92_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~60_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~28_q\,
	datab => \ALT_INV_mem~60_q\,
	datac => \ALT_INV_mem~92_q\,
	datad => \ALT_INV_mem~124_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~177_combout\);

\mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~36_q\);

\mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~68_q\);

\mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~100_q\);

\mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~132_q\);

\mem~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~178_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~132_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~100_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~68_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~36_q\,
	datab => \ALT_INV_mem~68_q\,
	datac => \ALT_INV_mem~100_q\,
	datad => \ALT_INV_mem~132_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~178_combout\);

\mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~44_q\);

\mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~76_q\);

\mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~108_q\);

\mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ce~input_o\,
	d => \data_entrada[7]~input_o\,
	ena => \mem~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~140_q\);

\mem~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~179_combout\ = ( \address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~140_q\ ) ) ) # ( !\address[2]~input_o\ & ( \address[3]~input_o\ & ( \mem~108_q\ ) ) ) # ( \address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~76_q\ ) ) ) # ( 
-- !\address[2]~input_o\ & ( !\address[3]~input_o\ & ( \mem~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~44_q\,
	datab => \ALT_INV_mem~76_q\,
	datac => \ALT_INV_mem~108_q\,
	datad => \ALT_INV_mem~140_q\,
	datae => \ALT_INV_address[2]~input_o\,
	dataf => \ALT_INV_address[3]~input_o\,
	combout => \mem~179_combout\);

\mem~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem~180_combout\ = ( \address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~179_combout\ ) ) ) # ( !\address[0]~input_o\ & ( \address[1]~input_o\ & ( \mem~178_combout\ ) ) ) # ( \address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~177_combout\ ) ) ) # 
-- ( !\address[0]~input_o\ & ( !\address[1]~input_o\ & ( \mem~176_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mem~176_combout\,
	datab => \ALT_INV_mem~177_combout\,
	datac => \ALT_INV_mem~178_combout\,
	datad => \ALT_INV_mem~179_combout\,
	datae => \ALT_INV_address[0]~input_o\,
	dataf => \ALT_INV_address[1]~input_o\,
	combout => \mem~180_combout\);

ww_data_saida(0) <= \data_saida[0]~output_o\;

ww_data_saida(1) <= \data_saida[1]~output_o\;

ww_data_saida(2) <= \data_saida[2]~output_o\;

ww_data_saida(3) <= \data_saida[3]~output_o\;

ww_data_saida(4) <= \data_saida[4]~output_o\;

ww_data_saida(5) <= \data_saida[5]~output_o\;

ww_data_saida(6) <= \data_saida[6]~output_o\;

ww_data_saida(7) <= \data_saida[7]~output_o\;
END structure;


