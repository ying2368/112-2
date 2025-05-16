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

-- DATE "03/23/2024 22:16:36"

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

ENTITY 	s1111442_lab05_bonus IS
    PORT (
	Preset : IN std_logic;
	Clear : IN std_logic;
	Sin : IN std_logic;
	CLK : IN std_logic;
	Q : OUT std_logic_vector(0 TO 3)
	);
END s1111442_lab05_bonus;

-- Design Ports Information
-- Q[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Preset	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sin	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1111442_lab05_bonus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Preset : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Sin : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic_vector(0 TO 3);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \JKFF3|tmp~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Preset~input_o\ : std_logic;
SIGNAL \JKFF3|tmp~1_combout\ : std_logic;
SIGNAL \JKFF3|tmp~latch_combout\ : std_logic;
SIGNAL \Sin~input_o\ : std_logic;
SIGNAL \JKFF0|tmp~data_lut_combout\ : std_logic;
SIGNAL \JKFF3|tmp~clear_lut_combout\ : std_logic;
SIGNAL \JKFF3|tmp~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \JKFF0|tmp~_emulated_q\ : std_logic;
SIGNAL \JKFF0|tmp~head_lut_combout\ : std_logic;
SIGNAL \JKFF1|tmp~data_lut_combout\ : std_logic;
SIGNAL \JKFF1|tmp~_emulated_q\ : std_logic;
SIGNAL \JKFF1|tmp~head_lut_combout\ : std_logic;
SIGNAL \JKFF2|tmp~data_lut_combout\ : std_logic;
SIGNAL \JKFF2|tmp~_emulated_q\ : std_logic;
SIGNAL \JKFF2|tmp~head_lut_combout\ : std_logic;
SIGNAL \JKFF3|tmp~data_lut_combout\ : std_logic;
SIGNAL \JKFF3|tmp~_emulated_q\ : std_logic;
SIGNAL \JKFF3|tmp~head_lut_combout\ : std_logic;
SIGNAL \JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

ww_Preset <= Preset;
ww_Clear <= Clear;
ww_Sin <= Sin;
ww_CLK <= CLK;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\JKFF3|tmp~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \JKFF3|tmp~clear_lut_combout\);
\JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\ <= NOT \JKFF3|tmp~clear_lutclkctrl_outclk\;

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

-- Location: IOOBUF_X0_Y22_N16
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF3|tmp~head_lut_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF2|tmp~head_lut_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF1|tmp~head_lut_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JKFF0|tmp~head_lut_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X1_Y29_N8
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\Preset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Preset,
	o => \Preset~input_o\);

-- Location: LCCOMB_X2_Y22_N22
\JKFF3|tmp~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF3|tmp~1_combout\ = (!\Preset~input_o\ & \Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Preset~input_o\,
	datad => \Clear~input_o\,
	combout => \JKFF3|tmp~1_combout\);

-- Location: LCCOMB_X2_Y22_N20
\JKFF3|tmp~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF3|tmp~latch_combout\ = (\Clear~input_o\ & ((\JKFF3|tmp~1_combout\) # (\JKFF3|tmp~latch_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datac => \JKFF3|tmp~1_combout\,
	datad => \JKFF3|tmp~latch_combout\,
	combout => \JKFF3|tmp~latch_combout\);

-- Location: IOIBUF_X3_Y0_N1
\Sin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sin,
	o => \Sin~input_o\);

-- Location: LCCOMB_X2_Y22_N26
\JKFF0|tmp~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF0|tmp~data_lut_combout\ = \JKFF3|tmp~latch_combout\ $ (\Sin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JKFF3|tmp~latch_combout\,
	datad => \Sin~input_o\,
	combout => \JKFF0|tmp~data_lut_combout\);

-- Location: LCCOMB_X2_Y22_N12
\JKFF3|tmp~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF3|tmp~clear_lut_combout\ = (\JKFF3|tmp~1_combout\) # (!\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datac => \JKFF3|tmp~1_combout\,
	combout => \JKFF3|tmp~clear_lut_combout\);

-- Location: CLKCTRL_G3
\JKFF3|tmp~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \JKFF3|tmp~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \JKFF3|tmp~clear_lutclkctrl_outclk\);

-- Location: FF_X2_Y22_N25
\JKFF0|tmp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \JKFF0|tmp~data_lut_combout\,
	clrn => \JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF0|tmp~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N24
\JKFF0|tmp~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF0|tmp~head_lut_combout\ = (\Clear~input_o\ & ((\JKFF3|tmp~1_combout\) # (\JKFF3|tmp~latch_combout\ $ (\JKFF0|tmp~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JKFF3|tmp~1_combout\,
	datab => \JKFF3|tmp~latch_combout\,
	datac => \JKFF0|tmp~_emulated_q\,
	datad => \Clear~input_o\,
	combout => \JKFF0|tmp~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N28
\JKFF1|tmp~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF1|tmp~data_lut_combout\ = \JKFF3|tmp~latch_combout\ $ (\JKFF0|tmp~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JKFF3|tmp~latch_combout\,
	datad => \JKFF0|tmp~head_lut_combout\,
	combout => \JKFF1|tmp~data_lut_combout\);

-- Location: FF_X2_Y22_N29
\JKFF1|tmp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JKFF1|tmp~data_lut_combout\,
	clrn => \JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF1|tmp~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N6
\JKFF1|tmp~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF1|tmp~head_lut_combout\ = (\Clear~input_o\ & ((\JKFF3|tmp~1_combout\) # (\JKFF3|tmp~latch_combout\ $ (\JKFF1|tmp~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \JKFF3|tmp~latch_combout\,
	datac => \JKFF3|tmp~1_combout\,
	datad => \JKFF1|tmp~_emulated_q\,
	combout => \JKFF1|tmp~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N16
\JKFF2|tmp~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF2|tmp~data_lut_combout\ = \JKFF3|tmp~latch_combout\ $ (\JKFF1|tmp~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JKFF3|tmp~latch_combout\,
	datad => \JKFF1|tmp~head_lut_combout\,
	combout => \JKFF2|tmp~data_lut_combout\);

-- Location: FF_X2_Y22_N17
\JKFF2|tmp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JKFF2|tmp~data_lut_combout\,
	clrn => \JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF2|tmp~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N10
\JKFF2|tmp~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF2|tmp~head_lut_combout\ = (\Clear~input_o\ & ((\JKFF3|tmp~1_combout\) # (\JKFF3|tmp~latch_combout\ $ (\JKFF2|tmp~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \JKFF3|tmp~latch_combout\,
	datac => \JKFF3|tmp~1_combout\,
	datad => \JKFF2|tmp~_emulated_q\,
	combout => \JKFF2|tmp~head_lut_combout\);

-- Location: LCCOMB_X2_Y22_N0
\JKFF3|tmp~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF3|tmp~data_lut_combout\ = \JKFF3|tmp~latch_combout\ $ (\JKFF2|tmp~head_lut_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JKFF3|tmp~latch_combout\,
	datad => \JKFF2|tmp~head_lut_combout\,
	combout => \JKFF3|tmp~data_lut_combout\);

-- Location: FF_X2_Y22_N1
\JKFF3|tmp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \JKFF3|tmp~data_lut_combout\,
	clrn => \JKFF3|ALT_INV_tmp~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JKFF3|tmp~_emulated_q\);

-- Location: LCCOMB_X2_Y22_N2
\JKFF3|tmp~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \JKFF3|tmp~head_lut_combout\ = (\Clear~input_o\ & ((\JKFF3|tmp~1_combout\) # (\JKFF3|tmp~latch_combout\ $ (\JKFF3|tmp~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => \JKFF3|tmp~latch_combout\,
	datac => \JKFF3|tmp~1_combout\,
	datad => \JKFF3|tmp~_emulated_q\,
	combout => \JKFF3|tmp~head_lut_combout\);

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


