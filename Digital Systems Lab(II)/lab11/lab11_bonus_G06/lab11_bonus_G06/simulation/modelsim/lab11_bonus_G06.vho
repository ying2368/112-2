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

-- DATE "05/17/2024 15:14:59"

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

ENTITY 	lab11_bonus_G06 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	led : OUT std_logic
	);
END lab11_bonus_G06;

-- Design Ports Information
-- led	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF lab11_bonus_G06 IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_count[1]~13_combout\ : std_logic;
SIGNAL \pwm_count[2]~15_combout\ : std_logic;
SIGNAL \pwm_count[9]~29_combout\ : std_logic;
SIGNAL \clk_count[4]~40_combout\ : std_logic;
SIGNAL \clk_count[5]~42_combout\ : std_logic;
SIGNAL \clk_count[14]~60_combout\ : std_logic;
SIGNAL \clk_count[18]~68_combout\ : std_logic;
SIGNAL \clk_count[29]~91\ : std_logic;
SIGNAL \clk_count[30]~92_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_count[0]~31_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clk_count[18]~33_combout\ : std_logic;
SIGNAL \clk_count[0]~32\ : std_logic;
SIGNAL \clk_count[1]~34_combout\ : std_logic;
SIGNAL \clk_count[1]~35\ : std_logic;
SIGNAL \clk_count[2]~37\ : std_logic;
SIGNAL \clk_count[3]~38_combout\ : std_logic;
SIGNAL \clk_count[3]~39\ : std_logic;
SIGNAL \clk_count[4]~41\ : std_logic;
SIGNAL \clk_count[5]~43\ : std_logic;
SIGNAL \clk_count[6]~44_combout\ : std_logic;
SIGNAL \clk_count[6]~45\ : std_logic;
SIGNAL \clk_count[7]~46_combout\ : std_logic;
SIGNAL \clk_count[7]~47\ : std_logic;
SIGNAL \clk_count[8]~48_combout\ : std_logic;
SIGNAL \clk_count[8]~49\ : std_logic;
SIGNAL \clk_count[9]~50_combout\ : std_logic;
SIGNAL \clk_count[9]~51\ : std_logic;
SIGNAL \clk_count[10]~53\ : std_logic;
SIGNAL \clk_count[11]~54_combout\ : std_logic;
SIGNAL \clk_count[11]~55\ : std_logic;
SIGNAL \clk_count[12]~57\ : std_logic;
SIGNAL \clk_count[13]~58_combout\ : std_logic;
SIGNAL \clk_count[13]~59\ : std_logic;
SIGNAL \clk_count[14]~61\ : std_logic;
SIGNAL \clk_count[15]~62_combout\ : std_logic;
SIGNAL \clk_count[15]~63\ : std_logic;
SIGNAL \clk_count[16]~64_combout\ : std_logic;
SIGNAL \clk_count[16]~65\ : std_logic;
SIGNAL \clk_count[17]~66_combout\ : std_logic;
SIGNAL \clk_count[17]~67\ : std_logic;
SIGNAL \clk_count[18]~69\ : std_logic;
SIGNAL \clk_count[19]~70_combout\ : std_logic;
SIGNAL \clk_count[19]~71\ : std_logic;
SIGNAL \clk_count[20]~73\ : std_logic;
SIGNAL \clk_count[21]~75\ : std_logic;
SIGNAL \clk_count[22]~76_combout\ : std_logic;
SIGNAL \clk_count[21]~74_combout\ : std_logic;
SIGNAL \clk_count[20]~72_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clk_count[22]~77\ : std_logic;
SIGNAL \clk_count[23]~78_combout\ : std_logic;
SIGNAL \clk_count[23]~79\ : std_logic;
SIGNAL \clk_count[24]~80_combout\ : std_logic;
SIGNAL \clk_count[24]~81\ : std_logic;
SIGNAL \clk_count[25]~82_combout\ : std_logic;
SIGNAL \clk_count[25]~83\ : std_logic;
SIGNAL \clk_count[26]~84_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clk_count[26]~85\ : std_logic;
SIGNAL \clk_count[27]~86_combout\ : std_logic;
SIGNAL \clk_count[27]~87\ : std_logic;
SIGNAL \clk_count[28]~88_combout\ : std_logic;
SIGNAL \clk_count[28]~89\ : std_logic;
SIGNAL \clk_count[29]~90_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \clk_count[12]~56_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clk_count[2]~36_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_count[10]~52_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \duty[0]~12_combout\ : std_logic;
SIGNAL \duty[7]~27\ : std_logic;
SIGNAL \duty[8]~29\ : std_logic;
SIGNAL \duty[9]~30_combout\ : std_logic;
SIGNAL \duty[8]~28_combout\ : std_logic;
SIGNAL \duty[10]~35_combout\ : std_logic;
SIGNAL \duty[2]~16_combout\ : std_logic;
SIGNAL \duty[1]~14_combout\ : std_logic;
SIGNAL \duty[10]~34_combout\ : std_logic;
SIGNAL \duty[10]~36_combout\ : std_logic;
SIGNAL \duty[10]~37_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \duty[0]~13\ : std_logic;
SIGNAL \duty[1]~15\ : std_logic;
SIGNAL \duty[2]~17\ : std_logic;
SIGNAL \duty[3]~19\ : std_logic;
SIGNAL \duty[4]~21\ : std_logic;
SIGNAL \duty[5]~22_combout\ : std_logic;
SIGNAL \duty[5]~23\ : std_logic;
SIGNAL \duty[6]~24_combout\ : std_logic;
SIGNAL \duty[6]~25\ : std_logic;
SIGNAL \duty[7]~26_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \duty[4]~20_combout\ : std_logic;
SIGNAL \duty[3]~18_combout\ : std_logic;
SIGNAL \duty[10]~11_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \increase~0_combout\ : std_logic;
SIGNAL \increase~1_combout\ : std_logic;
SIGNAL \increase~q\ : std_logic;
SIGNAL \duty[9]~31\ : std_logic;
SIGNAL \duty[10]~32_combout\ : std_logic;
SIGNAL \pwm_count[0]~11_combout\ : std_logic;
SIGNAL \pwm_count[7]~25_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \pwm_count[10]~33_combout\ : std_logic;
SIGNAL \pwm_count[0]~12\ : std_logic;
SIGNAL \pwm_count[1]~14\ : std_logic;
SIGNAL \pwm_count[2]~16\ : std_logic;
SIGNAL \pwm_count[3]~17_combout\ : std_logic;
SIGNAL \pwm_count[3]~18\ : std_logic;
SIGNAL \pwm_count[4]~19_combout\ : std_logic;
SIGNAL \pwm_count[4]~20\ : std_logic;
SIGNAL \pwm_count[5]~21_combout\ : std_logic;
SIGNAL \pwm_count[5]~22\ : std_logic;
SIGNAL \pwm_count[6]~23_combout\ : std_logic;
SIGNAL \pwm_count[6]~24\ : std_logic;
SIGNAL \pwm_count[7]~26\ : std_logic;
SIGNAL \pwm_count[8]~27_combout\ : std_logic;
SIGNAL \pwm_count[8]~28\ : std_logic;
SIGNAL \pwm_count[9]~30\ : std_logic;
SIGNAL \pwm_count[10]~31_combout\ : std_logic;
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
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \led~reg0_q\ : std_logic;
SIGNAL clk_count : std_logic_vector(30 DOWNTO 0);
SIGNAL duty : std_logic_vector(10 DOWNTO 0);
SIGNAL pwm_count : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;

-- Location: FF_X17_Y22_N27
\pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[9]~29_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(9));

-- Location: FF_X17_Y22_N13
\pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[2]~15_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(2));

-- Location: FF_X17_Y22_N11
\pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[1]~13_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(1));

-- Location: LCCOMB_X17_Y22_N10
\pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[1]~13_combout\ = (pwm_count(1) & (!\pwm_count[0]~12\)) # (!pwm_count(1) & ((\pwm_count[0]~12\) # (GND)))
-- \pwm_count[1]~14\ = CARRY((!\pwm_count[0]~12\) # (!pwm_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datad => VCC,
	cin => \pwm_count[0]~12\,
	combout => \pwm_count[1]~13_combout\,
	cout => \pwm_count[1]~14\);

-- Location: LCCOMB_X17_Y22_N12
\pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[2]~15_combout\ = (pwm_count(2) & (\pwm_count[1]~14\ $ (GND))) # (!pwm_count(2) & (!\pwm_count[1]~14\ & VCC))
-- \pwm_count[2]~16\ = CARRY((pwm_count(2) & !\pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datad => VCC,
	cin => \pwm_count[1]~14\,
	combout => \pwm_count[2]~15_combout\,
	cout => \pwm_count[2]~16\);

-- Location: LCCOMB_X17_Y22_N26
\pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[9]~29_combout\ = (pwm_count(9) & (!\pwm_count[8]~28\)) # (!pwm_count(9) & ((\pwm_count[8]~28\) # (GND)))
-- \pwm_count[9]~30\ = CARRY((!\pwm_count[8]~28\) # (!pwm_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(9),
	datad => VCC,
	cin => \pwm_count[8]~28\,
	combout => \pwm_count[9]~29_combout\,
	cout => \pwm_count[9]~30\);

-- Location: FF_X22_Y14_N13
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[5]~42_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: FF_X22_Y14_N11
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[4]~40_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: FF_X22_Y14_N31
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[14]~60_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: FF_X22_Y13_N7
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[18]~68_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: FF_X22_Y13_N31
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[30]~92_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X22_Y14_N10
\clk_count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[4]~40_combout\ = (clk_count(4) & (\clk_count[3]~39\ $ (GND))) # (!clk_count(4) & (!\clk_count[3]~39\ & VCC))
-- \clk_count[4]~41\ = CARRY((clk_count(4) & !\clk_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	datad => VCC,
	cin => \clk_count[3]~39\,
	combout => \clk_count[4]~40_combout\,
	cout => \clk_count[4]~41\);

-- Location: LCCOMB_X22_Y14_N12
\clk_count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[5]~42_combout\ = (clk_count(5) & (!\clk_count[4]~41\)) # (!clk_count(5) & ((\clk_count[4]~41\) # (GND)))
-- \clk_count[5]~43\ = CARRY((!\clk_count[4]~41\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datad => VCC,
	cin => \clk_count[4]~41\,
	combout => \clk_count[5]~42_combout\,
	cout => \clk_count[5]~43\);

-- Location: LCCOMB_X22_Y14_N30
\clk_count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[14]~60_combout\ = (clk_count(14) & (\clk_count[13]~59\ $ (GND))) # (!clk_count(14) & (!\clk_count[13]~59\ & VCC))
-- \clk_count[14]~61\ = CARRY((clk_count(14) & !\clk_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \clk_count[13]~59\,
	combout => \clk_count[14]~60_combout\,
	cout => \clk_count[14]~61\);

-- Location: LCCOMB_X22_Y13_N6
\clk_count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[18]~68_combout\ = (clk_count(18) & (\clk_count[17]~67\ $ (GND))) # (!clk_count(18) & (!\clk_count[17]~67\ & VCC))
-- \clk_count[18]~69\ = CARRY((clk_count(18) & !\clk_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \clk_count[17]~67\,
	combout => \clk_count[18]~68_combout\,
	cout => \clk_count[18]~69\);

-- Location: LCCOMB_X22_Y13_N28
\clk_count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[29]~90_combout\ = (clk_count(29) & (!\clk_count[28]~89\)) # (!clk_count(29) & ((\clk_count[28]~89\) # (GND)))
-- \clk_count[29]~91\ = CARRY((!\clk_count[28]~89\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(29),
	datad => VCC,
	cin => \clk_count[28]~89\,
	combout => \clk_count[29]~90_combout\,
	cout => \clk_count[29]~91\);

-- Location: LCCOMB_X22_Y13_N30
\clk_count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[30]~92_combout\ = clk_count(30) $ (!\clk_count[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	cin => \clk_count[29]~91\,
	combout => \clk_count[30]~92_combout\);

-- Location: LCCOMB_X19_Y22_N0
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (pwm_count(2)) # ((pwm_count(10)) # ((pwm_count(1)) # (pwm_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => pwm_count(10),
	datac => pwm_count(1),
	datad => pwm_count(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X20_Y22_N30
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\increase~q\ & (duty(0))) # (!\increase~q\ & ((\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => \Equal1~2_combout\,
	datad => \increase~q\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_count(5)) # (((clk_count(7)) # (!clk_count(4))) # (!clk_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	datab => clk_count(6),
	datac => clk_count(4),
	datad => clk_count(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y14_N0
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_count(18)) # ((clk_count(19)) # ((clk_count(17)) # (clk_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datab => clk_count(19),
	datac => clk_count(17),
	datad => clk_count(16),
	combout => \Equal0~5_combout\);

-- Location: IOOBUF_X0_Y20_N9
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~reg0_q\,
	devoe => ww_devoe,
	o => \led~output_o\);

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

-- Location: LCCOMB_X22_Y14_N2
\clk_count[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[0]~31_combout\ = clk_count(0) $ (VCC)
-- \clk_count[0]~32\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	datad => VCC,
	combout => \clk_count[0]~31_combout\,
	cout => \clk_count[0]~32\);

-- Location: IOIBUF_X0_Y24_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X21_Y14_N10
\clk_count[18]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[18]~33_combout\ = (!\enable~input_o\) # (!\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \enable~input_o\,
	combout => \clk_count[18]~33_combout\);

-- Location: FF_X22_Y14_N3
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[0]~31_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X22_Y14_N4
\clk_count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[1]~34_combout\ = (clk_count(1) & (!\clk_count[0]~32\)) # (!clk_count(1) & ((\clk_count[0]~32\) # (GND)))
-- \clk_count[1]~35\ = CARRY((!\clk_count[0]~32\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	datad => VCC,
	cin => \clk_count[0]~32\,
	combout => \clk_count[1]~34_combout\,
	cout => \clk_count[1]~35\);

-- Location: FF_X22_Y14_N5
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[1]~34_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X22_Y14_N6
\clk_count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[2]~36_combout\ = (clk_count(2) & (\clk_count[1]~35\ $ (GND))) # (!clk_count(2) & (!\clk_count[1]~35\ & VCC))
-- \clk_count[2]~37\ = CARRY((clk_count(2) & !\clk_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(2),
	datad => VCC,
	cin => \clk_count[1]~35\,
	combout => \clk_count[2]~36_combout\,
	cout => \clk_count[2]~37\);

-- Location: LCCOMB_X22_Y14_N8
\clk_count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[3]~38_combout\ = (clk_count(3) & (!\clk_count[2]~37\)) # (!clk_count(3) & ((\clk_count[2]~37\) # (GND)))
-- \clk_count[3]~39\ = CARRY((!\clk_count[2]~37\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	datad => VCC,
	cin => \clk_count[2]~37\,
	combout => \clk_count[3]~38_combout\,
	cout => \clk_count[3]~39\);

-- Location: FF_X22_Y14_N9
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[3]~38_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X22_Y14_N14
\clk_count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[6]~44_combout\ = (clk_count(6) & (\clk_count[5]~43\ $ (GND))) # (!clk_count(6) & (!\clk_count[5]~43\ & VCC))
-- \clk_count[6]~45\ = CARRY((clk_count(6) & !\clk_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \clk_count[5]~43\,
	combout => \clk_count[6]~44_combout\,
	cout => \clk_count[6]~45\);

-- Location: FF_X22_Y14_N15
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[6]~44_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X22_Y14_N16
\clk_count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[7]~46_combout\ = (clk_count(7) & (!\clk_count[6]~45\)) # (!clk_count(7) & ((\clk_count[6]~45\) # (GND)))
-- \clk_count[7]~47\ = CARRY((!\clk_count[6]~45\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	datad => VCC,
	cin => \clk_count[6]~45\,
	combout => \clk_count[7]~46_combout\,
	cout => \clk_count[7]~47\);

-- Location: FF_X22_Y14_N17
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[7]~46_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X22_Y14_N18
\clk_count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[8]~48_combout\ = (clk_count(8) & (\clk_count[7]~47\ $ (GND))) # (!clk_count(8) & (!\clk_count[7]~47\ & VCC))
-- \clk_count[8]~49\ = CARRY((clk_count(8) & !\clk_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(8),
	datad => VCC,
	cin => \clk_count[7]~47\,
	combout => \clk_count[8]~48_combout\,
	cout => \clk_count[8]~49\);

-- Location: FF_X22_Y14_N19
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[8]~48_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X22_Y14_N20
\clk_count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[9]~50_combout\ = (clk_count(9) & (!\clk_count[8]~49\)) # (!clk_count(9) & ((\clk_count[8]~49\) # (GND)))
-- \clk_count[9]~51\ = CARRY((!\clk_count[8]~49\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \clk_count[8]~49\,
	combout => \clk_count[9]~50_combout\,
	cout => \clk_count[9]~51\);

-- Location: FF_X22_Y14_N21
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[9]~50_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X22_Y14_N22
\clk_count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[10]~52_combout\ = (clk_count(10) & (\clk_count[9]~51\ $ (GND))) # (!clk_count(10) & (!\clk_count[9]~51\ & VCC))
-- \clk_count[10]~53\ = CARRY((clk_count(10) & !\clk_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(10),
	datad => VCC,
	cin => \clk_count[9]~51\,
	combout => \clk_count[10]~52_combout\,
	cout => \clk_count[10]~53\);

-- Location: LCCOMB_X22_Y14_N24
\clk_count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[11]~54_combout\ = (clk_count(11) & (!\clk_count[10]~53\)) # (!clk_count(11) & ((\clk_count[10]~53\) # (GND)))
-- \clk_count[11]~55\ = CARRY((!\clk_count[10]~53\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(11),
	datad => VCC,
	cin => \clk_count[10]~53\,
	combout => \clk_count[11]~54_combout\,
	cout => \clk_count[11]~55\);

-- Location: FF_X22_Y14_N25
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[11]~54_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X22_Y14_N26
\clk_count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[12]~56_combout\ = (clk_count(12) & (\clk_count[11]~55\ $ (GND))) # (!clk_count(12) & (!\clk_count[11]~55\ & VCC))
-- \clk_count[12]~57\ = CARRY((clk_count(12) & !\clk_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datad => VCC,
	cin => \clk_count[11]~55\,
	combout => \clk_count[12]~56_combout\,
	cout => \clk_count[12]~57\);

-- Location: LCCOMB_X22_Y14_N28
\clk_count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[13]~58_combout\ = (clk_count(13) & (!\clk_count[12]~57\)) # (!clk_count(13) & ((\clk_count[12]~57\) # (GND)))
-- \clk_count[13]~59\ = CARRY((!\clk_count[12]~57\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(13),
	datad => VCC,
	cin => \clk_count[12]~57\,
	combout => \clk_count[13]~58_combout\,
	cout => \clk_count[13]~59\);

-- Location: FF_X22_Y14_N29
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[13]~58_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X22_Y13_N0
\clk_count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[15]~62_combout\ = (clk_count(15) & (!\clk_count[14]~61\)) # (!clk_count(15) & ((\clk_count[14]~61\) # (GND)))
-- \clk_count[15]~63\ = CARRY((!\clk_count[14]~61\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(15),
	datad => VCC,
	cin => \clk_count[14]~61\,
	combout => \clk_count[15]~62_combout\,
	cout => \clk_count[15]~63\);

-- Location: FF_X22_Y13_N1
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[15]~62_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X22_Y13_N2
\clk_count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[16]~64_combout\ = (clk_count(16) & (\clk_count[15]~63\ $ (GND))) # (!clk_count(16) & (!\clk_count[15]~63\ & VCC))
-- \clk_count[16]~65\ = CARRY((clk_count(16) & !\clk_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \clk_count[15]~63\,
	combout => \clk_count[16]~64_combout\,
	cout => \clk_count[16]~65\);

-- Location: FF_X22_Y13_N3
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[16]~64_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X22_Y13_N4
\clk_count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[17]~66_combout\ = (clk_count(17) & (!\clk_count[16]~65\)) # (!clk_count(17) & ((\clk_count[16]~65\) # (GND)))
-- \clk_count[17]~67\ = CARRY((!\clk_count[16]~65\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(17),
	datad => VCC,
	cin => \clk_count[16]~65\,
	combout => \clk_count[17]~66_combout\,
	cout => \clk_count[17]~67\);

-- Location: FF_X22_Y13_N5
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[17]~66_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X22_Y13_N8
\clk_count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[19]~70_combout\ = (clk_count(19) & (!\clk_count[18]~69\)) # (!clk_count(19) & ((\clk_count[18]~69\) # (GND)))
-- \clk_count[19]~71\ = CARRY((!\clk_count[18]~69\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(19),
	datad => VCC,
	cin => \clk_count[18]~69\,
	combout => \clk_count[19]~70_combout\,
	cout => \clk_count[19]~71\);

-- Location: FF_X22_Y13_N9
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[19]~70_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X22_Y13_N10
\clk_count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[20]~72_combout\ = (clk_count(20) & (\clk_count[19]~71\ $ (GND))) # (!clk_count(20) & (!\clk_count[19]~71\ & VCC))
-- \clk_count[20]~73\ = CARRY((clk_count(20) & !\clk_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(20),
	datad => VCC,
	cin => \clk_count[19]~71\,
	combout => \clk_count[20]~72_combout\,
	cout => \clk_count[20]~73\);

-- Location: LCCOMB_X22_Y13_N12
\clk_count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[21]~74_combout\ = (clk_count(21) & (!\clk_count[20]~73\)) # (!clk_count(21) & ((\clk_count[20]~73\) # (GND)))
-- \clk_count[21]~75\ = CARRY((!\clk_count[20]~73\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(21),
	datad => VCC,
	cin => \clk_count[20]~73\,
	combout => \clk_count[21]~74_combout\,
	cout => \clk_count[21]~75\);

-- Location: LCCOMB_X22_Y13_N14
\clk_count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[22]~76_combout\ = (clk_count(22) & (\clk_count[21]~75\ $ (GND))) # (!clk_count(22) & (!\clk_count[21]~75\ & VCC))
-- \clk_count[22]~77\ = CARRY((clk_count(22) & !\clk_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(22),
	datad => VCC,
	cin => \clk_count[21]~75\,
	combout => \clk_count[22]~76_combout\,
	cout => \clk_count[22]~77\);

-- Location: FF_X22_Y13_N15
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[22]~76_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: FF_X22_Y13_N13
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[21]~74_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: FF_X22_Y13_N11
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[20]~72_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X21_Y14_N14
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_count(23)) # ((clk_count(22)) # ((clk_count(21)) # (clk_count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datab => clk_count(22),
	datac => clk_count(21),
	datad => clk_count(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X22_Y13_N16
\clk_count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[23]~78_combout\ = (clk_count(23) & (!\clk_count[22]~77\)) # (!clk_count(23) & ((\clk_count[22]~77\) # (GND)))
-- \clk_count[23]~79\ = CARRY((!\clk_count[22]~77\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(23),
	datad => VCC,
	cin => \clk_count[22]~77\,
	combout => \clk_count[23]~78_combout\,
	cout => \clk_count[23]~79\);

-- Location: FF_X22_Y13_N17
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[23]~78_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X22_Y13_N18
\clk_count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[24]~80_combout\ = (clk_count(24) & (\clk_count[23]~79\ $ (GND))) # (!clk_count(24) & (!\clk_count[23]~79\ & VCC))
-- \clk_count[24]~81\ = CARRY((clk_count(24) & !\clk_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \clk_count[23]~79\,
	combout => \clk_count[24]~80_combout\,
	cout => \clk_count[24]~81\);

-- Location: FF_X22_Y13_N19
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[24]~80_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X22_Y13_N20
\clk_count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[25]~82_combout\ = (clk_count(25) & (!\clk_count[24]~81\)) # (!clk_count(25) & ((\clk_count[24]~81\) # (GND)))
-- \clk_count[25]~83\ = CARRY((!\clk_count[24]~81\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \clk_count[24]~81\,
	combout => \clk_count[25]~82_combout\,
	cout => \clk_count[25]~83\);

-- Location: FF_X22_Y13_N21
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[25]~82_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X22_Y13_N22
\clk_count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[26]~84_combout\ = (clk_count(26) & (\clk_count[25]~83\ $ (GND))) # (!clk_count(26) & (!\clk_count[25]~83\ & VCC))
-- \clk_count[26]~85\ = CARRY((clk_count(26) & !\clk_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(26),
	datad => VCC,
	cin => \clk_count[25]~83\,
	combout => \clk_count[26]~84_combout\,
	cout => \clk_count[26]~85\);

-- Location: FF_X22_Y13_N23
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[26]~84_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X21_Y14_N16
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clk_count(27)) # ((clk_count(25)) # ((clk_count(26)) # (clk_count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(27),
	datab => clk_count(25),
	datac => clk_count(26),
	datad => clk_count(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X22_Y13_N24
\clk_count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[27]~86_combout\ = (clk_count(27) & (!\clk_count[26]~85\)) # (!clk_count(27) & ((\clk_count[26]~85\) # (GND)))
-- \clk_count[27]~87\ = CARRY((!\clk_count[26]~85\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(27),
	datad => VCC,
	cin => \clk_count[26]~85\,
	combout => \clk_count[27]~86_combout\,
	cout => \clk_count[27]~87\);

-- Location: FF_X22_Y13_N25
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[27]~86_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X22_Y13_N26
\clk_count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_count[28]~88_combout\ = (clk_count(28) & (\clk_count[27]~87\ $ (GND))) # (!clk_count(28) & (!\clk_count[27]~87\ & VCC))
-- \clk_count[28]~89\ = CARRY((clk_count(28) & !\clk_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datad => VCC,
	cin => \clk_count[27]~87\,
	combout => \clk_count[28]~88_combout\,
	cout => \clk_count[28]~89\);

-- Location: FF_X22_Y13_N27
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[28]~88_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: FF_X22_Y13_N29
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[29]~90_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: LCCOMB_X21_Y14_N26
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (clk_count(30)) # ((\Equal0~7_combout\) # ((clk_count(28)) # (clk_count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(30),
	datab => \Equal0~7_combout\,
	datac => clk_count(28),
	datad => clk_count(29),
	combout => \Equal0~8_combout\);

-- Location: FF_X22_Y14_N27
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[12]~56_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X21_Y14_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ((clk_count(12)) # ((clk_count(13)) # (!clk_count(15)))) # (!clk_count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datab => clk_count(12),
	datac => clk_count(13),
	datad => clk_count(15),
	combout => \Equal0~3_combout\);

-- Location: FF_X22_Y14_N7
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[2]~36_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X21_Y14_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_count(0)) # ((clk_count(3)) # ((clk_count(2)) # (clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datab => clk_count(3),
	datac => clk_count(2),
	datad => clk_count(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X22_Y14_N23
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_count[10]~52_combout\,
	sclr => \clk_count[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X21_Y14_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clk_count(11)) # ((clk_count(10)) # ((!clk_count(8)) # (!clk_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datab => clk_count(10),
	datac => clk_count(9),
	datad => clk_count(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\) # ((\Equal0~3_combout\) # ((\Equal0~0_combout\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\) # ((\Equal0~6_combout\) # ((\Equal0~8_combout\) # (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X20_Y22_N6
\duty[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[0]~12_combout\ = (\Add1~2_combout\ & (\Add1~1_combout\ $ (VCC))) # (!\Add1~2_combout\ & (\Add1~1_combout\ & VCC))
-- \duty[0]~13\ = CARRY((\Add1~2_combout\ & \Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~1_combout\,
	datad => VCC,
	combout => \duty[0]~12_combout\,
	cout => \duty[0]~13\);

-- Location: LCCOMB_X20_Y22_N20
\duty[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[7]~26_combout\ = (duty(7) & ((\increase~q\ & (\duty[6]~25\ & VCC)) # (!\increase~q\ & (!\duty[6]~25\)))) # (!duty(7) & ((\increase~q\ & (!\duty[6]~25\)) # (!\increase~q\ & ((\duty[6]~25\) # (GND)))))
-- \duty[7]~27\ = CARRY((duty(7) & (!\increase~q\ & !\duty[6]~25\)) # (!duty(7) & ((!\duty[6]~25\) # (!\increase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[6]~25\,
	combout => \duty[7]~26_combout\,
	cout => \duty[7]~27\);

-- Location: LCCOMB_X20_Y22_N22
\duty[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[8]~28_combout\ = ((duty(8) $ (\increase~q\ $ (!\duty[7]~27\)))) # (GND)
-- \duty[8]~29\ = CARRY((duty(8) & ((\increase~q\) # (!\duty[7]~27\))) # (!duty(8) & (\increase~q\ & !\duty[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(8),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[7]~27\,
	combout => \duty[8]~28_combout\,
	cout => \duty[8]~29\);

-- Location: LCCOMB_X20_Y22_N24
\duty[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[9]~30_combout\ = (\increase~q\ & ((duty(9) & (\duty[8]~29\ & VCC)) # (!duty(9) & (!\duty[8]~29\)))) # (!\increase~q\ & ((duty(9) & (!\duty[8]~29\)) # (!duty(9) & ((\duty[8]~29\) # (GND)))))
-- \duty[9]~31\ = CARRY((\increase~q\ & (!duty(9) & !\duty[8]~29\)) # (!\increase~q\ & ((!\duty[8]~29\) # (!duty(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increase~q\,
	datab => duty(9),
	datad => VCC,
	cin => \duty[8]~29\,
	combout => \duty[9]~30_combout\,
	cout => \duty[9]~31\);

-- Location: FF_X20_Y22_N25
\duty[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[9]~30_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(9));

-- Location: FF_X20_Y22_N23
\duty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[8]~28_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(8));

-- Location: LCCOMB_X19_Y22_N28
\duty[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~35_combout\ = (!duty(7) & (!duty(9) & (!duty(6) & !duty(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => duty(9),
	datac => duty(6),
	datad => duty(8),
	combout => \duty[10]~35_combout\);

-- Location: LCCOMB_X20_Y22_N10
\duty[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[2]~16_combout\ = ((duty(2) $ (\increase~q\ $ (!\duty[1]~15\)))) # (GND)
-- \duty[2]~17\ = CARRY((duty(2) & ((\increase~q\) # (!\duty[1]~15\))) # (!duty(2) & (\increase~q\ & !\duty[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[1]~15\,
	combout => \duty[2]~16_combout\,
	cout => \duty[2]~17\);

-- Location: FF_X20_Y22_N11
\duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[2]~16_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(2));

-- Location: LCCOMB_X20_Y22_N8
\duty[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[1]~14_combout\ = (duty(1) & ((\increase~q\ & (\duty[0]~13\ & VCC)) # (!\increase~q\ & (!\duty[0]~13\)))) # (!duty(1) & ((\increase~q\ & (!\duty[0]~13\)) # (!\increase~q\ & ((\duty[0]~13\) # (GND)))))
-- \duty[1]~15\ = CARRY((duty(1) & (!\increase~q\ & !\duty[0]~13\)) # (!duty(1) & ((!\duty[0]~13\) # (!\increase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(1),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[0]~13\,
	combout => \duty[1]~14_combout\,
	cout => \duty[1]~15\);

-- Location: FF_X20_Y22_N9
\duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[1]~14_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(1));

-- Location: LCCOMB_X19_Y22_N26
\duty[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~34_combout\ = (!duty(0) & (!duty(2) & (!duty(1) & !duty(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => duty(2),
	datac => duty(1),
	datad => duty(5),
	combout => \duty[10]~34_combout\);

-- Location: LCCOMB_X19_Y22_N30
\duty[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~36_combout\ = (\duty[10]~11_combout\ & (\duty[10]~35_combout\ & (\duty[10]~34_combout\ & \increase~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[10]~11_combout\,
	datab => \duty[10]~35_combout\,
	datac => \duty[10]~34_combout\,
	datad => \increase~q\,
	combout => \duty[10]~36_combout\);

-- Location: LCCOMB_X21_Y14_N22
\duty[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~37_combout\ = ((!\Equal0~9_combout\ & !\duty[10]~36_combout\)) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \Equal0~9_combout\,
	datad => \duty[10]~36_combout\,
	combout => \duty[10]~37_combout\);

-- Location: FF_X20_Y22_N7
\duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[0]~12_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(0));

-- Location: LCCOMB_X21_Y14_N18
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\increase~q\) # (duty(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \increase~q\,
	datad => duty(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X20_Y22_N12
\duty[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[3]~18_combout\ = (duty(3) & ((\increase~q\ & (\duty[2]~17\ & VCC)) # (!\increase~q\ & (!\duty[2]~17\)))) # (!duty(3) & ((\increase~q\ & (!\duty[2]~17\)) # (!\increase~q\ & ((\duty[2]~17\) # (GND)))))
-- \duty[3]~19\ = CARRY((duty(3) & (!\increase~q\ & !\duty[2]~17\)) # (!duty(3) & ((!\duty[2]~17\) # (!\increase~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(3),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[2]~17\,
	combout => \duty[3]~18_combout\,
	cout => \duty[3]~19\);

-- Location: LCCOMB_X20_Y22_N14
\duty[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[4]~20_combout\ = ((duty(4) $ (\increase~q\ $ (!\duty[3]~19\)))) # (GND)
-- \duty[4]~21\ = CARRY((duty(4) & ((\increase~q\) # (!\duty[3]~19\))) # (!duty(4) & (\increase~q\ & !\duty[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(4),
	datab => \increase~q\,
	datad => VCC,
	cin => \duty[3]~19\,
	combout => \duty[4]~20_combout\,
	cout => \duty[4]~21\);

-- Location: LCCOMB_X20_Y22_N16
\duty[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[5]~22_combout\ = (\increase~q\ & ((duty(5) & (\duty[4]~21\ & VCC)) # (!duty(5) & (!\duty[4]~21\)))) # (!\increase~q\ & ((duty(5) & (!\duty[4]~21\)) # (!duty(5) & ((\duty[4]~21\) # (GND)))))
-- \duty[5]~23\ = CARRY((\increase~q\ & (!duty(5) & !\duty[4]~21\)) # (!\increase~q\ & ((!\duty[4]~21\) # (!duty(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increase~q\,
	datab => duty(5),
	datad => VCC,
	cin => \duty[4]~21\,
	combout => \duty[5]~22_combout\,
	cout => \duty[5]~23\);

-- Location: FF_X20_Y22_N17
\duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[5]~22_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(5));

-- Location: LCCOMB_X20_Y22_N18
\duty[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[6]~24_combout\ = ((\increase~q\ $ (duty(6) $ (!\duty[5]~23\)))) # (GND)
-- \duty[6]~25\ = CARRY((\increase~q\ & ((duty(6)) # (!\duty[5]~23\))) # (!\increase~q\ & (duty(6) & !\duty[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \increase~q\,
	datab => duty(6),
	datad => VCC,
	cin => \duty[5]~23\,
	combout => \duty[6]~24_combout\,
	cout => \duty[6]~25\);

-- Location: FF_X20_Y22_N19
\duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[6]~24_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(6));

-- Location: FF_X20_Y22_N21
\duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[7]~26_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(7));

-- Location: LCCOMB_X20_Y22_N2
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ((!duty(9)) # (!duty(8))) # (!duty(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => duty(7),
	datac => duty(8),
	datad => duty(9),
	combout => \Equal1~1_combout\);

-- Location: FF_X20_Y22_N15
\duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[4]~20_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(4));

-- Location: FF_X20_Y22_N13
\duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[3]~18_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(3));

-- Location: LCCOMB_X20_Y22_N4
\duty[10]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~11_combout\ = (!duty(10) & (!duty(4) & !duty(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(10),
	datac => duty(4),
	datad => duty(3),
	combout => \duty[10]~11_combout\);

-- Location: LCCOMB_X20_Y22_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((!duty(5)) # (!duty(1))) # (!duty(6))) # (!duty(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(2),
	datab => duty(6),
	datac => duty(1),
	datad => duty(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((\Equal1~1_combout\) # ((\Equal1~0_combout\) # (!\duty[10]~11_combout\))) # (!duty(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => \Equal1~1_combout\,
	datac => \duty[10]~11_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y14_N8
\increase~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \increase~0_combout\ = (!\increase~q\ & ((\Equal0~9_combout\) # (\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \increase~q\,
	datac => \Equal0~9_combout\,
	datad => \Equal1~2_combout\,
	combout => \increase~0_combout\);

-- Location: LCCOMB_X21_Y14_N24
\increase~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \increase~1_combout\ = (!\increase~0_combout\ & (\enable~input_o\ & ((\Equal0~9_combout\) # (!\duty[10]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[10]~36_combout\,
	datab => \Equal0~9_combout\,
	datac => \increase~0_combout\,
	datad => \enable~input_o\,
	combout => \increase~1_combout\);

-- Location: FF_X21_Y14_N25
increase : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \increase~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \increase~q\);

-- Location: LCCOMB_X20_Y22_N26
\duty[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty[10]~32_combout\ = \increase~q\ $ (\duty[9]~31\ $ (!duty(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \increase~q\,
	datad => duty(10),
	cin => \duty[9]~31\,
	combout => \duty[10]~32_combout\);

-- Location: FF_X20_Y22_N27
\duty[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty[10]~32_combout\,
	sclr => \ALT_INV_enable~input_o\,
	ena => \duty[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty(10));

-- Location: LCCOMB_X17_Y22_N8
\pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[0]~11_combout\ = pwm_count(0) $ (VCC)
-- \pwm_count[0]~12\ = CARRY(pwm_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(0),
	datad => VCC,
	combout => \pwm_count[0]~11_combout\,
	cout => \pwm_count[0]~12\);

-- Location: LCCOMB_X17_Y22_N22
\pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[7]~25_combout\ = (pwm_count(7) & (!\pwm_count[6]~24\)) # (!pwm_count(7) & ((\pwm_count[6]~24\) # (GND)))
-- \pwm_count[7]~26\ = CARRY((!\pwm_count[6]~24\) # (!pwm_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(7),
	datad => VCC,
	cin => \pwm_count[6]~24\,
	combout => \pwm_count[7]~25_combout\,
	cout => \pwm_count[7]~26\);

-- Location: FF_X17_Y22_N23
\pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[7]~25_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(7));

-- Location: LCCOMB_X17_Y22_N0
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ((!pwm_count(8)) # (!pwm_count(7))) # (!pwm_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(9),
	datac => pwm_count(7),
	datad => pwm_count(8),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X19_Y22_N24
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ((pwm_count(4)) # ((!pwm_count(3)) # (!pwm_count(6)))) # (!pwm_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => pwm_count(4),
	datac => pwm_count(6),
	datad => pwm_count(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X17_Y22_N2
\pwm_count[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[10]~33_combout\ = ((!\Equal3~0_combout\ & (!\Equal3~2_combout\ & !\Equal3~1_combout\))) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~1_combout\,
	datad => \enable~input_o\,
	combout => \pwm_count[10]~33_combout\);

-- Location: FF_X17_Y22_N9
\pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[0]~11_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(0));

-- Location: LCCOMB_X17_Y22_N14
\pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[3]~17_combout\ = (pwm_count(3) & (!\pwm_count[2]~16\)) # (!pwm_count(3) & ((\pwm_count[2]~16\) # (GND)))
-- \pwm_count[3]~18\ = CARRY((!\pwm_count[2]~16\) # (!pwm_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(3),
	datad => VCC,
	cin => \pwm_count[2]~16\,
	combout => \pwm_count[3]~17_combout\,
	cout => \pwm_count[3]~18\);

-- Location: FF_X17_Y22_N15
\pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[3]~17_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(3));

-- Location: LCCOMB_X17_Y22_N16
\pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[4]~19_combout\ = (pwm_count(4) & (\pwm_count[3]~18\ $ (GND))) # (!pwm_count(4) & (!\pwm_count[3]~18\ & VCC))
-- \pwm_count[4]~20\ = CARRY((pwm_count(4) & !\pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(4),
	datad => VCC,
	cin => \pwm_count[3]~18\,
	combout => \pwm_count[4]~19_combout\,
	cout => \pwm_count[4]~20\);

-- Location: FF_X17_Y22_N17
\pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[4]~19_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(4));

-- Location: LCCOMB_X17_Y22_N18
\pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[5]~21_combout\ = (pwm_count(5) & (!\pwm_count[4]~20\)) # (!pwm_count(5) & ((\pwm_count[4]~20\) # (GND)))
-- \pwm_count[5]~22\ = CARRY((!\pwm_count[4]~20\) # (!pwm_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(5),
	datad => VCC,
	cin => \pwm_count[4]~20\,
	combout => \pwm_count[5]~21_combout\,
	cout => \pwm_count[5]~22\);

-- Location: FF_X17_Y22_N19
\pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[5]~21_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(5));

-- Location: LCCOMB_X17_Y22_N20
\pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[6]~23_combout\ = (pwm_count(6) & (\pwm_count[5]~22\ $ (GND))) # (!pwm_count(6) & (!\pwm_count[5]~22\ & VCC))
-- \pwm_count[6]~24\ = CARRY((pwm_count(6) & !\pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(6),
	datad => VCC,
	cin => \pwm_count[5]~22\,
	combout => \pwm_count[6]~23_combout\,
	cout => \pwm_count[6]~24\);

-- Location: FF_X17_Y22_N21
\pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[6]~23_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(6));

-- Location: LCCOMB_X17_Y22_N24
\pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[8]~27_combout\ = (pwm_count(8) & (\pwm_count[7]~26\ $ (GND))) # (!pwm_count(8) & (!\pwm_count[7]~26\ & VCC))
-- \pwm_count[8]~28\ = CARRY((pwm_count(8) & !\pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_count(8),
	datad => VCC,
	cin => \pwm_count[7]~26\,
	combout => \pwm_count[8]~27_combout\,
	cout => \pwm_count[8]~28\);

-- Location: FF_X17_Y22_N25
\pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[8]~27_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(8));

-- Location: LCCOMB_X17_Y22_N28
\pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_count[10]~31_combout\ = \pwm_count[9]~30\ $ (!pwm_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pwm_count(10),
	cin => \pwm_count[9]~30\,
	combout => \pwm_count[10]~31_combout\);

-- Location: FF_X17_Y22_N29
\pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_count[10]~31_combout\,
	sclr => \pwm_count[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_count(10));

-- Location: LCCOMB_X19_Y22_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((duty(0) & !pwm_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(0),
	datab => pwm_count(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X19_Y22_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((pwm_count(1) & ((!\LessThan0~1_cout\) # (!duty(1)))) # (!pwm_count(1) & (!duty(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(1),
	datab => duty(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X19_Y22_N6
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((pwm_count(2) & (duty(2) & !\LessThan0~3_cout\)) # (!pwm_count(2) & ((duty(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(2),
	datab => duty(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X19_Y22_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((pwm_count(3) & ((!\LessThan0~5_cout\) # (!duty(3)))) # (!pwm_count(3) & (!duty(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(3),
	datab => duty(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X19_Y22_N10
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((duty(4) & ((!\LessThan0~7_cout\) # (!pwm_count(4)))) # (!duty(4) & (!pwm_count(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(4),
	datab => pwm_count(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X19_Y22_N12
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((pwm_count(5) & ((!\LessThan0~9_cout\) # (!duty(5)))) # (!pwm_count(5) & (!duty(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(5),
	datab => duty(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X19_Y22_N14
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((pwm_count(6) & (duty(6) & !\LessThan0~11_cout\)) # (!pwm_count(6) & ((duty(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(6),
	datab => duty(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X19_Y22_N16
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((duty(7) & (pwm_count(7) & !\LessThan0~13_cout\)) # (!duty(7) & ((pwm_count(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty(7),
	datab => pwm_count(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X19_Y22_N18
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((pwm_count(8) & (duty(8) & !\LessThan0~15_cout\)) # (!pwm_count(8) & ((duty(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(8),
	datab => duty(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X19_Y22_N20
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((pwm_count(9) & ((!\LessThan0~17_cout\) # (!duty(9)))) # (!pwm_count(9) & (!duty(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_count(9),
	datab => duty(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X19_Y22_N22
\LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = (duty(10) & ((!pwm_count(10)) # (!\LessThan0~19_cout\))) # (!duty(10) & (!\LessThan0~19_cout\ & !pwm_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => duty(10),
	datad => pwm_count(10),
	cin => \LessThan0~19_cout\,
	combout => \LessThan0~20_combout\);

-- Location: FF_X19_Y22_N23
\led~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~20_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led~reg0_q\);

ww_led <= \led~output_o\;
END structure;


