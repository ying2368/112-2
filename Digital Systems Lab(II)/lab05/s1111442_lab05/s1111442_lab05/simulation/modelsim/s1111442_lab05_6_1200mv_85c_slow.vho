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

-- DATE "03/23/2024 20:43:24"

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

ENTITY 	s1111442_lab05 IS
    PORT (
	CLK : IN std_logic;
	Din : IN std_logic;
	s : OUT std_logic_vector(0 TO 7)
	);
END s1111442_lab05;

-- Design Ports Information
-- s[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF s1111442_lab05 IS
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
SIGNAL ww_Din : std_logic;
SIGNAL ww_s : std_logic_vector(0 TO 7);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din~input_o\ : std_logic;
SIGNAL \d0~q\ : std_logic;
SIGNAL \adder_gen:0:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:0:d~q\ : std_logic;
SIGNAL \adder_gen:1:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:1:d~q\ : std_logic;
SIGNAL \adder_gen:2:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:2:d~q\ : std_logic;
SIGNAL \adder_gen:3:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:3:d~q\ : std_logic;
SIGNAL \adder_gen:4:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:4:d~q\ : std_logic;
SIGNAL \adder_gen:5:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:5:d~q\ : std_logic;
SIGNAL \adder_gen:6:d~feeder_combout\ : std_logic;
SIGNAL \adder_gen:6:d~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Din <= Din;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X7_Y0_N23
\s[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:6:d~q\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\s[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:5:d~q\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\s[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:4:d~q\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\s[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:3:d~q\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\s[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:2:d~q\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\s[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:1:d~q\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\s[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_gen:0:d~q\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\s[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0~q\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

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

-- Location: IOIBUF_X0_Y23_N1
\Din~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din,
	o => \Din~input_o\);

-- Location: FF_X1_Y26_N7
d0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Din~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d0~q\);

-- Location: LCCOMB_X1_Y26_N12
\adder_gen:0:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:0:d~feeder_combout\ = \d0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d0~q\,
	combout => \adder_gen:0:d~feeder_combout\);

-- Location: FF_X1_Y26_N13
\adder_gen:0:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:0:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:0:d~q\);

-- Location: LCCOMB_X1_Y26_N10
\adder_gen:1:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:1:d~feeder_combout\ = \adder_gen:0:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adder_gen:0:d~q\,
	combout => \adder_gen:1:d~feeder_combout\);

-- Location: FF_X1_Y26_N11
\adder_gen:1:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:1:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:1:d~q\);

-- Location: LCCOMB_X1_Y26_N0
\adder_gen:2:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:2:d~feeder_combout\ = \adder_gen:1:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adder_gen:1:d~q\,
	combout => \adder_gen:2:d~feeder_combout\);

-- Location: FF_X1_Y26_N1
\adder_gen:2:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:2:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:2:d~q\);

-- Location: LCCOMB_X1_Y26_N30
\adder_gen:3:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:3:d~feeder_combout\ = \adder_gen:2:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adder_gen:2:d~q\,
	combout => \adder_gen:3:d~feeder_combout\);

-- Location: FF_X1_Y26_N31
\adder_gen:3:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:3:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:3:d~q\);

-- Location: LCCOMB_X1_Y26_N28
\adder_gen:4:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:4:d~feeder_combout\ = \adder_gen:3:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adder_gen:3:d~q\,
	combout => \adder_gen:4:d~feeder_combout\);

-- Location: FF_X1_Y26_N29
\adder_gen:4:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:4:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:4:d~q\);

-- Location: LCCOMB_X1_Y26_N2
\adder_gen:5:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:5:d~feeder_combout\ = \adder_gen:4:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adder_gen:4:d~q\,
	combout => \adder_gen:5:d~feeder_combout\);

-- Location: FF_X1_Y26_N3
\adder_gen:5:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:5:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:5:d~q\);

-- Location: LCCOMB_X1_Y26_N24
\adder_gen:6:d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder_gen:6:d~feeder_combout\ = \adder_gen:5:d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adder_gen:5:d~q\,
	combout => \adder_gen:6:d~feeder_combout\);

-- Location: FF_X1_Y26_N25
\adder_gen:6:d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adder_gen:6:d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder_gen:6:d~q\);

ww_s(7) <= \s[7]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;


