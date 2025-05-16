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

-- DATE "03/01/2024 17:52:53"

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

ENTITY 	lab02_3 IS
    PORT (
	pin_name : OUT std_logic;
	i0 : IN std_logic;
	s1 : IN std_logic;
	s0 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i1 : IN std_logic
	);
END lab02_3;

-- Design Ports Information
-- pin_name	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i3	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab02_3 IS
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
SIGNAL ww_i0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL \i0~input_o\ : std_logic;
SIGNAL \pin_name~output_o\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \i3~input_o\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;

BEGIN

pin_name <= ww_pin_name;
ww_i0 <= i0;
ww_s1 <= s1;
ww_s0 <= s0;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i1 <= i1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X9_Y29_N22
\i0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0,
	o => \i0~input_o\);

-- Location: IOOBUF_X0_Y8_N16
\pin_name~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~1_combout\,
	devoe => ww_devoe,
	o => \pin_name~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\i2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\i1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\s0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\s1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\s0~input_o\ & (((\i1~input_o\) # (\s1~input_o\)))) # (!\s0~input_o\ & (\i0~input_o\ & ((!\s1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~input_o\,
	datab => \i1~input_o\,
	datac => \s0~input_o\,
	datad => \s1~input_o\,
	combout => \inst11~0_combout\);

-- Location: IOIBUF_X1_Y29_N1
\i3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i3,
	o => \i3~input_o\);

-- Location: LCCOMB_X1_Y28_N2
\inst11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = (\inst11~0_combout\ & (((\i3~input_o\) # (!\s1~input_o\)))) # (!\inst11~0_combout\ & (\i2~input_o\ & ((\s1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2~input_o\,
	datab => \inst11~0_combout\,
	datac => \i3~input_o\,
	datad => \s1~input_o\,
	combout => \inst11~1_combout\);

ww_pin_name <= \pin_name~output_o\;
END structure;


