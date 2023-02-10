-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/09/2023 12:23:54"

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

ENTITY 	ProyectoFinal IS
    PORT (
	Q1 : OUT std_logic;
	Sensor1 : IN std_logic;
	Sensor2 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic
	);
END ProyectoFinal;

-- Design Ports Information
-- Q1	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor1	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor2	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProyectoFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Sensor1 : std_logic;
SIGNAL ww_Sensor2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Sensor2~input_o\ : std_logic;
SIGNAL \Sensor1~input_o\ : std_logic;
SIGNAL \J0~0_combout\ : std_logic;
SIGNAL \J0~q\ : std_logic;

BEGIN

Q1 <= ww_Q1;
ww_Sensor1 <= Sensor1;
ww_Sensor2 <= Sensor2;
ww_CLK <= CLK;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N2
\Q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \J0~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Sensor2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor2,
	o => \Sensor2~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\Sensor1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor1,
	o => \Sensor1~input_o\);

-- Location: LCCOMB_X16_Y1_N28
\J0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \J0~0_combout\ = \J0~q\ $ (((\Sensor2~input_o\) # (\Sensor1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor2~input_o\,
	datac => \J0~q\,
	datad => \Sensor1~input_o\,
	combout => \J0~0_combout\);

-- Location: FF_X16_Y1_N29
J0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \J0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \J0~q\);

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;


