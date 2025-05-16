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

-- DATE "03/01/2024 17:42:38"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab02_1 IS
    PORT (
	pin_name : OUT std_logic;
	enable : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	pin_name40 : OUT std_logic;
	pin_name41 : OUT std_logic;
	pin_name42 : OUT std_logic;
	pin_name43 : OUT std_logic;
	pin_name44 : OUT std_logic;
	pin_name45 : OUT std_logic;
	pin_name46 : OUT std_logic
	);
END lab02_1;

-- Design Ports Information
-- pin_name	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name40	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name41	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name42	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name43	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name44	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name45	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name46	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab02_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_pin_name40 : std_logic;
SIGNAL ww_pin_name41 : std_logic;
SIGNAL ww_pin_name42 : std_logic;
SIGNAL ww_pin_name43 : std_logic;
SIGNAL ww_pin_name44 : std_logic;
SIGNAL ww_pin_name45 : std_logic;
SIGNAL ww_pin_name46 : std_logic;
SIGNAL \pin_name~output_o\ : std_logic;
SIGNAL \pin_name40~output_o\ : std_logic;
SIGNAL \pin_name41~output_o\ : std_logic;
SIGNAL \pin_name42~output_o\ : std_logic;
SIGNAL \pin_name43~output_o\ : std_logic;
SIGNAL \pin_name44~output_o\ : std_logic;
SIGNAL \pin_name45~output_o\ : std_logic;
SIGNAL \pin_name46~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inst32~0_combout\ : std_logic;
SIGNAL \inst32~1_combout\ : std_logic;
SIGNAL \inst32~2_combout\ : std_logic;
SIGNAL \inst32~3_combout\ : std_logic;
SIGNAL \inst32~4_combout\ : std_logic;
SIGNAL \inst32~5_combout\ : std_logic;
SIGNAL \inst32~6_combout\ : std_logic;
SIGNAL \inst32~7_combout\ : std_logic;

BEGIN

pin_name <= ww_pin_name;
ww_enable <= enable;
ww_A <= A;
ww_B <= B;
ww_C <= C;
pin_name40 <= ww_pin_name40;
pin_name41 <= ww_pin_name41;
pin_name42 <= ww_pin_name42;
pin_name43 <= ww_pin_name43;
pin_name44 <= ww_pin_name44;
pin_name45 <= ww_pin_name45;
pin_name46 <= ww_pin_name46;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y26_N16
\pin_name~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~0_combout\,
	devoe => ww_devoe,
	o => \pin_name~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\pin_name40~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~1_combout\,
	devoe => ww_devoe,
	o => \pin_name40~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\pin_name41~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~2_combout\,
	devoe => ww_devoe,
	o => \pin_name41~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\pin_name42~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~3_combout\,
	devoe => ww_devoe,
	o => \pin_name42~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\pin_name43~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~4_combout\,
	devoe => ww_devoe,
	o => \pin_name43~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\pin_name44~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~5_combout\,
	devoe => ww_devoe,
	o => \pin_name44~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\pin_name45~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~6_combout\,
	devoe => ww_devoe,
	o => \pin_name45~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\pin_name46~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~7_combout\,
	devoe => ww_devoe,
	o => \pin_name46~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\inst32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~0_combout\ = (!\B~input_o\ & (!\C~input_o\ & (!\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\inst32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~1_combout\ = (!\B~input_o\ & (!\C~input_o\ & (\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~1_combout\);

-- Location: LCCOMB_X1_Y26_N20
\inst32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~2_combout\ = (\B~input_o\ & (!\C~input_o\ & (!\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~2_combout\);

-- Location: LCCOMB_X1_Y26_N30
\inst32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~3_combout\ = (\B~input_o\ & (!\C~input_o\ & (\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~3_combout\);

-- Location: LCCOMB_X1_Y26_N8
\inst32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~4_combout\ = (!\B~input_o\ & (\C~input_o\ & (!\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~4_combout\);

-- Location: LCCOMB_X1_Y26_N2
\inst32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~5_combout\ = (!\B~input_o\ & (\C~input_o\ & (\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~5_combout\);

-- Location: LCCOMB_X1_Y26_N4
\inst32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~6_combout\ = (\B~input_o\ & (\C~input_o\ & (!\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~6_combout\);

-- Location: LCCOMB_X1_Y26_N14
\inst32~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~7_combout\ = (\B~input_o\ & (\C~input_o\ & (\A~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \enable~input_o\,
	combout => \inst32~7_combout\);

ww_pin_name <= \pin_name~output_o\;

ww_pin_name40 <= \pin_name40~output_o\;

ww_pin_name41 <= \pin_name41~output_o\;

ww_pin_name42 <= \pin_name42~output_o\;

ww_pin_name43 <= \pin_name43~output_o\;

ww_pin_name44 <= \pin_name44~output_o\;

ww_pin_name45 <= \pin_name45~output_o\;

ww_pin_name46 <= \pin_name46~output_o\;
END structure;


