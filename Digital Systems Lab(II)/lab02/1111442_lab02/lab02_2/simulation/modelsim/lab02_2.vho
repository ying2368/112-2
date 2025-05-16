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

-- DATE "03/01/2024 17:54:19"

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

ENTITY 	lab02_2 IS
    PORT (
	q0 : OUT std_logic;
	a1 : IN std_logic;
	a5 : IN std_logic;
	a7 : IN std_logic;
	a3 : IN std_logic;
	q1 : OUT std_logic;
	a6 : IN std_logic;
	a2 : IN std_logic;
	q3 : OUT std_logic;
	a4 : IN std_logic;
	a0 : IN std_logic
	);
END lab02_2;

-- Design Ports Information
-- q0	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q3	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a7	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a6	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab02_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a7 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_a6 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_q3 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \q0~output_o\ : std_logic;
SIGNAL \q1~output_o\ : std_logic;
SIGNAL \q3~output_o\ : std_logic;
SIGNAL \a5~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \a7~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \a6~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \a4~input_o\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;

BEGIN

q0 <= ww_q0;
ww_a1 <= a1;
ww_a5 <= a5;
ww_a7 <= a7;
ww_a3 <= a3;
q1 <= ww_q1;
ww_a6 <= a6;
ww_a2 <= a2;
q3 <= ww_q3;
ww_a4 <= a4;
ww_a0 <= a0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y21_N2
\q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \q0~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => \q1~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\q3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~0_combout\,
	devoe => ww_devoe,
	o => \q3~output_o\);

-- Location: IOIBUF_X0_Y20_N8
\a5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5,
	o => \a5~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\a7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a7,
	o => \a7~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\a5~input_o\) # ((\a1~input_o\) # ((\a3~input_o\) # (\a7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5~input_o\,
	datab => \a1~input_o\,
	datac => \a3~input_o\,
	datad => \a7~input_o\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X1_Y29_N8
\a6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a6,
	o => \a6~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X1_Y21_N10
\inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\a3~input_o\) # ((\a6~input_o\) # ((\a2~input_o\) # (\a7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3~input_o\,
	datab => \a6~input_o\,
	datac => \a2~input_o\,
	datad => \a7~input_o\,
	combout => \inst8~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\a4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4,
	o => \a4~input_o\);

-- Location: LCCOMB_X1_Y21_N4
\inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\a5~input_o\) # ((\a6~input_o\) # ((\a4~input_o\) # (\a7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5~input_o\,
	datab => \a6~input_o\,
	datac => \a4~input_o\,
	datad => \a7~input_o\,
	combout => \inst9~0_combout\);

-- Location: IOIBUF_X0_Y10_N1
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

ww_q0 <= \q0~output_o\;

ww_q1 <= \q1~output_o\;

ww_q3 <= \q3~output_o\;
END structure;


