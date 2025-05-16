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

-- DATE "03/15/2024 11:47:03"

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

ENTITY 	work3 IS
    PORT (
	a0 : IN std_logic;
	a1 : IN std_logic;
	a2 : IN std_logic;
	a3 : IN std_logic;
	a4 : IN std_logic;
	a5 : IN std_logic;
	a6 : IN std_logic;
	a7 : IN std_logic;
	en : IN std_logic;
	y0 : OUT std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic
	);
END work3;

-- Design Ports Information
-- a0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a7	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a6	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF work3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a6 : std_logic;
SIGNAL ww_a7 : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \y0~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \a5~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \a7~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \y0~0_combout\ : std_logic;
SIGNAL \y0~1_combout\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \a6~input_o\ : std_logic;
SIGNAL \y1~0_combout\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \y2~0_combout\ : std_logic;
SIGNAL \y2~1_combout\ : std_logic;

BEGIN

ww_a0 <= a0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_a3 <= a3;
ww_a4 <= a4;
ww_a5 <= a5;
ww_a6 <= a6;
ww_a7 <= a7;
ww_en <= en;
y0 <= ww_y0;
y1 <= ww_y1;
y2 <= ww_y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y0_N9
\y0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y0~1_combout\,
	devoe => ww_devoe,
	o => \y0~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\y1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y1~0_combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\y2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y2~1_combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\a5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5,
	o => \a5~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\a7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a7,
	o => \a7~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\y0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y0~0_combout\ = (!\a7~input_o\ & !\a3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a7~input_o\,
	datad => \a3~input_o\,
	combout => \y0~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\y0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y0~1_combout\ = (\en~input_o\ & ((\a5~input_o\) # ((\a1~input_o\) # (!\y0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \a5~input_o\,
	datac => \a1~input_o\,
	datad => \y0~0_combout\,
	combout => \y0~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\a6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a6,
	o => \a6~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\y1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y1~0_combout\ = (\en~input_o\ & ((\a2~input_o\) # ((\a6~input_o\) # (!\y0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \a2~input_o\,
	datac => \a6~input_o\,
	datad => \y0~0_combout\,
	combout => \y1~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\a4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: LCCOMB_X1_Y25_N6
\y2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y2~0_combout\ = (\a7~input_o\) # ((\a4~input_o\) # ((\a6~input_o\) # (\a5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7~input_o\,
	datab => \a4~input_o\,
	datac => \a6~input_o\,
	datad => \a5~input_o\,
	combout => \y2~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\y2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y2~1_combout\ = (\en~input_o\ & \y2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datad => \y2~0_combout\,
	combout => \y2~1_combout\);

-- Location: IOIBUF_X0_Y22_N8
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

ww_y0 <= \y0~output_o\;

ww_y1 <= \y1~output_o\;

ww_y2 <= \y2~output_o\;
END structure;


