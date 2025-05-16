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

-- DATE "03/29/2024 17:46:27"

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

ENTITY 	s1111442_lab06_bonus IS
    PORT (
	CLK : IN std_logic;
	rst : IN std_logic;
	Din : IN std_logic;
	match : OUT std_logic;
	str_out : OUT std_logic_vector(0 TO 2)
	);
END s1111442_lab06_bonus;

-- Design Ports Information
-- match	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- str_out[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1111442_lab06_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_match : std_logic;
SIGNAL ww_str_out : std_logic_vector(0 TO 2);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \match~output_o\ : std_logic;
SIGNAL \str_out[2]~output_o\ : std_logic;
SIGNAL \str_out[1]~output_o\ : std_logic;
SIGNAL \str_out[0]~output_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.s0~q\ : std_logic;
SIGNAL \next_state.s2~0_combout\ : std_logic;
SIGNAL \current_state.s2~q\ : std_logic;
SIGNAL \next_state.s3~0_combout\ : std_logic;
SIGNAL \current_state.s3~q\ : std_logic;
SIGNAL \Din~input_o\ : std_logic;
SIGNAL \single_output~0_combout\ : std_logic;
SIGNAL \next_state.s1~0_combout\ : std_logic;
SIGNAL \current_state.s1~q\ : std_logic;
SIGNAL \present_state.s1~q\ : std_logic;
SIGNAL \present_state.s0~feeder_combout\ : std_logic;
SIGNAL \present_state.s0~q\ : std_logic;
SIGNAL \str_out~3_combout\ : std_logic;
SIGNAL \present_state.s2~q\ : std_logic;
SIGNAL \str_out~4_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \str_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \str_out[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_str_out~3_combout\ : std_logic;
SIGNAL \ALT_INV_str_out~4_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_rst <= rst;
ww_Din <= Din;
match <= ww_match;
str_out <= ww_str_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_str_out~3_combout\ <= NOT \str_out~3_combout\;
\ALT_INV_str_out~4_combout\ <= NOT \str_out~4_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N2
\match~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \single_output~0_combout\,
	devoe => ww_devoe,
	o => \match~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\str_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_str_out~3_combout\,
	devoe => ww_devoe,
	o => \str_out[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\str_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_str_out~4_combout\,
	devoe => ww_devoe,
	o => \str_out[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\str_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \str_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \str_out[0]~output_o\);

-- Location: LCCOMB_X2_Y2_N0
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Din~input_o\) # (\current_state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din~input_o\,
	datac => \current_state.s2~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X2_Y2_N1
\current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s0~q\);

-- Location: LCCOMB_X2_Y2_N4
\next_state.s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s2~0_combout\ = (\Din~input_o\ & (!\current_state.s3~q\ & \current_state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din~input_o\,
	datac => \current_state.s3~q\,
	datad => \current_state.s0~q\,
	combout => \next_state.s2~0_combout\);

-- Location: FF_X2_Y2_N5
\current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.s2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s2~q\);

-- Location: LCCOMB_X2_Y2_N8
\next_state.s3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s3~0_combout\ = (!\Din~input_o\ & \current_state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din~input_o\,
	datac => \current_state.s2~q\,
	combout => \next_state.s3~0_combout\);

-- Location: FF_X2_Y2_N9
\current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.s3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s3~q\);

-- Location: IOIBUF_X0_Y3_N8
\Din~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din,
	o => \Din~input_o\);

-- Location: LCCOMB_X2_Y2_N10
\single_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \single_output~0_combout\ = (\current_state.s3~q\ & \Din~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s3~q\,
	datad => \Din~input_o\,
	combout => \single_output~0_combout\);

-- Location: LCCOMB_X2_Y2_N30
\next_state.s1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.s1~0_combout\ = (\Din~input_o\ & ((\current_state.s3~q\) # (!\current_state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din~input_o\,
	datac => \current_state.s3~q\,
	datad => \current_state.s0~q\,
	combout => \next_state.s1~0_combout\);

-- Location: FF_X2_Y2_N31
\current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.s1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s1~q\);

-- Location: FF_X2_Y2_N13
\present_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \current_state.s1~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s1~q\);

-- Location: LCCOMB_X2_Y2_N22
\present_state.s0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \present_state.s0~feeder_combout\ = \current_state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.s0~q\,
	combout => \present_state.s0~feeder_combout\);

-- Location: FF_X2_Y2_N23
\present_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \present_state.s0~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s0~q\);

-- Location: LCCOMB_X2_Y2_N12
\str_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \str_out~3_combout\ = (\present_state.s1~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s1~q\,
	datad => \present_state.s0~q\,
	combout => \str_out~3_combout\);

-- Location: FF_X2_Y2_N25
\present_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \current_state.s2~q\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.s2~q\);

-- Location: LCCOMB_X2_Y2_N24
\str_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \str_out~4_combout\ = (\present_state.s2~q\) # (!\present_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.s2~q\,
	datad => \present_state.s0~q\,
	combout => \str_out~4_combout\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y2_N18
\str_out[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \str_out[0]~reg0feeder_combout\ = \Din~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din~input_o\,
	combout => \str_out[0]~reg0feeder_combout\);

-- Location: FF_X2_Y2_N19
\str_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \str_out[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \str_out[0]~reg0_q\);

ww_match <= \match~output_o\;

ww_str_out(2) <= \str_out[2]~output_o\;

ww_str_out(1) <= \str_out[1]~output_o\;

ww_str_out(0) <= \str_out[0]~output_o\;
END structure;


