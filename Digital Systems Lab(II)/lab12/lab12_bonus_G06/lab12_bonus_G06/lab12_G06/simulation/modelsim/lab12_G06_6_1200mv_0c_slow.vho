-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "05/24/2024 16:38:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab12_G06 IS
    PORT (
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	btn1 : IN std_logic;
	btn2 : IN std_logic;
	LED_data : IN std_logic_vector(4 DOWNTO 0);
	LEDs : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab12_G06;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn1	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_data[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab12_G06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_btn1 : std_logic;
SIGNAL ww_btn2 : std_logic;
SIGNAL ww_LED_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~43_combout\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~49_combout\ : std_logic;
SIGNAL \count[3]~38_combout\ : std_logic;
SIGNAL \count[5]~42_combout\ : std_logic;
SIGNAL \count[6]~44_combout\ : std_logic;
SIGNAL \count[11]~54_combout\ : std_logic;
SIGNAL \count[13]~58_combout\ : std_logic;
SIGNAL \count[15]~62_combout\ : std_logic;
SIGNAL \count[19]~70_combout\ : std_logic;
SIGNAL \count[29]~91\ : std_logic;
SIGNAL \count[30]~92_combout\ : std_logic;
SIGNAL \count[30]~93\ : std_logic;
SIGNAL \count[31]~94_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \speed[29]~12_combout\ : std_logic;
SIGNAL \speed[20]~19_combout\ : std_logic;
SIGNAL \speed[15]~23_combout\ : std_logic;
SIGNAL \speed[10]~28_combout\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED_data[0]~input_o\ : std_logic;
SIGNAL \LED_data[1]~input_o\ : std_logic;
SIGNAL \LED_data[3]~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \btn1~input_o\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \btn2~input_o\ : std_logic;
SIGNAL \speed[24]~4_combout\ : std_logic;
SIGNAL \speed[10]~29_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~59_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~57_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~51_combout\ : std_logic;
SIGNAL \speed[30]~11_combout\ : std_logic;
SIGNAL \speed[20]~20_combout\ : std_logic;
SIGNAL \Add2~28\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \speed[22]~18_combout\ : std_logic;
SIGNAL \Add2~36\ : std_logic;
SIGNAL \Add2~37_combout\ : std_logic;
SIGNAL \speed[23]~17_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~40\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \speed[25]~16_combout\ : std_logic;
SIGNAL \speed[26]~15_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \speed[31]~7_combout\ : std_logic;
SIGNAL \speed[15]~24_combout\ : std_logic;
SIGNAL \speed[21]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \speed[31]~8_combout\ : std_logic;
SIGNAL \speed[31]~9_combout\ : std_logic;
SIGNAL \speed[14]~25_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \speed[12]~27_combout\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \speed[11]~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~8\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \speed[13]~26_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~20\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \speed[16]~22_combout\ : std_logic;
SIGNAL \Add2~24\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \speed[17]~1_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \speed[18]~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \speed[19]~21_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \speed[21]~5_combout\ : std_logic;
SIGNAL \speed[21]~6_combout\ : std_logic;
SIGNAL \speed[27]~14_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~44\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~47_combout\ : std_logic;
SIGNAL \speed[28]~13_combout\ : std_logic;
SIGNAL \Add2~48\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~53_combout\ : std_logic;
SIGNAL \speed[31]~10_combout\ : std_logic;
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~34_combout\ : std_logic;
SIGNAL \count[1]~35\ : std_logic;
SIGNAL \count[2]~36_combout\ : std_logic;
SIGNAL \count[2]~37\ : std_logic;
SIGNAL \count[3]~39\ : std_logic;
SIGNAL \count[4]~40_combout\ : std_logic;
SIGNAL \count[4]~41\ : std_logic;
SIGNAL \count[5]~43\ : std_logic;
SIGNAL \count[6]~45\ : std_logic;
SIGNAL \count[7]~46_combout\ : std_logic;
SIGNAL \count[7]~47\ : std_logic;
SIGNAL \count[8]~48_combout\ : std_logic;
SIGNAL \count[8]~49\ : std_logic;
SIGNAL \count[9]~50_combout\ : std_logic;
SIGNAL \count[9]~51\ : std_logic;
SIGNAL \count[10]~52_combout\ : std_logic;
SIGNAL \count[10]~53\ : std_logic;
SIGNAL \count[11]~55\ : std_logic;
SIGNAL \count[12]~56_combout\ : std_logic;
SIGNAL \count[12]~57\ : std_logic;
SIGNAL \count[13]~59\ : std_logic;
SIGNAL \count[14]~60_combout\ : std_logic;
SIGNAL \count[14]~61\ : std_logic;
SIGNAL \count[15]~63\ : std_logic;
SIGNAL \count[16]~64_combout\ : std_logic;
SIGNAL \count[16]~65\ : std_logic;
SIGNAL \count[17]~66_combout\ : std_logic;
SIGNAL \count[17]~67\ : std_logic;
SIGNAL \count[18]~68_combout\ : std_logic;
SIGNAL \count[18]~69\ : std_logic;
SIGNAL \count[19]~71\ : std_logic;
SIGNAL \count[20]~72_combout\ : std_logic;
SIGNAL \count[20]~73\ : std_logic;
SIGNAL \count[21]~75\ : std_logic;
SIGNAL \count[22]~77\ : std_logic;
SIGNAL \count[23]~78_combout\ : std_logic;
SIGNAL \count[23]~79\ : std_logic;
SIGNAL \count[24]~80_combout\ : std_logic;
SIGNAL \count[24]~81\ : std_logic;
SIGNAL \count[25]~82_combout\ : std_logic;
SIGNAL \count[25]~83\ : std_logic;
SIGNAL \count[26]~84_combout\ : std_logic;
SIGNAL \count[26]~85\ : std_logic;
SIGNAL \count[27]~87\ : std_logic;
SIGNAL \count[28]~88_combout\ : std_logic;
SIGNAL \count[28]~89\ : std_logic;
SIGNAL \count[29]~90_combout\ : std_logic;
SIGNAL \count[27]~86_combout\ : std_logic;
SIGNAL \count[22]~76_combout\ : std_logic;
SIGNAL \count[21]~74_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~52_combout\ : std_logic;
SIGNAL \temp[0]~5_combout\ : std_logic;
SIGNAL \buf[9]~feeder_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \buf[8]~feeder_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \buf[7]~feeder_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \buf[6]~feeder_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \buf[5]~feeder_combout\ : std_logic;
SIGNAL \LED_data[4]~input_o\ : std_logic;
SIGNAL \temp[4]~4_combout\ : std_logic;
SIGNAL \buf[4]~feeder_combout\ : std_logic;
SIGNAL \temp[3]~3_combout\ : std_logic;
SIGNAL \buf[3]~feeder_combout\ : std_logic;
SIGNAL \LED_data[2]~input_o\ : std_logic;
SIGNAL \temp[2]~2_combout\ : std_logic;
SIGNAL \buf[2]~feeder_combout\ : std_logic;
SIGNAL \temp[1]~1_combout\ : std_logic;
SIGNAL \buf[1]~feeder_combout\ : std_logic;
SIGNAL \temp[0]~0_combout\ : std_logic;
SIGNAL \buf[0]~feeder_combout\ : std_logic;
SIGNAL \LEDs[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[0]~reg0_q\ : std_logic;
SIGNAL \LEDs[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[1]~reg0_q\ : std_logic;
SIGNAL \LEDs[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[2]~reg0_q\ : std_logic;
SIGNAL \LEDs[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[3]~reg0_q\ : std_logic;
SIGNAL \LEDs[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[4]~reg0_q\ : std_logic;
SIGNAL \LEDs[5]~reg0_q\ : std_logic;
SIGNAL \LEDs[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[6]~reg0_q\ : std_logic;
SIGNAL \LEDs[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[7]~reg0_q\ : std_logic;
SIGNAL \LEDs[8]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[8]~reg0_q\ : std_logic;
SIGNAL \LEDs[9]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDs[9]~reg0_q\ : std_logic;
SIGNAL buf : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL speed : std_logic_vector(31 DOWNTO 0);
SIGNAL temp : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~52_combout\ : std_logic;
SIGNAL \ALT_INV_speed[31]~9_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_btn1 <= btn1;
ww_btn2 <= btn2;
ww_LED_data <= LED_data;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~52_combout\ <= NOT \LessThan0~52_combout\;
\ALT_INV_speed[31]~9_combout\ <= NOT \speed[31]~9_combout\;

-- Location: FF_X39_Y24_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~94_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: FF_X39_Y24_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~92_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: FF_X39_Y24_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~70_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: FF_X39_Y25_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~62_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: FF_X39_Y25_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~58_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X39_Y25_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~54_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: FF_X39_Y25_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~44_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X39_Y25_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~42_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X37_Y25_N8
\Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\btn1~input_o\ & ((speed(6) & (!\Add2~2\)) # (!speed(6) & ((\Add2~2\) # (GND))))) # (!\btn1~input_o\ & ((speed(6) & (\Add2~2\ & VCC)) # (!speed(6) & (!\Add2~2\))))
-- \Add2~4\ = CARRY((\btn1~input_o\ & ((!\Add2~2\) # (!speed(6)))) # (!\btn1~input_o\ & (!speed(6) & !\Add2~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(6),
	datad => VCC,
	cin => \Add2~2\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X37_Y25_N10
\Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = ((\btn1~input_o\ $ (speed(7) $ (!\Add2~4\)))) # (GND)
-- \Add2~6\ = CARRY((\btn1~input_o\ & (!speed(7) & !\Add2~4\)) # (!\btn1~input_o\ & ((!\Add2~4\) # (!speed(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(7),
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~5_combout\,
	cout => \Add2~6\);

-- Location: LCCOMB_X37_Y25_N12
\Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (speed(8) & ((\btn1~input_o\ & (\Add2~6\ & VCC)) # (!\btn1~input_o\ & (!\Add2~6\)))) # (!speed(8) & ((\btn1~input_o\ & (!\Add2~6\)) # (!\btn1~input_o\ & ((\Add2~6\) # (GND)))))
-- \Add2~8\ = CARRY((speed(8) & (!\btn1~input_o\ & !\Add2~6\)) # (!speed(8) & ((!\Add2~6\) # (!\btn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(8),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~6\,
	combout => \Add2~7_combout\,
	cout => \Add2~8\);

-- Location: LCCOMB_X37_Y25_N14
\Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = ((\btn1~input_o\ $ (speed(9) $ (!\Add2~8\)))) # (GND)
-- \Add2~10\ = CARRY((\btn1~input_o\ & (!speed(9) & !\Add2~8\)) # (!\btn1~input_o\ & ((!\Add2~8\) # (!speed(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(9),
	datad => VCC,
	cin => \Add2~8\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X37_Y25_N16
\Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (speed(10) & ((\btn1~input_o\ & ((\Add2~10\) # (GND))) # (!\btn1~input_o\ & (!\Add2~10\)))) # (!speed(10) & ((\btn1~input_o\ & (!\Add2~10\)) # (!\btn1~input_o\ & (\Add2~10\ & VCC))))
-- \Add2~12\ = CARRY((speed(10) & ((\btn1~input_o\) # (!\Add2~10\))) # (!speed(10) & (\btn1~input_o\ & !\Add2~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(10),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~11_combout\,
	cout => \Add2~12\);

-- Location: LCCOMB_X37_Y25_N26
\Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = ((speed(15) $ (\btn1~input_o\ $ (\Add2~20\)))) # (GND)
-- \Add2~22\ = CARRY((speed(15) & (\btn1~input_o\ & !\Add2~20\)) # (!speed(15) & ((\btn1~input_o\) # (!\Add2~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(15),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~20\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

-- Location: LCCOMB_X37_Y24_N4
\Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (\btn1~input_o\ & ((speed(20) & ((\Add2~30\) # (GND))) # (!speed(20) & (!\Add2~30\)))) # (!\btn1~input_o\ & ((speed(20) & (!\Add2~30\)) # (!speed(20) & (\Add2~30\ & VCC))))
-- \Add2~32\ = CARRY((\btn1~input_o\ & ((speed(20)) # (!\Add2~30\))) # (!\btn1~input_o\ & (speed(20) & !\Add2~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(20),
	datad => VCC,
	cin => \Add2~30\,
	combout => \Add2~31_combout\,
	cout => \Add2~32\);

-- Location: LCCOMB_X37_Y24_N6
\Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = ((speed(21) $ (\btn1~input_o\ $ (\Add2~32\)))) # (GND)
-- \Add2~34\ = CARRY((speed(21) & ((!\Add2~32\) # (!\btn1~input_o\))) # (!speed(21) & (!\btn1~input_o\ & !\Add2~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(21),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~32\,
	combout => \Add2~33_combout\,
	cout => \Add2~34\);

-- Location: LCCOMB_X37_Y24_N12
\Add2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (speed(24) & ((\btn1~input_o\ & (!\Add2~38\)) # (!\btn1~input_o\ & (\Add2~38\ & VCC)))) # (!speed(24) & ((\btn1~input_o\ & ((\Add2~38\) # (GND))) # (!\btn1~input_o\ & (!\Add2~38\))))
-- \Add2~40\ = CARRY((speed(24) & (\btn1~input_o\ & !\Add2~38\)) # (!speed(24) & ((\btn1~input_o\) # (!\Add2~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(24),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~38\,
	combout => \Add2~39_combout\,
	cout => \Add2~40\);

-- Location: LCCOMB_X37_Y24_N16
\Add2~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~43_combout\ = (\btn1~input_o\ & ((speed(26) & (!\Add2~42\)) # (!speed(26) & ((\Add2~42\) # (GND))))) # (!\btn1~input_o\ & ((speed(26) & (\Add2~42\ & VCC)) # (!speed(26) & (!\Add2~42\))))
-- \Add2~44\ = CARRY((\btn1~input_o\ & ((!\Add2~42\) # (!speed(26)))) # (!\btn1~input_o\ & (!speed(26) & !\Add2~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(26),
	datad => VCC,
	cin => \Add2~42\,
	combout => \Add2~43_combout\,
	cout => \Add2~44\);

-- Location: LCCOMB_X37_Y24_N18
\Add2~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~45_combout\ = ((\btn1~input_o\ $ (speed(27) $ (\Add2~44\)))) # (GND)
-- \Add2~46\ = CARRY((\btn1~input_o\ & (speed(27) & !\Add2~44\)) # (!\btn1~input_o\ & ((speed(27)) # (!\Add2~44\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(27),
	datad => VCC,
	cin => \Add2~44\,
	combout => \Add2~45_combout\,
	cout => \Add2~46\);

-- Location: LCCOMB_X37_Y24_N22
\Add2~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~49_combout\ = ((speed(29) $ (\btn1~input_o\ $ (\Add2~48\)))) # (GND)
-- \Add2~50\ = CARRY((speed(29) & ((!\Add2~48\) # (!\btn1~input_o\))) # (!speed(29) & (!\btn1~input_o\ & !\Add2~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(29),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~48\,
	combout => \Add2~49_combout\,
	cout => \Add2~50\);

-- Location: FF_X39_Y25_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~38_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X39_Y25_N6
\count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~38_combout\ = (count(3) & (!\count[2]~37\)) # (!count(3) & ((\count[2]~37\) # (GND)))
-- \count[3]~39\ = CARRY((!\count[2]~37\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~37\,
	combout => \count[3]~38_combout\,
	cout => \count[3]~39\);

-- Location: LCCOMB_X39_Y25_N10
\count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~42_combout\ = (count(5) & (!\count[4]~41\)) # (!count(5) & ((\count[4]~41\) # (GND)))
-- \count[5]~43\ = CARRY((!\count[4]~41\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~41\,
	combout => \count[5]~42_combout\,
	cout => \count[5]~43\);

-- Location: LCCOMB_X39_Y25_N12
\count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~44_combout\ = (count(6) & (\count[5]~43\ $ (GND))) # (!count(6) & (!\count[5]~43\ & VCC))
-- \count[6]~45\ = CARRY((count(6) & !\count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~43\,
	combout => \count[6]~44_combout\,
	cout => \count[6]~45\);

-- Location: LCCOMB_X39_Y25_N22
\count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~54_combout\ = (count(11) & (!\count[10]~53\)) # (!count(11) & ((\count[10]~53\) # (GND)))
-- \count[11]~55\ = CARRY((!\count[10]~53\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~53\,
	combout => \count[11]~54_combout\,
	cout => \count[11]~55\);

-- Location: LCCOMB_X39_Y25_N26
\count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~58_combout\ = (count(13) & (!\count[12]~57\)) # (!count(13) & ((\count[12]~57\) # (GND)))
-- \count[13]~59\ = CARRY((!\count[12]~57\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~57\,
	combout => \count[13]~58_combout\,
	cout => \count[13]~59\);

-- Location: LCCOMB_X39_Y25_N30
\count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~62_combout\ = (count(15) & (!\count[14]~61\)) # (!count(15) & ((\count[14]~61\) # (GND)))
-- \count[15]~63\ = CARRY((!\count[14]~61\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~61\,
	combout => \count[15]~62_combout\,
	cout => \count[15]~63\);

-- Location: LCCOMB_X39_Y24_N6
\count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~70_combout\ = (count(19) & (!\count[18]~69\)) # (!count(19) & ((\count[18]~69\) # (GND)))
-- \count[19]~71\ = CARRY((!\count[18]~69\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~69\,
	combout => \count[19]~70_combout\,
	cout => \count[19]~71\);

-- Location: LCCOMB_X39_Y24_N26
\count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[29]~90_combout\ = (count(29) & (!\count[28]~89\)) # (!count(29) & ((\count[28]~89\) # (GND)))
-- \count[29]~91\ = CARRY((!\count[28]~89\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~89\,
	combout => \count[29]~90_combout\,
	cout => \count[29]~91\);

-- Location: LCCOMB_X39_Y24_N28
\count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[30]~92_combout\ = (count(30) & (\count[29]~91\ $ (GND))) # (!count(30) & (!\count[29]~91\ & VCC))
-- \count[30]~93\ = CARRY((count(30) & !\count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~91\,
	combout => \count[30]~92_combout\,
	cout => \count[30]~93\);

-- Location: LCCOMB_X39_Y24_N30
\count[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[31]~94_combout\ = count(31) $ (\count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~93\,
	combout => \count[31]~94_combout\);

-- Location: FF_X39_Y22_N1
\speed[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[29]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(29));

-- Location: LCCOMB_X40_Y23_N0
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~3_combout\ & (!speed(24) & (\LessThan2~4_combout\ & speed(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => speed(24),
	datac => \LessThan2~4_combout\,
	datad => speed(23),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X40_Y23_N10
\LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~7_combout\) # ((\LessThan2~5_combout\ & ((speed(20)) # (speed(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(20),
	datab => \LessThan2~5_combout\,
	datac => speed(19),
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X36_Y25_N0
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((speed(20)) # (!speed(15))) # (!speed(11))) # (!speed(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(21),
	datab => speed(11),
	datac => speed(15),
	datad => speed(20),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X36_Y25_N20
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ((speed(11)) # ((!speed(20)) # (!speed(10)))) # (!speed(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(5),
	datab => speed(11),
	datac => speed(10),
	datad => speed(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X39_Y22_N0
\speed[29]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[29]~12_combout\ = (\speed[31]~9_combout\ & (\Add2~49_combout\ & (\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~49_combout\,
	datab => \speed[21]~6_combout\,
	datac => speed(29),
	datad => \speed[31]~9_combout\,
	combout => \speed[29]~12_combout\);

-- Location: LCCOMB_X39_Y22_N10
\speed[20]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[20]~19_combout\ = (\btn1~input_o\ & (((\Add2~31_combout\) # (!\LessThan2~9_combout\)))) # (!\btn1~input_o\ & (\speed[21]~5_combout\ & (\Add2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => \speed[21]~5_combout\,
	datac => \Add2~31_combout\,
	datad => \LessThan2~9_combout\,
	combout => \speed[20]~19_combout\);

-- Location: LCCOMB_X39_Y22_N4
\speed[15]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[15]~23_combout\ = (\Add2~21_combout\ & ((\LessThan2~9_combout\) # ((!\btn1~input_o\)))) # (!\Add2~21_combout\ & (((!\btn1~input_o\ & !\speed[21]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~21_combout\,
	datab => \LessThan2~9_combout\,
	datac => \btn1~input_o\,
	datad => \speed[21]~5_combout\,
	combout => \speed[15]~23_combout\);

-- Location: LCCOMB_X39_Y22_N30
\speed[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[10]~28_combout\ = (\Add2~11_combout\ & ((\speed[21]~5_combout\) # ((\btn1~input_o\)))) # (!\Add2~11_combout\ & (((\btn1~input_o\ & !\LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~11_combout\,
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \speed[10]~28_combout\);

-- Location: IOOBUF_X0_Y20_N9
\LEDs[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDs[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDs[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDs[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDs[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDs[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDs[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDs[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDs[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[8]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDs[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[9]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\LED_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(0),
	o => \LED_data[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\LED_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(1),
	o => \LED_data[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\LED_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(3),
	o => \LED_data[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: LCCOMB_X35_Y22_N16
\temp~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\pb1~input_o\ & (((buf(8))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => buf(8),
	datac => buf(0),
	datad => \pb1~input_o\,
	combout => \temp~10_combout\);

-- Location: IOIBUF_X0_Y23_N1
\btn1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn1,
	o => \btn1~input_o\);

-- Location: LCCOMB_X37_Y25_N24
\Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = (speed(14) & ((\btn1~input_o\ & (!\Add2~18\)) # (!\btn1~input_o\ & (\Add2~18\ & VCC)))) # (!speed(14) & ((\btn1~input_o\ & ((\Add2~18\) # (GND))) # (!\btn1~input_o\ & (!\Add2~18\))))
-- \Add2~20\ = CARRY((speed(14) & (\btn1~input_o\ & !\Add2~18\)) # (!speed(14) & ((\btn1~input_o\) # (!\Add2~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(14),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~18\,
	combout => \Add2~19_combout\,
	cout => \Add2~20\);

-- Location: IOIBUF_X0_Y23_N15
\btn2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn2,
	o => \btn2~input_o\);

-- Location: LCCOMB_X37_Y25_N0
\speed[24]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[24]~4_combout\ = (\speed[21]~6_combout\ & (\Add2~39_combout\)) # (!\speed[21]~6_combout\ & ((\btn1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~39_combout\,
	datab => \btn1~input_o\,
	datad => \speed[21]~6_combout\,
	combout => \speed[24]~4_combout\);

-- Location: FF_X37_Y25_N1
\speed[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[24]~4_combout\,
	asdata => speed(24),
	sload => \ALT_INV_speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(24));

-- Location: LCCOMB_X39_Y22_N28
\speed[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[10]~29_combout\ = (\speed[31]~9_combout\ & (!\speed[10]~28_combout\)) # (!\speed[31]~9_combout\ & ((speed(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[10]~28_combout\,
	datac => speed(10),
	datad => \speed[31]~9_combout\,
	combout => \speed[10]~29_combout\);

-- Location: FF_X39_Y22_N29
\speed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(10));

-- Location: LCCOMB_X37_Y25_N6
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = speed(5) $ (VCC)
-- \Add2~2\ = CARRY(speed(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => speed(5),
	datad => VCC,
	combout => \Add2~1_combout\,
	cout => \Add2~2\);

-- Location: LCCOMB_X39_Y22_N22
\Add2~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~59_combout\ = (\btn1~input_o\ & (((\Add2~1_combout\ & \LessThan2~9_combout\)))) # (!\btn1~input_o\ & (((\Add2~1_combout\)) # (!\speed[21]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => \speed[21]~5_combout\,
	datac => \Add2~1_combout\,
	datad => \LessThan2~9_combout\,
	combout => \Add2~59_combout\);

-- Location: FF_X39_Y22_N23
\speed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~59_combout\,
	ena => \speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(5));

-- Location: LCCOMB_X36_Y25_N14
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (speed(17)) # ((speed(18)) # ((speed(10)) # (speed(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(17),
	datab => speed(18),
	datac => speed(10),
	datad => speed(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X39_Y22_N8
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\Add2~7_combout\) # ((\btn1~input_o\ & ((!\LessThan2~9_combout\))) # (!\btn1~input_o\ & (!\speed[21]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~7_combout\,
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \Add2~56_combout\);

-- Location: FF_X39_Y22_N9
\speed[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	ena => \speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(8));

-- Location: LCCOMB_X39_Y22_N12
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Add2~3_combout\ & ((\btn1~input_o\ & ((\LessThan2~9_combout\))) # (!\btn1~input_o\ & (\speed[21]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \Add2~58_combout\);

-- Location: FF_X39_Y22_N13
\speed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	ena => \speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(6));

-- Location: LCCOMB_X39_Y22_N18
\Add2~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~57_combout\ = ((\btn1~input_o\ & ((!\LessThan2~9_combout\))) # (!\btn1~input_o\ & (!\speed[21]~5_combout\))) # (!\Add2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \Add2~57_combout\);

-- Location: FF_X39_Y22_N19
\speed[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~57_combout\,
	ena => \speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(7));

-- Location: LCCOMB_X39_Y22_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (speed(9) & (speed(8) & (!speed(6) & speed(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(9),
	datab => speed(8),
	datac => speed(6),
	datad => speed(7),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X37_Y24_N24
\Add2~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~51_combout\ = (speed(30) & ((\btn1~input_o\ & (!\Add2~50\)) # (!\btn1~input_o\ & (\Add2~50\ & VCC)))) # (!speed(30) & ((\btn1~input_o\ & ((\Add2~50\) # (GND))) # (!\btn1~input_o\ & (!\Add2~50\))))
-- \Add2~52\ = CARRY((speed(30) & (\btn1~input_o\ & !\Add2~50\)) # (!speed(30) & ((\btn1~input_o\) # (!\Add2~50\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(30),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~50\,
	combout => \Add2~51_combout\,
	cout => \Add2~52\);

-- Location: LCCOMB_X37_Y24_N28
\speed[30]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[30]~11_combout\ = (\speed[31]~9_combout\ & (\speed[21]~6_combout\ & (\Add2~51_combout\))) # (!\speed[31]~9_combout\ & (((speed(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~51_combout\,
	datac => speed(30),
	datad => \speed[31]~9_combout\,
	combout => \speed[30]~11_combout\);

-- Location: FF_X37_Y24_N29
\speed[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[30]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(30));

-- Location: LCCOMB_X39_Y22_N2
\speed[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[20]~20_combout\ = (\speed[31]~9_combout\ & (!\speed[20]~19_combout\)) # (!\speed[31]~9_combout\ & ((speed(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[20]~19_combout\,
	datac => speed(20),
	datad => \speed[31]~9_combout\,
	combout => \speed[20]~20_combout\);

-- Location: FF_X39_Y22_N3
\speed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(20));

-- Location: LCCOMB_X37_Y24_N0
\Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (speed(18) & ((\btn1~input_o\ & (\Add2~26\ & VCC)) # (!\btn1~input_o\ & (!\Add2~26\)))) # (!speed(18) & ((\btn1~input_o\ & (!\Add2~26\)) # (!\btn1~input_o\ & ((\Add2~26\) # (GND)))))
-- \Add2~28\ = CARRY((speed(18) & (!\btn1~input_o\ & !\Add2~26\)) # (!speed(18) & ((!\Add2~26\) # (!\btn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(18),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~26\,
	combout => \Add2~27_combout\,
	cout => \Add2~28\);

-- Location: LCCOMB_X37_Y24_N2
\Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = ((speed(19) $ (\btn1~input_o\ $ (!\Add2~28\)))) # (GND)
-- \Add2~30\ = CARRY((speed(19) & (!\btn1~input_o\ & !\Add2~28\)) # (!speed(19) & ((!\Add2~28\) # (!\btn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(19),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~28\,
	combout => \Add2~29_combout\,
	cout => \Add2~30\);

-- Location: LCCOMB_X37_Y24_N8
\Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (\btn1~input_o\ & ((speed(22) & (!\Add2~34\)) # (!speed(22) & ((\Add2~34\) # (GND))))) # (!\btn1~input_o\ & ((speed(22) & (\Add2~34\ & VCC)) # (!speed(22) & (!\Add2~34\))))
-- \Add2~36\ = CARRY((\btn1~input_o\ & ((!\Add2~34\) # (!speed(22)))) # (!\btn1~input_o\ & (!speed(22) & !\Add2~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(22),
	datad => VCC,
	cin => \Add2~34\,
	combout => \Add2~35_combout\,
	cout => \Add2~36\);

-- Location: LCCOMB_X36_Y25_N4
\speed[22]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[22]~18_combout\ = (\speed[31]~9_combout\ & (\speed[21]~6_combout\ & (\Add2~35_combout\))) # (!\speed[31]~9_combout\ & (((speed(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~35_combout\,
	datac => speed(22),
	datad => \speed[31]~9_combout\,
	combout => \speed[22]~18_combout\);

-- Location: FF_X36_Y25_N5
\speed[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[22]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(22));

-- Location: LCCOMB_X37_Y24_N10
\Add2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~37_combout\ = ((\btn1~input_o\ $ (speed(23) $ (!\Add2~36\)))) # (GND)
-- \Add2~38\ = CARRY((\btn1~input_o\ & (!speed(23) & !\Add2~36\)) # (!\btn1~input_o\ & ((!\Add2~36\) # (!speed(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(23),
	datad => VCC,
	cin => \Add2~36\,
	combout => \Add2~37_combout\,
	cout => \Add2~38\);

-- Location: LCCOMB_X36_Y25_N26
\speed[23]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[23]~17_combout\ = (\speed[31]~9_combout\ & (((!\Add2~37_combout\)) # (!\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~37_combout\,
	datac => speed(23),
	datad => \speed[31]~9_combout\,
	combout => \speed[23]~17_combout\);

-- Location: FF_X36_Y25_N27
\speed[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(23));

-- Location: LCCOMB_X37_Y24_N14
\Add2~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = ((\btn1~input_o\ $ (speed(25) $ (\Add2~40\)))) # (GND)
-- \Add2~42\ = CARRY((\btn1~input_o\ & (speed(25) & !\Add2~40\)) # (!\btn1~input_o\ & ((speed(25)) # (!\Add2~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(25),
	datad => VCC,
	cin => \Add2~40\,
	combout => \Add2~41_combout\,
	cout => \Add2~42\);

-- Location: LCCOMB_X40_Y23_N2
\speed[25]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[25]~16_combout\ = (\speed[31]~9_combout\ & (\Add2~41_combout\ & ((\speed[21]~6_combout\)))) # (!\speed[31]~9_combout\ & (((speed(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[31]~9_combout\,
	datab => \Add2~41_combout\,
	datac => speed(25),
	datad => \speed[21]~6_combout\,
	combout => \speed[25]~16_combout\);

-- Location: FF_X40_Y23_N3
\speed[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[25]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(25));

-- Location: LCCOMB_X38_Y24_N30
\speed[26]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[26]~15_combout\ = (\speed[31]~9_combout\ & (\Add2~43_combout\ & (\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~43_combout\,
	datab => \speed[21]~6_combout\,
	datac => speed(26),
	datad => \speed[31]~9_combout\,
	combout => \speed[26]~15_combout\);

-- Location: FF_X38_Y24_N31
\speed[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[26]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(26));

-- Location: LCCOMB_X40_Y23_N22
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!speed(28) & (!speed(25) & (!speed(27) & !speed(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(28),
	datab => speed(25),
	datac => speed(27),
	datad => speed(26),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X40_Y23_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!speed(29) & (!speed(30) & (\LessThan2~3_combout\ & !speed(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(29),
	datab => speed(30),
	datac => \LessThan2~3_combout\,
	datad => speed(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X36_Y25_N10
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (speed(13) & (speed(16) & !speed(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(13),
	datab => speed(16),
	datad => speed(31),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y23_N16
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\LessThan1~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y23_N18
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\) # (((\Equal1~0_combout\) # (!\Equal0~5_combout\)) # (!speed(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => speed(24),
	datac => \Equal1~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X40_Y23_N4
\speed[31]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[31]~7_combout\ = (\btn1~input_o\ & ((\btn2~input_o\) # ((!\LessThan2~9_combout\ & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \btn2~input_o\,
	datac => \btn1~input_o\,
	datad => \Equal1~2_combout\,
	combout => \speed[31]~7_combout\);

-- Location: LCCOMB_X38_Y25_N4
\speed[15]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[15]~24_combout\ = (\speed[31]~9_combout\ & (!\speed[15]~23_combout\)) # (!\speed[31]~9_combout\ & ((speed(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[15]~23_combout\,
	datac => speed(15),
	datad => \speed[31]~9_combout\,
	combout => \speed[15]~24_combout\);

-- Location: FF_X38_Y25_N5
\speed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(15));

-- Location: LCCOMB_X37_Y25_N2
\speed[21]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[21]~3_combout\ = (\speed[21]~6_combout\ & (\Add2~33_combout\)) # (!\speed[21]~6_combout\ & ((\btn1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~33_combout\,
	datab => \btn1~input_o\,
	datad => \speed[21]~6_combout\,
	combout => \speed[21]~3_combout\);

-- Location: FF_X37_Y25_N3
\speed[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[21]~3_combout\,
	asdata => speed(21),
	sload => \ALT_INV_speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(21));

-- Location: LCCOMB_X40_Y23_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!speed(21) & !speed(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => speed(21),
	datad => speed(24),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y25_N6
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ((speed(15)) # ((!\Equal0~0_combout\) # (!speed(18)))) # (!speed(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(17),
	datab => speed(15),
	datac => speed(18),
	datad => \Equal0~0_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X37_Y25_N4
\speed[31]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[31]~8_combout\ = (!\btn1~input_o\ & ((\Equal0~6_combout\) # ((\Equal0~7_combout\) # (!\Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \btn1~input_o\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \speed[31]~8_combout\);

-- Location: LCCOMB_X40_Y23_N6
\speed[31]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[31]~9_combout\ = (!\speed[31]~7_combout\ & (!\LessThan0~52_combout\ & ((\speed[21]~5_combout\) # (!\speed[31]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~5_combout\,
	datab => \speed[31]~7_combout\,
	datac => \LessThan0~52_combout\,
	datad => \speed[31]~8_combout\,
	combout => \speed[31]~9_combout\);

-- Location: LCCOMB_X36_Y25_N18
\speed[14]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[14]~25_combout\ = (\speed[31]~9_combout\ & (\speed[21]~6_combout\ & (\Add2~19_combout\))) # (!\speed[31]~9_combout\ & (((speed(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~19_combout\,
	datac => speed(14),
	datad => \speed[31]~9_combout\,
	combout => \speed[14]~25_combout\);

-- Location: FF_X36_Y25_N19
\speed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[14]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(14));

-- Location: LCCOMB_X39_Y22_N24
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (speed(9)) # ((speed(10)) # ((speed(7) & !speed(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(9),
	datab => speed(7),
	datac => speed(8),
	datad => speed(10),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y25_N20
\Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (speed(12) & ((\btn1~input_o\ & ((\Add2~14\) # (GND))) # (!\btn1~input_o\ & (!\Add2~14\)))) # (!speed(12) & ((\btn1~input_o\ & (!\Add2~14\)) # (!\btn1~input_o\ & (\Add2~14\ & VCC))))
-- \Add2~16\ = CARRY((speed(12) & ((\btn1~input_o\) # (!\Add2~14\))) # (!speed(12) & (\btn1~input_o\ & !\Add2~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(12),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~14\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

-- Location: LCCOMB_X36_Y25_N22
\speed[12]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[12]~27_combout\ = (\speed[31]~9_combout\ & (((!\Add2~15_combout\)) # (!\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~15_combout\,
	datac => speed(12),
	datad => \speed[31]~9_combout\,
	combout => \speed[12]~27_combout\);

-- Location: FF_X36_Y25_N23
\speed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[12]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(12));

-- Location: LCCOMB_X37_Y25_N18
\Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = ((speed(11) $ (\btn1~input_o\ $ (\Add2~12\)))) # (GND)
-- \Add2~14\ = CARRY((speed(11) & ((!\Add2~12\) # (!\btn1~input_o\))) # (!speed(11) & (!\btn1~input_o\ & !\Add2~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(11),
	datab => \btn1~input_o\,
	datad => VCC,
	cin => \Add2~12\,
	combout => \Add2~13_combout\,
	cout => \Add2~14\);

-- Location: LCCOMB_X36_Y25_N8
\speed[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[11]~0_combout\ = (\speed[21]~6_combout\ & ((\Add2~13_combout\))) # (!\speed[21]~6_combout\ & (\btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => \Add2~13_combout\,
	datad => \speed[21]~6_combout\,
	combout => \speed[11]~0_combout\);

-- Location: FF_X36_Y25_N9
\speed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[11]~0_combout\,
	asdata => speed(11),
	sload => \ALT_INV_speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(11));

-- Location: LCCOMB_X39_Y22_N26
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (speed(12)) # ((\LessThan2~0_combout\ & !speed(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => speed(12),
	datad => speed(11),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X40_Y23_N28
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (speed(15)) # ((!speed(13) & (!speed(14) & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(13),
	datab => speed(14),
	datac => speed(15),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X40_Y23_N12
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~8_combout\) # ((speed(31)) # ((\LessThan2~6_combout\ & \LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~8_combout\,
	datab => speed(31),
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X39_Y22_N6
\Add2~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~55_combout\ = ((\btn1~input_o\ & ((!\LessThan2~9_combout\))) # (!\btn1~input_o\ & (!\speed[21]~5_combout\))) # (!\Add2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~9_combout\,
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \Add2~55_combout\);

-- Location: FF_X39_Y22_N7
\speed[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~55_combout\,
	ena => \speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(9));

-- Location: LCCOMB_X37_Y25_N22
\Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = ((\btn1~input_o\ $ (speed(13) $ (!\Add2~16\)))) # (GND)
-- \Add2~18\ = CARRY((\btn1~input_o\ & ((speed(13)) # (!\Add2~16\))) # (!\btn1~input_o\ & (speed(13) & !\Add2~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(13),
	datad => VCC,
	cin => \Add2~16\,
	combout => \Add2~17_combout\,
	cout => \Add2~18\);

-- Location: LCCOMB_X36_Y25_N12
\speed[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[13]~26_combout\ = (\speed[31]~9_combout\ & (((\Add2~17_combout\)) # (!\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~17_combout\,
	datac => speed(13),
	datad => \speed[31]~9_combout\,
	combout => \speed[13]~26_combout\);

-- Location: FF_X36_Y25_N13
\speed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(13));

-- Location: LCCOMB_X37_Y25_N28
\Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\btn1~input_o\ & ((speed(16) & (\Add2~22\ & VCC)) # (!speed(16) & (!\Add2~22\)))) # (!\btn1~input_o\ & ((speed(16) & (!\Add2~22\)) # (!speed(16) & ((\Add2~22\) # (GND)))))
-- \Add2~24\ = CARRY((\btn1~input_o\ & (!speed(16) & !\Add2~22\)) # (!\btn1~input_o\ & ((!\Add2~22\) # (!speed(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(16),
	datad => VCC,
	cin => \Add2~22\,
	combout => \Add2~23_combout\,
	cout => \Add2~24\);

-- Location: LCCOMB_X36_Y25_N24
\speed[16]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[16]~22_combout\ = (\speed[31]~9_combout\ & (((\Add2~23_combout\)) # (!\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~23_combout\,
	datac => speed(16),
	datad => \speed[31]~9_combout\,
	combout => \speed[16]~22_combout\);

-- Location: FF_X36_Y25_N25
\speed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[16]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(16));

-- Location: LCCOMB_X37_Y25_N30
\Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = ((\btn1~input_o\ $ (speed(17) $ (!\Add2~24\)))) # (GND)
-- \Add2~26\ = CARRY((\btn1~input_o\ & ((speed(17)) # (!\Add2~24\))) # (!\btn1~input_o\ & (speed(17) & !\Add2~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(17),
	datad => VCC,
	cin => \Add2~24\,
	combout => \Add2~25_combout\,
	cout => \Add2~26\);

-- Location: LCCOMB_X38_Y25_N2
\speed[17]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[17]~1_combout\ = (\speed[21]~6_combout\ & ((\Add2~25_combout\))) # (!\speed[21]~6_combout\ & (!\btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => \Add2~25_combout\,
	datad => \speed[21]~6_combout\,
	combout => \speed[17]~1_combout\);

-- Location: FF_X38_Y25_N3
\speed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[17]~1_combout\,
	asdata => speed(17),
	sload => \ALT_INV_speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(17));

-- Location: LCCOMB_X38_Y25_N0
\speed[18]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[18]~2_combout\ = (\speed[21]~6_combout\ & ((\Add2~27_combout\))) # (!\speed[21]~6_combout\ & (!\btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => \Add2~27_combout\,
	datad => \speed[21]~6_combout\,
	combout => \speed[18]~2_combout\);

-- Location: FF_X38_Y25_N1
\speed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[18]~2_combout\,
	asdata => speed(18),
	sload => \ALT_INV_speed[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(18));

-- Location: LCCOMB_X40_Y23_N8
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!speed(29) & !speed(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(29),
	datac => speed(30),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X40_Y23_N20
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\LessThan2~3_combout\ & (\LessThan2~4_combout\ & (\Equal0~0_combout\ & !speed(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Equal0~0_combout\,
	datad => speed(22),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X40_Y23_N30
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!speed(16) & (!speed(18) & (!speed(17) & \LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(16),
	datab => speed(18),
	datac => speed(17),
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X36_Y25_N30
\speed[19]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[19]~21_combout\ = (\speed[31]~9_combout\ & (((!\Add2~29_combout\)) # (!\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~29_combout\,
	datac => speed(19),
	datad => \speed[31]~9_combout\,
	combout => \speed[19]~21_combout\);

-- Location: FF_X36_Y25_N31
\speed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[19]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(19));

-- Location: LCCOMB_X36_Y25_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (speed(23) & (!speed(14) & (speed(19) & speed(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(23),
	datab => speed(14),
	datac => speed(19),
	datad => speed(12),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y25_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!speed(11) & (speed(10) & speed(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => speed(11),
	datac => speed(10),
	datad => speed(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X36_Y25_N28
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (speed(13)) # (((!\Equal0~1_combout\) # (!speed(15))) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(13),
	datab => \LessThan1~0_combout\,
	datac => speed(15),
	datad => \Equal0~1_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X39_Y22_N20
\speed[21]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[21]~5_combout\ = (!speed(31) & ((\LessThan1~1_combout\) # (!\LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => speed(31),
	datac => \LessThan2~6_combout\,
	datad => \LessThan1~1_combout\,
	combout => \speed[21]~5_combout\);

-- Location: LCCOMB_X39_Y22_N14
\speed[21]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[21]~6_combout\ = (\btn1~input_o\ & ((\LessThan2~9_combout\))) # (!\btn1~input_o\ & (\speed[21]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed[21]~5_combout\,
	datac => \btn1~input_o\,
	datad => \LessThan2~9_combout\,
	combout => \speed[21]~6_combout\);

-- Location: LCCOMB_X38_Y24_N28
\speed[27]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[27]~14_combout\ = (\speed[31]~9_combout\ & (\Add2~45_combout\ & (\speed[21]~6_combout\))) # (!\speed[31]~9_combout\ & (((speed(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~45_combout\,
	datab => \speed[21]~6_combout\,
	datac => speed(27),
	datad => \speed[31]~9_combout\,
	combout => \speed[27]~14_combout\);

-- Location: FF_X38_Y24_N29
\speed[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[27]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(27));

-- Location: LCCOMB_X37_Y24_N20
\Add2~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~47_combout\ = (\btn1~input_o\ & ((speed(28) & (!\Add2~46\)) # (!speed(28) & ((\Add2~46\) # (GND))))) # (!\btn1~input_o\ & ((speed(28) & (\Add2~46\ & VCC)) # (!speed(28) & (!\Add2~46\))))
-- \Add2~48\ = CARRY((\btn1~input_o\ & ((!\Add2~46\) # (!speed(28)))) # (!\btn1~input_o\ & (!speed(28) & !\Add2~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btn1~input_o\,
	datab => speed(28),
	datad => VCC,
	cin => \Add2~46\,
	combout => \Add2~47_combout\,
	cout => \Add2~48\);

-- Location: LCCOMB_X37_Y24_N30
\speed[28]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[28]~13_combout\ = (\speed[31]~9_combout\ & (\speed[21]~6_combout\ & (\Add2~47_combout\))) # (!\speed[31]~9_combout\ & (((speed(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~47_combout\,
	datac => speed(28),
	datad => \speed[31]~9_combout\,
	combout => \speed[28]~13_combout\);

-- Location: FF_X37_Y24_N31
\speed[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[28]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(28));

-- Location: LCCOMB_X37_Y24_N26
\Add2~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~53_combout\ = speed(31) $ (\Add2~52\ $ (\btn1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(31),
	datad => \btn1~input_o\,
	cin => \Add2~52\,
	combout => \Add2~53_combout\);

-- Location: LCCOMB_X40_Y23_N24
\speed[31]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed[31]~10_combout\ = (\speed[31]~9_combout\ & (\speed[21]~6_combout\ & (\Add2~53_combout\))) # (!\speed[31]~9_combout\ & (((speed(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[21]~6_combout\,
	datab => \Add2~53_combout\,
	datac => speed(31),
	datad => \speed[31]~9_combout\,
	combout => \speed[31]~10_combout\);

-- Location: FF_X40_Y23_N25
\speed[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \speed[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => speed(31));

-- Location: LCCOMB_X39_Y25_N0
\count[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

-- Location: FF_X39_Y25_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~32_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X39_Y25_N2
\count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~34_combout\ = (count(1) & (!\count[0]~33\)) # (!count(1) & ((\count[0]~33\) # (GND)))
-- \count[1]~35\ = CARRY((!\count[0]~33\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~34_combout\,
	cout => \count[1]~35\);

-- Location: FF_X39_Y25_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~34_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X39_Y25_N4
\count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~36_combout\ = (count(2) & (\count[1]~35\ $ (GND))) # (!count(2) & (!\count[1]~35\ & VCC))
-- \count[2]~37\ = CARRY((count(2) & !\count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~35\,
	combout => \count[2]~36_combout\,
	cout => \count[2]~37\);

-- Location: FF_X39_Y25_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~36_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X39_Y25_N8
\count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~40_combout\ = (count(4) & (\count[3]~39\ $ (GND))) # (!count(4) & (!\count[3]~39\ & VCC))
-- \count[4]~41\ = CARRY((count(4) & !\count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~39\,
	combout => \count[4]~40_combout\,
	cout => \count[4]~41\);

-- Location: FF_X39_Y25_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~40_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X39_Y25_N14
\count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~46_combout\ = (count(7) & (!\count[6]~45\)) # (!count(7) & ((\count[6]~45\) # (GND)))
-- \count[7]~47\ = CARRY((!\count[6]~45\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~45\,
	combout => \count[7]~46_combout\,
	cout => \count[7]~47\);

-- Location: FF_X39_Y25_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~46_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X39_Y25_N16
\count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~48_combout\ = (count(8) & (\count[7]~47\ $ (GND))) # (!count(8) & (!\count[7]~47\ & VCC))
-- \count[8]~49\ = CARRY((count(8) & !\count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~47\,
	combout => \count[8]~48_combout\,
	cout => \count[8]~49\);

-- Location: FF_X39_Y25_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~48_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X39_Y25_N18
\count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~50_combout\ = (count(9) & (!\count[8]~49\)) # (!count(9) & ((\count[8]~49\) # (GND)))
-- \count[9]~51\ = CARRY((!\count[8]~49\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~49\,
	combout => \count[9]~50_combout\,
	cout => \count[9]~51\);

-- Location: FF_X39_Y25_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~50_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X39_Y25_N20
\count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~52_combout\ = (count(10) & (\count[9]~51\ $ (GND))) # (!count(10) & (!\count[9]~51\ & VCC))
-- \count[10]~53\ = CARRY((count(10) & !\count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~51\,
	combout => \count[10]~52_combout\,
	cout => \count[10]~53\);

-- Location: FF_X39_Y25_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~52_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X39_Y25_N24
\count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~56_combout\ = (count(12) & (\count[11]~55\ $ (GND))) # (!count(12) & (!\count[11]~55\ & VCC))
-- \count[12]~57\ = CARRY((count(12) & !\count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~55\,
	combout => \count[12]~56_combout\,
	cout => \count[12]~57\);

-- Location: FF_X39_Y25_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~56_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X39_Y25_N28
\count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~60_combout\ = (count(14) & (\count[13]~59\ $ (GND))) # (!count(14) & (!\count[13]~59\ & VCC))
-- \count[14]~61\ = CARRY((count(14) & !\count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~59\,
	combout => \count[14]~60_combout\,
	cout => \count[14]~61\);

-- Location: FF_X39_Y25_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~60_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X39_Y24_N0
\count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~64_combout\ = (count(16) & (\count[15]~63\ $ (GND))) # (!count(16) & (!\count[15]~63\ & VCC))
-- \count[16]~65\ = CARRY((count(16) & !\count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~63\,
	combout => \count[16]~64_combout\,
	cout => \count[16]~65\);

-- Location: FF_X39_Y24_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~64_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X39_Y24_N2
\count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~66_combout\ = (count(17) & (!\count[16]~65\)) # (!count(17) & ((\count[16]~65\) # (GND)))
-- \count[17]~67\ = CARRY((!\count[16]~65\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~65\,
	combout => \count[17]~66_combout\,
	cout => \count[17]~67\);

-- Location: FF_X39_Y24_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~66_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X39_Y24_N4
\count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~68_combout\ = (count(18) & (\count[17]~67\ $ (GND))) # (!count(18) & (!\count[17]~67\ & VCC))
-- \count[18]~69\ = CARRY((count(18) & !\count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~67\,
	combout => \count[18]~68_combout\,
	cout => \count[18]~69\);

-- Location: FF_X39_Y24_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~68_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X39_Y24_N8
\count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~72_combout\ = (count(20) & (\count[19]~71\ $ (GND))) # (!count(20) & (!\count[19]~71\ & VCC))
-- \count[20]~73\ = CARRY((count(20) & !\count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~71\,
	combout => \count[20]~72_combout\,
	cout => \count[20]~73\);

-- Location: FF_X39_Y24_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~72_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X39_Y24_N10
\count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~74_combout\ = (count(21) & (!\count[20]~73\)) # (!count(21) & ((\count[20]~73\) # (GND)))
-- \count[21]~75\ = CARRY((!\count[20]~73\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~73\,
	combout => \count[21]~74_combout\,
	cout => \count[21]~75\);

-- Location: LCCOMB_X39_Y24_N12
\count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~76_combout\ = (count(22) & (\count[21]~75\ $ (GND))) # (!count(22) & (!\count[21]~75\ & VCC))
-- \count[22]~77\ = CARRY((count(22) & !\count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~75\,
	combout => \count[22]~76_combout\,
	cout => \count[22]~77\);

-- Location: LCCOMB_X39_Y24_N14
\count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~78_combout\ = (count(23) & (!\count[22]~77\)) # (!count(23) & ((\count[22]~77\) # (GND)))
-- \count[23]~79\ = CARRY((!\count[22]~77\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~77\,
	combout => \count[23]~78_combout\,
	cout => \count[23]~79\);

-- Location: FF_X39_Y24_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~78_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X39_Y24_N16
\count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~80_combout\ = (count(24) & (\count[23]~79\ $ (GND))) # (!count(24) & (!\count[23]~79\ & VCC))
-- \count[24]~81\ = CARRY((count(24) & !\count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~79\,
	combout => \count[24]~80_combout\,
	cout => \count[24]~81\);

-- Location: FF_X39_Y24_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~80_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X39_Y24_N18
\count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~82_combout\ = (count(25) & (!\count[24]~81\)) # (!count(25) & ((\count[24]~81\) # (GND)))
-- \count[25]~83\ = CARRY((!\count[24]~81\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~81\,
	combout => \count[25]~82_combout\,
	cout => \count[25]~83\);

-- Location: FF_X39_Y24_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~82_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X39_Y24_N20
\count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[26]~84_combout\ = (count(26) & (\count[25]~83\ $ (GND))) # (!count(26) & (!\count[25]~83\ & VCC))
-- \count[26]~85\ = CARRY((count(26) & !\count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~83\,
	combout => \count[26]~84_combout\,
	cout => \count[26]~85\);

-- Location: FF_X39_Y24_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~84_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X39_Y24_N22
\count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[27]~86_combout\ = (count(27) & (!\count[26]~85\)) # (!count(27) & ((\count[26]~85\) # (GND)))
-- \count[27]~87\ = CARRY((!\count[26]~85\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~85\,
	combout => \count[27]~86_combout\,
	cout => \count[27]~87\);

-- Location: LCCOMB_X39_Y24_N24
\count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[28]~88_combout\ = (count(28) & (\count[27]~87\ $ (GND))) # (!count(28) & (!\count[27]~87\ & VCC))
-- \count[28]~89\ = CARRY((count(28) & !\count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~87\,
	combout => \count[28]~88_combout\,
	cout => \count[28]~89\);

-- Location: FF_X39_Y24_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~88_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: FF_X39_Y24_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~90_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X39_Y24_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~86_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: FF_X39_Y24_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~76_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: FF_X39_Y24_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~74_combout\,
	sclr => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X38_Y25_N6
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!count(5) & speed(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => speed(5),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X38_Y25_N8
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((count(6) & ((!\LessThan0~1_cout\) # (!speed(6)))) # (!count(6) & (!speed(6) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => speed(6),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X38_Y25_N10
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((speed(7) & (!count(7) & !\LessThan0~3_cout\)) # (!speed(7) & ((!\LessThan0~3_cout\) # (!count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(7),
	datab => count(7),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X38_Y25_N12
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((speed(8) & (count(8) & !\LessThan0~5_cout\)) # (!speed(8) & ((count(8)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(8),
	datab => count(8),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X38_Y25_N14
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((speed(9) & (!count(9) & !\LessThan0~7_cout\)) # (!speed(9) & ((!\LessThan0~7_cout\) # (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(9),
	datab => count(9),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X38_Y25_N16
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((speed(10) & ((count(10)) # (!\LessThan0~9_cout\))) # (!speed(10) & (count(10) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(10),
	datab => count(10),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X38_Y25_N18
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((count(11) & (speed(11) & !\LessThan0~11_cout\)) # (!count(11) & ((speed(11)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => speed(11),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X38_Y25_N20
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((speed(12) & ((count(12)) # (!\LessThan0~13_cout\))) # (!speed(12) & (count(12) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(12),
	datab => count(12),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X38_Y25_N22
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((count(13) & (speed(13) & !\LessThan0~15_cout\)) # (!count(13) & ((speed(13)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => speed(13),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X38_Y25_N24
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((speed(14) & (count(14) & !\LessThan0~17_cout\)) # (!speed(14) & ((count(14)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(14),
	datab => count(14),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X38_Y25_N26
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((count(15) & (!speed(15) & !\LessThan0~19_cout\)) # (!count(15) & ((!\LessThan0~19_cout\) # (!speed(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => speed(15),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X38_Y25_N28
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((speed(16) & (count(16) & !\LessThan0~21_cout\)) # (!speed(16) & ((count(16)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(16),
	datab => count(16),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X38_Y25_N30
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((count(17) & (speed(17) & !\LessThan0~23_cout\)) # (!count(17) & ((speed(17)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => speed(17),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X38_Y24_N0
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((count(18) & ((!\LessThan0~25_cout\) # (!speed(18)))) # (!count(18) & (!speed(18) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => speed(18),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X38_Y24_N2
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((count(19) & (!speed(19) & !\LessThan0~27_cout\)) # (!count(19) & ((!\LessThan0~27_cout\) # (!speed(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => speed(19),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X38_Y24_N4
\LessThan0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((speed(20) & ((count(20)) # (!\LessThan0~29_cout\))) # (!speed(20) & (count(20) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(20),
	datab => count(20),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X38_Y24_N6
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((speed(21) & ((!\LessThan0~31_cout\) # (!count(21)))) # (!speed(21) & (!count(21) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(21),
	datab => count(21),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X38_Y24_N8
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((speed(22) & (count(22) & !\LessThan0~33_cout\)) # (!speed(22) & ((count(22)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(22),
	datab => count(22),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X38_Y24_N10
\LessThan0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((speed(23) & (!count(23) & !\LessThan0~35_cout\)) # (!speed(23) & ((!\LessThan0~35_cout\) # (!count(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(23),
	datab => count(23),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X38_Y24_N12
\LessThan0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((speed(24) & (count(24) & !\LessThan0~37_cout\)) # (!speed(24) & ((count(24)) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(24),
	datab => count(24),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X38_Y24_N14
\LessThan0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((speed(25) & ((!\LessThan0~39_cout\) # (!count(25)))) # (!speed(25) & (!count(25) & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(25),
	datab => count(25),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X38_Y24_N16
\LessThan0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((count(26) & ((!\LessThan0~41_cout\) # (!speed(26)))) # (!count(26) & (!speed(26) & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => speed(26),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X38_Y24_N18
\LessThan0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((speed(27) & ((!\LessThan0~43_cout\) # (!count(27)))) # (!speed(27) & (!count(27) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(27),
	datab => count(27),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X38_Y24_N20
\LessThan0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((speed(28) & (count(28) & !\LessThan0~45_cout\)) # (!speed(28) & ((count(28)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(28),
	datab => count(28),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X38_Y24_N22
\LessThan0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((speed(29) & ((!\LessThan0~47_cout\) # (!count(29)))) # (!speed(29) & (!count(29) & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => speed(29),
	datab => count(29),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X38_Y24_N24
\LessThan0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((count(30) & ((!\LessThan0~49_cout\) # (!speed(30)))) # (!count(30) & (!speed(30) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => speed(30),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X38_Y24_N26
\LessThan0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~52_combout\ = (count(31) & ((!speed(31)) # (!\LessThan0~51_cout\))) # (!count(31) & (!\LessThan0~51_cout\ & !speed(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datad => speed(31),
	cin => \LessThan0~51_cout\,
	combout => \LessThan0~52_combout\);

-- Location: LCCOMB_X35_Y22_N20
\temp[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[0]~5_combout\ = (!\LessThan0~52_combout\ & ((!\pb1~input_o\) # (!\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datac => \LessThan0~52_combout\,
	datad => \pb1~input_o\,
	combout => \temp[0]~5_combout\);

-- Location: FF_X35_Y22_N17
\temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~10_combout\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(9));

-- Location: LCCOMB_X35_Y22_N30
\buf[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[9]~feeder_combout\ = temp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(9),
	combout => \buf[9]~feeder_combout\);

-- Location: FF_X35_Y22_N31
\buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[9]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(9));

-- Location: LCCOMB_X35_Y22_N6
\temp~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\pb1~input_o\ & (((buf(7))))) # (!\pb1~input_o\ & (\pb2~input_o\ & ((buf(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => buf(7),
	datac => buf(9),
	datad => \pb1~input_o\,
	combout => \temp~9_combout\);

-- Location: FF_X35_Y22_N7
\temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~9_combout\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(8));

-- Location: LCCOMB_X20_Y24_N12
\buf[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[8]~feeder_combout\ = temp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(8),
	combout => \buf[8]~feeder_combout\);

-- Location: FF_X20_Y24_N13
\buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[8]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(8));

-- Location: LCCOMB_X35_Y22_N10
\temp~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\pb1~input_o\ & (((buf(6))))) # (!\pb1~input_o\ & (buf(8) & (\pb2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => buf(8),
	datac => \pb2~input_o\,
	datad => buf(6),
	combout => \temp~8_combout\);

-- Location: FF_X35_Y22_N11
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~8_combout\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LCCOMB_X20_Y24_N18
\buf[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[7]~feeder_combout\ = temp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(7),
	combout => \buf[7]~feeder_combout\);

-- Location: FF_X20_Y24_N19
\buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[7]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(7));

-- Location: LCCOMB_X35_Y22_N2
\temp~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (\pb1~input_o\ & (((buf(5))))) # (!\pb1~input_o\ & (\pb2~input_o\ & (buf(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => buf(7),
	datac => buf(5),
	datad => \pb1~input_o\,
	combout => \temp~7_combout\);

-- Location: FF_X35_Y22_N3
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~7_combout\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X20_Y24_N0
\buf[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[6]~feeder_combout\ = temp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(6),
	combout => \buf[6]~feeder_combout\);

-- Location: FF_X20_Y24_N1
\buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[6]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(6));

-- Location: LCCOMB_X35_Y22_N22
\temp~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\pb1~input_o\ & (buf(4))) # (!\pb1~input_o\ & (((\pb2~input_o\ & buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb1~input_o\,
	datab => buf(4),
	datac => \pb2~input_o\,
	datad => buf(6),
	combout => \temp~6_combout\);

-- Location: FF_X35_Y22_N23
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp~6_combout\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X20_Y24_N30
\buf[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[5]~feeder_combout\ = temp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(5),
	combout => \buf[5]~feeder_combout\);

-- Location: FF_X20_Y24_N31
\buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[5]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(5));

-- Location: IOIBUF_X0_Y27_N22
\LED_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(4),
	o => \LED_data[4]~input_o\);

-- Location: LCCOMB_X35_Y22_N8
\temp[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[4]~4_combout\ = (\pb2~input_o\ & (buf(5))) # (!\pb2~input_o\ & ((\LED_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => buf(5),
	datad => \LED_data[4]~input_o\,
	combout => \temp[4]~4_combout\);

-- Location: FF_X35_Y22_N9
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[4]~4_combout\,
	asdata => buf(3),
	sload => \pb1~input_o\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X20_Y24_N28
\buf[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[4]~feeder_combout\ = temp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(4),
	combout => \buf[4]~feeder_combout\);

-- Location: FF_X20_Y24_N29
\buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[4]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(4));

-- Location: LCCOMB_X35_Y22_N28
\temp[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[3]~3_combout\ = (\pb2~input_o\ & ((buf(4)))) # (!\pb2~input_o\ & (\LED_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \LED_data[3]~input_o\,
	datad => buf(4),
	combout => \temp[3]~3_combout\);

-- Location: FF_X35_Y22_N29
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[3]~3_combout\,
	asdata => buf(2),
	sload => \pb1~input_o\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X35_Y22_N14
\buf[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[3]~feeder_combout\ = temp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(3),
	combout => \buf[3]~feeder_combout\);

-- Location: FF_X35_Y22_N15
\buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[3]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(3));

-- Location: IOIBUF_X0_Y25_N22
\LED_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_data(2),
	o => \LED_data[2]~input_o\);

-- Location: LCCOMB_X35_Y22_N12
\temp[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[2]~2_combout\ = (\pb2~input_o\ & (buf(3))) # (!\pb2~input_o\ & ((\LED_data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => buf(3),
	datad => \LED_data[2]~input_o\,
	combout => \temp[2]~2_combout\);

-- Location: FF_X35_Y22_N13
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[2]~2_combout\,
	asdata => buf(1),
	sload => \pb1~input_o\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X35_Y22_N18
\buf[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[2]~feeder_combout\ = temp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(2),
	combout => \buf[2]~feeder_combout\);

-- Location: FF_X35_Y22_N19
\buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[2]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(2));

-- Location: LCCOMB_X35_Y22_N0
\temp[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~1_combout\ = (\pb2~input_o\ & ((buf(2)))) # (!\pb2~input_o\ & (\LED_data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \LED_data[1]~input_o\,
	datad => buf(2),
	combout => \temp[1]~1_combout\);

-- Location: FF_X35_Y22_N1
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[1]~1_combout\,
	asdata => buf(0),
	sload => \pb1~input_o\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X35_Y22_N4
\buf[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[1]~feeder_combout\ = temp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(1),
	combout => \buf[1]~feeder_combout\);

-- Location: FF_X35_Y22_N5
\buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[1]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(1));

-- Location: LCCOMB_X35_Y22_N24
\temp[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[0]~0_combout\ = (\pb2~input_o\ & ((buf(1)))) # (!\pb2~input_o\ & (\LED_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \LED_data[0]~input_o\,
	datad => buf(1),
	combout => \temp[0]~0_combout\);

-- Location: FF_X35_Y22_N25
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[0]~0_combout\,
	asdata => buf(9),
	sload => \pb1~input_o\,
	ena => \temp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X35_Y22_N26
\buf[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \buf[0]~feeder_combout\ = temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp(0),
	combout => \buf[0]~feeder_combout\);

-- Location: FF_X35_Y22_N27
\buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buf[0]~feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buf(0));

-- Location: LCCOMB_X20_Y24_N24
\LEDs[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[0]~reg0feeder_combout\ = buf(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(0),
	combout => \LEDs[0]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N25
\LEDs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[0]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[0]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N2
\LEDs[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[1]~reg0feeder_combout\ = buf(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(1),
	combout => \LEDs[1]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N3
\LEDs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[1]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[1]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N20
\LEDs[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[2]~reg0feeder_combout\ = buf(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(2),
	combout => \LEDs[2]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N21
\LEDs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[2]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[2]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N14
\LEDs[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[3]~reg0feeder_combout\ = buf(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => buf(3),
	combout => \LEDs[3]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N15
\LEDs[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[3]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[3]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N8
\LEDs[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[4]~reg0feeder_combout\ = buf(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(4),
	combout => \LEDs[4]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N9
\LEDs[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[4]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[4]~reg0_q\);

-- Location: FF_X20_Y24_N11
\LEDs[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => buf(5),
	sload => VCC,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[5]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N4
\LEDs[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[6]~reg0feeder_combout\ = buf(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(6),
	combout => \LEDs[6]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N5
\LEDs[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[6]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[6]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N22
\LEDs[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[7]~reg0feeder_combout\ = buf(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(7),
	combout => \LEDs[7]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N23
\LEDs[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[7]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[7]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N16
\LEDs[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[8]~reg0feeder_combout\ = buf(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(8),
	combout => \LEDs[8]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N17
\LEDs[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[8]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[8]~reg0_q\);

-- Location: LCCOMB_X20_Y24_N26
\LEDs[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDs[9]~reg0feeder_combout\ = buf(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => buf(9),
	combout => \LEDs[9]~reg0feeder_combout\);

-- Location: FF_X20_Y24_N27
\LEDs[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LEDs[9]~reg0feeder_combout\,
	ena => \ALT_INV_LessThan0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[9]~reg0_q\);

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;
END structure;


