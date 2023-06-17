-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/27/2021 01:42:19"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	selection : IN std_logic_vector(2 DOWNTO 0);
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	overflow : BUFFER std_logic;
	status : BUFFER std_logic;
	sinal : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- display1[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_selection : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_status : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \x3|x|x4|ogt~2_combout\ : std_logic;
SIGNAL \x3|x|x4|ogt~0_combout\ : std_logic;
SIGNAL \selection[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \x3|x|x4|ogt~1_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \selection[2]~input_o\ : std_logic;
SIGNAL \selection[1]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \x3|Selector5~0_combout\ : std_logic;
SIGNAL \x3|Selector0~0_combout\ : std_logic;
SIGNAL \x0|x2|vs~0_combout\ : std_logic;
SIGNAL \x0|x4|s~combout\ : std_logic;
SIGNAL \x1|xo|x2|vs~0_combout\ : std_logic;
SIGNAL \x1|x1|x2|vs~0_combout\ : std_logic;
SIGNAL \x1|x1|x4|s~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \x1|x1|x2|s~combout\ : std_logic;
SIGNAL \x0|x1|vs~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \x7|buff~0_combout\ : std_logic;
SIGNAL \x8|comb~2_combout\ : std_logic;
SIGNAL \x8|comb~3_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \x3|Selector3~0_combout\ : std_logic;
SIGNAL \x3|Selector8~0_combout\ : std_logic;
SIGNAL \x1|x1|x1|s~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \x8|comb~4_combout\ : std_logic;
SIGNAL \x8|comb~5_combout\ : std_logic;
SIGNAL \x3|x|x4|ogt~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \x8|comb~0_combout\ : std_logic;
SIGNAL \x8|comb~1_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \x8|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \x3|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \x8|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \x3|x|x4|ALT_INV_ogt~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \x1|x1|x1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \x3|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \x3|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \x1|x1|x2|ALT_INV_s~combout\ : std_logic;
SIGNAL \x0|x1|ALT_INV_vs~0_combout\ : std_logic;
SIGNAL \x7|ALT_INV_buff~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \x3|x|x4|ALT_INV_ogt~2_combout\ : std_logic;
SIGNAL \x3|x|x4|ALT_INV_ogt~1_combout\ : std_logic;
SIGNAL \x3|x|x4|ALT_INV_ogt~0_combout\ : std_logic;
SIGNAL \x1|x1|x4|ALT_INV_s~combout\ : std_logic;
SIGNAL \x1|x1|x2|ALT_INV_vs~0_combout\ : std_logic;
SIGNAL \x1|xo|x2|ALT_INV_vs~0_combout\ : std_logic;
SIGNAL \x0|x4|ALT_INV_s~combout\ : std_logic;
SIGNAL \x0|x2|ALT_INV_vs~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_selection[2]~input_o\ : std_logic;
SIGNAL \x8|ALT_INV_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x3|ALT_INV_Selector0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_selection <= selection;
display1 <= ww_display1;
display2 <= ww_display2;
overflow <= ww_overflow;
status <= ww_status;
sinal <= ww_sinal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\x3|ALT_INV_Selector5~0_combout\ <= NOT \x3|Selector5~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\x8|ALT_INV_comb~5_combout\ <= NOT \x8|comb~5_combout\;
\x8|ALT_INV_comb~4_combout\ <= NOT \x8|comb~4_combout\;
\x8|ALT_INV_comb~3_combout\ <= NOT \x8|comb~3_combout\;
\x8|ALT_INV_comb~2_combout\ <= NOT \x8|comb~2_combout\;
\x8|ALT_INV_comb~1_combout\ <= NOT \x8|comb~1_combout\;
\x8|ALT_INV_comb~0_combout\ <= NOT \x8|comb~0_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\x3|x|x4|ALT_INV_ogt~3_combout\ <= NOT \x3|x|x4|ogt~3_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\x1|x1|x1|ALT_INV_s~0_combout\ <= NOT \x1|x1|x1|s~0_combout\;
\x3|ALT_INV_Selector3~0_combout\ <= NOT \x3|Selector3~0_combout\;
\x3|ALT_INV_Selector8~0_combout\ <= NOT \x3|Selector8~0_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\x1|x1|x2|ALT_INV_s~combout\ <= NOT \x1|x1|x2|s~combout\;
\x0|x1|ALT_INV_vs~0_combout\ <= NOT \x0|x1|vs~0_combout\;
\x7|ALT_INV_buff~0_combout\ <= NOT \x7|buff~0_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\x3|x|x4|ALT_INV_ogt~2_combout\ <= NOT \x3|x|x4|ogt~2_combout\;
\x3|x|x4|ALT_INV_ogt~1_combout\ <= NOT \x3|x|x4|ogt~1_combout\;
\x3|x|x4|ALT_INV_ogt~0_combout\ <= NOT \x3|x|x4|ogt~0_combout\;
\x1|x1|x4|ALT_INV_s~combout\ <= NOT \x1|x1|x4|s~combout\;
\x1|x1|x2|ALT_INV_vs~0_combout\ <= NOT \x1|x1|x2|vs~0_combout\;
\x1|xo|x2|ALT_INV_vs~0_combout\ <= NOT \x1|xo|x2|vs~0_combout\;
\x0|x4|ALT_INV_s~combout\ <= NOT \x0|x4|s~combout\;
\x0|x2|ALT_INV_vs~0_combout\ <= NOT \x0|x2|vs~0_combout\;
\ALT_INV_Mux18~4_combout\ <= NOT \Mux18~4_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_selection[1]~input_o\ <= NOT \selection[1]~input_o\;
\ALT_INV_selection[0]~input_o\ <= NOT \selection[0]~input_o\;
\ALT_INV_selection[2]~input_o\ <= NOT \selection[2]~input_o\;
\x8|ALT_INV_s\(0) <= NOT \x8|s\(0);
\x8|ALT_INV_s\(2) <= NOT \x8|s\(2);
\x8|ALT_INV_s\(3) <= NOT \x8|s\(3);
\x3|ALT_INV_Selector0~0_combout\ <= NOT \x3|Selector0~0_combout\;

-- Location: IOOBUF_X70_Y0_N53
\status~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~3_combout\,
	oe => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_status);

-- Location: IOOBUF_X70_Y0_N36
\sinal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	oe => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_sinal);

-- Location: IOOBUF_X70_Y81_N2
\display1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X64_Y0_N53
\display1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X68_Y0_N19
\display1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X64_Y0_N2
\display1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X32_Y81_N2
\display1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X26_Y0_N42
\display1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X66_Y0_N59
\display1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X64_Y0_N36
\display2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(0));

-- Location: IOOBUF_X64_Y0_N19
\display2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(1));

-- Location: IOOBUF_X68_Y0_N36
\display2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_display2(2));

-- Location: IOOBUF_X62_Y0_N2
\display2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(3));

-- Location: IOOBUF_X62_Y0_N53
\display2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_display2(4));

-- Location: IOOBUF_X66_Y0_N93
\display2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(5));

-- Location: IOOBUF_X66_Y0_N76
\display2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(6));

-- Location: IOOBUF_X70_Y0_N19
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X72_Y0_N52
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X71_Y4_N54
\x3|x|x4|ogt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|x|x4|ogt~2_combout\ = ( \A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\A[4]~input_o\ & (((\A[2]~input_o\ & !\B[2]~input_o\)) # (\B[4]~input_o\))) # (\A[4]~input_o\ & (\A[2]~input_o\ & (\B[4]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( 
-- \B[3]~input_o\ & ( (!\A[4]~input_o\ & \B[4]~input_o\) ) ) ) # ( \A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[4]~input_o\) # (\B[4]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[4]~input_o\ & (((\A[2]~input_o\ & !\B[2]~input_o\)) # 
-- (\B[4]~input_o\))) # (\A[4]~input_o\ & (\A[2]~input_o\ & (\B[4]~input_o\ & !\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001100110011111100111100001100000011000100110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \x3|x|x4|ogt~2_combout\);

-- Location: LABCELL_X71_Y4_N12
\x3|x|x4|ogt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|x|x4|ogt~0_combout\ = ( \B[3]~input_o\ & ( (\A[3]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( !\A[4]~input_o\ $ (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \x3|x|x4|ogt~0_combout\);

-- Location: IOIBUF_X72_Y0_N1
\selection[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(0),
	o => \selection[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X72_Y4_N18
\x3|x|x4|ogt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|x|x4|ogt~1_combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\ & 
-- \A[0]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & !\B[2]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000001000000010000000100010101110110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \x3|x|x4|ogt~1_combout\);

-- Location: MLABCELL_X72_Y4_N54
\Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \x3|x|x4|ogt~1_combout\ & ( !\selection[0]~input_o\ $ (((!\x3|x|x4|ogt~2_combout\ & !\x3|x|x4|ogt~0_combout\))) ) ) # ( !\x3|x|x4|ogt~1_combout\ & ( !\x3|x|x4|ogt~2_combout\ $ (!\selection[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|x|x4|ALT_INV_ogt~2_combout\,
	datab => \x3|x|x4|ALT_INV_ogt~0_combout\,
	datac => \ALT_INV_selection[0]~input_o\,
	dataf => \x3|x|x4|ALT_INV_ogt~1_combout\,
	combout => \Mux18~3_combout\);

-- Location: IOIBUF_X66_Y0_N41
\selection[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(2),
	o => \selection[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\selection[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(1),
	o => \selection[1]~input_o\);

-- Location: LABCELL_X71_Y4_N27
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( !\selection[1]~input_o\ & ( \selection[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selection[2]~input_o\,
	dataf => \ALT_INV_selection[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X71_Y4_N24
\x3|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|Selector5~0_combout\ = ( \A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x3|Selector5~0_combout\);

-- Location: LABCELL_X71_Y4_N42
\x3|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|Selector0~0_combout\ = (!\B[4]~input_o\ & !\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \x3|Selector0~0_combout\);

-- Location: LABCELL_X73_Y4_N0
\x0|x2|vs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x0|x2|vs~0_combout\ = ( \B[2]~input_o\ & ( \B[0]~input_o\ & ( ((!\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\)))) # (\A[2]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \B[0]~input_o\ & ( 
-- (\A[2]~input_o\ & ((!\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))))) ) ) ) # ( \B[2]~input_o\ & ( !\B[0]~input_o\ & ( ((\B[1]~input_o\ & \A[1]~input_o\)) # (\A[2]~input_o\) ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000001000001110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \x0|x2|vs~0_combout\);

-- Location: LABCELL_X71_Y4_N15
\x0|x4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \x0|x4|s~combout\ = ( \B[3]~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\x0|x2|vs~0_combout\) # (\A[3]~input_o\)))) ) ) # ( !\B[3]~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\A[3]~input_o\ & \x0|x2|vs~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \x0|x2|ALT_INV_vs~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \x0|x4|s~combout\);

-- Location: MLABCELL_X72_Y4_N9
\x1|xo|x2|vs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1|xo|x2|vs~0_combout\ = ( \B[1]~input_o\ ) # ( !\B[1]~input_o\ & ( (\B[2]~input_o\) # (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \x1|xo|x2|vs~0_combout\);

-- Location: MLABCELL_X72_Y4_N12
\x1|x1|x2|vs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1|x1|x2|vs~0_combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\B[2]~input_o\))) # (\B[1]~input_o\ & ((!\B[2]~input_o\) # (\A[1]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[1]~input_o\ & \A[0]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( (\B[1]~input_o\ & (\A[1]~input_o\ & !\B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001000001011000001011011010110111111001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \x1|x1|x2|vs~0_combout\);

-- Location: LABCELL_X71_Y4_N18
\x1|x1|x4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1|x1|x4|s~combout\ = ( \A[3]~input_o\ & ( \B[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\x1|xo|x2|vs~0_combout\ & !\x1|x1|x2|vs~0_combout\)))) ) ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ 
-- (((!\x1|x1|x2|vs~0_combout\) # (\x1|xo|x2|vs~0_combout\)))) ) ) ) # ( \A[3]~input_o\ & ( !\B[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\x1|xo|x2|vs~0_combout\ & \x1|x1|x2|vs~0_combout\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ & ( 
-- !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\x1|xo|x2|vs~0_combout\ & !\x1|x1|x2|vs~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100001111001001011011000011011010010110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x1|xo|x2|ALT_INV_vs~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \x1|x1|x2|ALT_INV_vs~0_combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \x1|x1|x4|s~combout\);

-- Location: LABCELL_X71_Y4_N0
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \selection[0]~input_o\ & ( \x1|x1|x4|s~combout\ & ( (!\selection[1]~input_o\) # (\x3|Selector5~0_combout\) ) ) ) # ( !\selection[0]~input_o\ & ( \x1|x1|x4|s~combout\ & ( (!\selection[1]~input_o\ & ((\x0|x4|s~combout\))) # 
-- (\selection[1]~input_o\ & (!\x3|Selector0~0_combout\)) ) ) ) # ( \selection[0]~input_o\ & ( !\x1|x1|x4|s~combout\ & ( (\x3|Selector5~0_combout\ & \selection[1]~input_o\) ) ) ) # ( !\selection[0]~input_o\ & ( !\x1|x1|x4|s~combout\ & ( 
-- (!\selection[1]~input_o\ & ((\x0|x4|s~combout\))) # (\selection[1]~input_o\ & (!\x3|Selector0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000001010000010100001100111111001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|ALT_INV_Selector5~0_combout\,
	datab => \x3|ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_selection[1]~input_o\,
	datad => \x0|x4|ALT_INV_s~combout\,
	datae => \ALT_INV_selection[0]~input_o\,
	dataf => \x1|x1|x4|ALT_INV_s~combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X73_Y4_N39
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[0]~input_o\ & (!\A[1]~input_o\ & !\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X71_Y4_N36
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Mux1~0_combout\ & ( (!\selection[2]~input_o\ & (((\Mux19~0_combout\)))) # (\selection[2]~input_o\ & (!\selection[0]~input_o\ & (\selection[1]~input_o\))) ) ) # ( !\Mux1~0_combout\ & ( (!\selection[2]~input_o\ & \Mux19~0_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selection[2]~input_o\,
	datab => \ALT_INV_selection[0]~input_o\,
	datac => \ALT_INV_selection[1]~input_o\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X72_Y4_N30
\x1|x1|x2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1|x1|x2|s~combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[1]~input_o\ & (!\A[1]~input_o\ & !\A[0]~input_o\)) # (\B[1]~input_o\ & ((!\A[1]~input_o\) # (!\A[0]~input_o\))))) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( 
-- !\B[2]~input_o\ $ (((\B[1]~input_o\ & !\A[1]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[2]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[1]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)))) ) ) ) # ( 
-- !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[1]~input_o\) # (\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011110100100100101110110100101101000010110110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \x1|x1|x2|s~combout\);

-- Location: LABCELL_X73_Y4_N24
\x0|x1|vs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x0|x1|vs~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)) # (\A[0]~input_o\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \x0|x1|vs~0_combout\);

-- Location: MLABCELL_X72_Y4_N36
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \selection[1]~input_o\ & ( \selection[0]~input_o\ & ( \B[2]~input_o\ ) ) ) # ( !\selection[1]~input_o\ & ( \selection[0]~input_o\ & ( \x1|x1|x2|s~combout\ ) ) ) # ( \selection[1]~input_o\ & ( !\selection[0]~input_o\ & ( 
-- \B[2]~input_o\ ) ) ) # ( !\selection[1]~input_o\ & ( !\selection[0]~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (\x0|x1|vs~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010101010101010100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \x1|x1|x2|ALT_INV_s~combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \x0|x1|ALT_INV_vs~0_combout\,
	datae => \ALT_INV_selection[1]~input_o\,
	dataf => \ALT_INV_selection[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X71_Y4_N39
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\selection[2]~input_o\ & ((\A[4]~input_o\) # (\selection[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_selection[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_selection[2]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X72_Y4_N24
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \selection[1]~input_o\ & ( \x3|x|x4|ogt~1_combout\ & ( !\selection[0]~input_o\ $ (((!\selection[2]~input_o\ & ((\x3|x|x4|ogt~0_combout\) # (\x3|x|x4|ogt~2_combout\))))) ) ) ) # ( !\selection[1]~input_o\ & ( \x3|x|x4|ogt~1_combout\ & 
-- ( (!\selection[0]~input_o\ & \selection[2]~input_o\) ) ) ) # ( \selection[1]~input_o\ & ( !\x3|x|x4|ogt~1_combout\ & ( !\selection[0]~input_o\ $ (((\x3|x|x4|ogt~2_combout\ & !\selection[2]~input_o\))) ) ) ) # ( !\selection[1]~input_o\ & ( 
-- !\x3|x|x4|ogt~1_combout\ & ( (!\selection[0]~input_o\ & \selection[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000101001011111000000000000111100001000011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|x|x4|ALT_INV_ogt~2_combout\,
	datab => \x3|x|x4|ALT_INV_ogt~0_combout\,
	datac => \ALT_INV_selection[0]~input_o\,
	datad => \ALT_INV_selection[2]~input_o\,
	datae => \ALT_INV_selection[1]~input_o\,
	dataf => \x3|x|x4|ALT_INV_ogt~1_combout\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X73_Y4_N27
\x7|buff~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x7|buff~0_combout\ = (!\A[0]~input_o\ & !\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	combout => \x7|buff~0_combout\);

-- Location: LABCELL_X73_Y4_N18
\x8|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~2_combout\ = ( \A[4]~input_o\ & ( (\A[2]~input_o\ & (\A[0]~input_o\ & \A[3]~input_o\)) ) ) # ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & ((!\A[1]~input_o\) # (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000100000101000000010000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x8|comb~2_combout\);

-- Location: LABCELL_X73_Y4_N21
\x8|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~3_combout\ = ( \A[3]~input_o\ & ( (\A[2]~input_o\ & (!\A[0]~input_o\ & (\A[1]~input_o\ & \A[4]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (!\A[2]~input_o\ & (!\A[0]~input_o\ & (\A[1]~input_o\ & !\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \x8|comb~3_combout\);

-- Location: LABCELL_X73_Y4_N12
\x8|s[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|s\(2) = ( \x8|s\(2) & ( !\x8|comb~2_combout\ ) ) # ( !\x8|s\(2) & ( (!\x8|comb~2_combout\ & \x8|comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \x8|ALT_INV_comb~2_combout\,
	datad => \x8|ALT_INV_comb~3_combout\,
	dataf => \x8|ALT_INV_s\(2),
	combout => \x8|s\(2));

-- Location: LABCELL_X73_Y4_N30
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \x7|buff~0_combout\ & ( \x8|s\(2) & ( (!\Mux18~1_combout\ & (((\Mux18~0_combout\)) # (\Mux17~0_combout\))) # (\Mux18~1_combout\ & (((\A[2]~input_o\)))) ) ) ) # ( !\x7|buff~0_combout\ & ( \x8|s\(2) & ( (!\Mux18~1_combout\ & 
-- (((\Mux18~0_combout\)) # (\Mux17~0_combout\))) # (\Mux18~1_combout\ & ((!\Mux18~0_combout\ $ (!\A[2]~input_o\)))) ) ) ) # ( \x7|buff~0_combout\ & ( !\x8|s\(2) & ( (!\Mux18~1_combout\ & (\Mux17~0_combout\ & (!\Mux18~0_combout\))) # (\Mux18~1_combout\ & 
-- (((\A[2]~input_o\)))) ) ) ) # ( !\x7|buff~0_combout\ & ( !\x8|s\(2) & ( (!\Mux18~1_combout\ & (\Mux17~0_combout\ & (!\Mux18~0_combout\))) # (\Mux18~1_combout\ & ((!\Mux18~0_combout\ $ (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000111100010001000000111101110111001111000111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_Mux18~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_Mux18~1_combout\,
	datae => \x7|ALT_INV_buff~0_combout\,
	dataf => \x8|ALT_INV_s\(2),
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X72_Y4_N45
\x3|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|Selector3~0_combout\ = ( \B[1]~input_o\ & ( (((\x3|x|x4|ogt~1_combout\ & \x3|x|x4|ogt~0_combout\)) # (\x3|x|x4|ogt~2_combout\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & (!\x3|x|x4|ogt~2_combout\ & ((!\x3|x|x4|ogt~1_combout\) # 
-- (!\x3|x|x4|ogt~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100000001100000010000000111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|x|x4|ALT_INV_ogt~1_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \x3|x|x4|ALT_INV_ogt~2_combout\,
	datad => \x3|x|x4|ALT_INV_ogt~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \x3|Selector3~0_combout\);

-- Location: MLABCELL_X72_Y4_N42
\x3|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|Selector8~0_combout\ = ( \B[1]~input_o\ & ( ((!\x3|x|x4|ogt~2_combout\ & ((!\x3|x|x4|ogt~1_combout\) # (!\x3|x|x4|ogt~0_combout\)))) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & (((\x3|x|x4|ogt~1_combout\ & 
-- \x3|x|x4|ogt~0_combout\)) # (\x3|x|x4|ogt~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001111110011101100111111001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|x|x4|ALT_INV_ogt~1_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \x3|x|x4|ALT_INV_ogt~2_combout\,
	datad => \x3|x|x4|ALT_INV_ogt~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \x3|Selector8~0_combout\);

-- Location: MLABCELL_X72_Y4_N6
\x1|x1|x1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1|x1|x1|s~0_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \x1|x1|x1|s~0_combout\);

-- Location: MLABCELL_X72_Y4_N48
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \selection[1]~input_o\ & ( \x1|x1|x1|s~0_combout\ & ( (!\selection[0]~input_o\ & (\x3|Selector3~0_combout\)) # (\selection[0]~input_o\ & ((\x3|Selector8~0_combout\))) ) ) ) # ( !\selection[1]~input_o\ & ( \x1|x1|x1|s~0_combout\ & ( 
-- (!\B[0]~input_o\) # (!\selection[0]~input_o\) ) ) ) # ( \selection[1]~input_o\ & ( !\x1|x1|x1|s~0_combout\ & ( (!\selection[0]~input_o\ & (\x3|Selector3~0_combout\)) # (\selection[0]~input_o\ & ((\x3|Selector8~0_combout\))) ) ) ) # ( 
-- !\selection[1]~input_o\ & ( !\x1|x1|x1|s~0_combout\ & ( (\B[0]~input_o\ & \selection[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111111010111110100011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \x3|ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_selection[0]~input_o\,
	datad => \x3|ALT_INV_Selector8~0_combout\,
	datae => \ALT_INV_selection[1]~input_o\,
	dataf => \x1|x1|x1|ALT_INV_s~0_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X71_Y4_N30
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( !\selection[2]~input_o\ & ( (((\Mux16~0_combout\))) ) ) # ( \selection[2]~input_o\ & ( (\selection[1]~input_o\ & (!\selection[0]~input_o\ & (!\A[1]~input_o\ $ (((!\A[4]~input_o\) # (!\A[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000000010000001111000011110100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selection[1]~input_o\,
	datab => \ALT_INV_selection[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_selection[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	datag => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LABCELL_X73_Y4_N54
\x8|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~4_combout\ = ( \A[4]~input_o\ & ( (\A[2]~input_o\ & (!\A[0]~input_o\ & (\A[3]~input_o\ & \A[1]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[0]~input_o\ & !\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x8|comb~4_combout\);

-- Location: LABCELL_X73_Y4_N57
\x8|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~5_combout\ = ( \A[4]~input_o\ & ( (\A[2]~input_o\ & (\A[0]~input_o\ & \A[3]~input_o\)) ) ) # ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (\A[0]~input_o\ & !\A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x8|comb~5_combout\);

-- Location: LABCELL_X73_Y4_N6
\x8|s[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|s\(0) = ( \x8|s\(0) & ( !\x8|comb~4_combout\ ) ) # ( !\x8|s\(0) & ( (!\x8|comb~4_combout\ & \x8|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \x8|ALT_INV_comb~4_combout\,
	datad => \x8|ALT_INV_comb~5_combout\,
	dataf => \x8|ALT_INV_s\(0),
	combout => \x8|s\(0));

-- Location: MLABCELL_X72_Y4_N57
\x3|x|x4|ogt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3|x|x4|ogt~3_combout\ = ( \x3|x|x4|ogt~1_combout\ & ( (\x3|x|x4|ogt~0_combout\) # (\x3|x|x4|ogt~2_combout\) ) ) # ( !\x3|x|x4|ogt~1_combout\ & ( \x3|x|x4|ogt~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x3|x|x4|ALT_INV_ogt~2_combout\,
	datab => \x3|x|x4|ALT_INV_ogt~0_combout\,
	dataf => \x3|x|x4|ALT_INV_ogt~1_combout\,
	combout => \x3|x|x4|ogt~3_combout\);

-- Location: MLABCELL_X72_Y4_N0
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( !\selection[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & ((!\selection[1]~input_o\) # (!\x3|x|x4|ogt~3_combout\ $ (\selection[0]~input_o\))))) # (\B[0]~input_o\ & ((!\selection[1]~input_o\ & (((!\A[0]~input_o\)))) # 
-- (\selection[1]~input_o\ & ((!\x3|x|x4|ogt~3_combout\ $ (!\selection[0]~input_o\)) # (\A[0]~input_o\))))) ) ) # ( \selection[2]~input_o\ & ( (!\selection[1]~input_o\ & (!\B[0]~input_o\ $ ((((!\A[0]~input_o\)))))) # (\selection[1]~input_o\ & 
-- (((!\selection[0]~input_o\ & ((\A[0]~input_o\))) # (\selection[0]~input_o\ & (\x8|s\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010110111001010001001011101101010100100110110100011110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_selection[1]~input_o\,
	datac => \x8|ALT_INV_s\(0),
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_selection[2]~input_o\,
	dataf => \ALT_INV_selection[0]~input_o\,
	datag => \x3|x|x4|ALT_INV_ogt~3_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X73_Y4_N36
\x8|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~0_combout\ = ( \A[4]~input_o\ & ( (\A[2]~input_o\ & (\A[3]~input_o\ & \A[1]~input_o\)) ) ) # ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & ((!\A[0]~input_o\) # (!\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x8|comb~0_combout\);

-- Location: LABCELL_X73_Y4_N45
\x8|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|comb~1_combout\ = ( \A[4]~input_o\ & ( (\A[2]~input_o\ & (\A[3]~input_o\ & (\A[0]~input_o\ & !\A[1]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \x8|comb~1_combout\);

-- Location: LABCELL_X73_Y4_N42
\x8|s[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8|s\(3) = ( \x8|s\(3) & ( !\x8|comb~0_combout\ ) ) # ( !\x8|s\(3) & ( (!\x8|comb~0_combout\ & \x8|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \x8|ALT_INV_comb~0_combout\,
	datad => \x8|ALT_INV_comb~1_combout\,
	dataf => \x8|ALT_INV_s\(3),
	combout => \x8|s\(3));

-- Location: LABCELL_X71_Y4_N6
\Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( !\selection[0]~input_o\ & ( (!\B[3]~input_o\ $ (((!\A[3]~input_o\ $ (\x0|x2|vs~0_combout\)) # (\selection[1]~input_o\)))) ) ) # ( \selection[0]~input_o\ & ( !\B[3]~input_o\ $ (((!\A[3]~input_o\ $ (!\x1|xo|x2|vs~0_combout\ $ 
-- (!\x1|x1|x2|vs~0_combout\))) # (\selection[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010100000101000001010001000001011010111110101111101011101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selection[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \x1|xo|x2|ALT_INV_vs~0_combout\,
	datad => \x1|x1|x2|ALT_INV_vs~0_combout\,
	datae => \ALT_INV_selection[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	datag => \x0|x2|ALT_INV_vs~0_combout\,
	combout => \Mux18~4_combout\);

-- Location: LABCELL_X73_Y4_N15
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\A[2]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X73_Y4_N48
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Mux18~0_combout\ & ( \Mux1~1_combout\ & ( (!\Mux18~1_combout\ & (\x8|s\(3))) # (\Mux18~1_combout\ & ((\A[3]~input_o\))) ) ) ) # ( !\Mux18~0_combout\ & ( \Mux1~1_combout\ & ( (!\Mux18~1_combout\ & (\Mux18~4_combout\)) # 
-- (\Mux18~1_combout\ & ((\A[3]~input_o\))) ) ) ) # ( \Mux18~0_combout\ & ( !\Mux1~1_combout\ & ( (!\Mux18~1_combout\ & (\x8|s\(3))) # (\Mux18~1_combout\ & ((!\A[3]~input_o\))) ) ) ) # ( !\Mux18~0_combout\ & ( !\Mux1~1_combout\ & ( (!\Mux18~1_combout\ & 
-- (\Mux18~4_combout\)) # (\Mux18~1_combout\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111011101110010001000001010010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~1_combout\,
	datab => \x8|ALT_INV_s\(3),
	datac => \ALT_INV_Mux18~4_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Mux1~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X68_Y2_N3
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Mux19~1_combout\ & ( \Mux18~2_combout\ ) ) # ( !\Mux19~1_combout\ & ( \Mux18~2_combout\ & ( (!\Mux17~1_combout\ & !\Mux16~1_combout\) ) ) ) # ( \Mux19~1_combout\ & ( !\Mux18~2_combout\ & ( (\Mux17~1_combout\ & (\Mux16~1_combout\ & 
-- \Mux15~0_combout\)) ) ) ) # ( !\Mux19~1_combout\ & ( !\Mux18~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000010110100000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datac => \ALT_INV_Mux16~1_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X68_Y2_N6
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Mux15~0_combout\ & ( \Mux18~2_combout\ & ( (!\Mux16~1_combout\ & ((!\Mux19~1_combout\) # (\Mux17~1_combout\))) # (\Mux16~1_combout\ & (!\Mux19~1_combout\ $ (!\Mux17~1_combout\))) ) ) ) # ( !\Mux15~0_combout\ & ( \Mux18~2_combout\ & 
-- ( (!\Mux16~1_combout\) # ((\Mux17~1_combout\) # (\Mux19~1_combout\)) ) ) ) # ( \Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & (!\Mux19~1_combout\ $ (!\Mux17~1_combout\))) # (\Mux16~1_combout\ & ((!\Mux17~1_combout\) # 
-- (\Mux19~1_combout\))) ) ) ) # ( !\Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & ((\Mux17~1_combout\) # (\Mux19~1_combout\))) # (\Mux16~1_combout\ & ((!\Mux19~1_combout\) # (!\Mux17~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111001111110011110010111100110111111101111111001111010011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~1_combout\,
	datab => \ALT_INV_Mux19~1_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X68_Y2_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mux15~0_combout\ & ( \Mux18~2_combout\ & ( (!\Mux16~1_combout\ & (!\Mux19~1_combout\ & !\Mux17~1_combout\)) # (\Mux16~1_combout\ & (!\Mux19~1_combout\ $ (!\Mux17~1_combout\))) ) ) ) # ( !\Mux15~0_combout\ & ( \Mux18~2_combout\ & ( 
-- (!\Mux17~1_combout\) # (!\Mux16~1_combout\ $ (!\Mux19~1_combout\)) ) ) ) # ( \Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & (!\Mux19~1_combout\ $ (!\Mux17~1_combout\))) # (\Mux16~1_combout\ & (\Mux19~1_combout\ & \Mux17~1_combout\)) ) 
-- ) ) # ( !\Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & ((!\Mux19~1_combout\) # (!\Mux17~1_combout\))) # (\Mux16~1_combout\ & ((\Mux17~1_combout\) # (\Mux19~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110110111101001010010010100111110110111101101001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~1_combout\,
	datab => \ALT_INV_Mux19~1_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X68_Y2_N18
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Mux18~2_combout\ & ( (\Mux17~1_combout\ & (!\Mux16~1_combout\ $ (!\Mux19~1_combout\))) ) ) # ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & (!\Mux19~1_combout\ & \Mux17~1_combout\)) # (\Mux16~1_combout\ & (\Mux19~1_combout\ & 
-- !\Mux17~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~1_combout\,
	datab => \ALT_INV_Mux19~1_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X68_Y2_N21
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Mux10~0_combout\ ) # ( !\Mux10~0_combout\ & ( \Mux15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X68_Y2_N27
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Mux19~1_combout\ & ( \Mux18~2_combout\ & ( (!\Mux17~1_combout\ & ((!\Mux15~0_combout\) # (\Mux16~1_combout\))) # (\Mux17~1_combout\ & (!\Mux16~1_combout\ $ (!\Mux15~0_combout\))) ) ) ) # ( !\Mux19~1_combout\ & ( \Mux18~2_combout\ & ( 
-- (!\Mux16~1_combout\) # (!\Mux17~1_combout\ $ (\Mux15~0_combout\)) ) ) ) # ( \Mux19~1_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux17~1_combout\ & ((!\Mux16~1_combout\) # (\Mux15~0_combout\))) # (\Mux17~1_combout\ & ((!\Mux15~0_combout\) # 
-- (\Mux16~1_combout\))) ) ) ) # ( !\Mux19~1_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux17~1_combout\ & ((!\Mux15~0_combout\) # (\Mux16~1_combout\))) # (\Mux17~1_combout\ & (!\Mux16~1_combout\ $ (!\Mux15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101011010111101011010111111111010111101011010111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datac => \ALT_INV_Mux16~1_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X68_Y2_N33
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mux18~2_combout\ & ( (\Mux17~1_combout\ & (!\Mux16~1_combout\ $ (\Mux19~1_combout\))) ) ) # ( !\Mux18~2_combout\ & ( (!\Mux17~1_combout\ & (\Mux16~1_combout\ & !\Mux19~1_combout\)) # (\Mux17~1_combout\ & (!\Mux16~1_combout\ & 
-- \Mux19~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datab => \ALT_INV_Mux16~1_combout\,
	datac => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X68_Y2_N30
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Mux8~0_combout\) # (\Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X68_Y2_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux15~0_combout\ & ( \Mux18~2_combout\ & ( (!\Mux16~1_combout\) # (!\Mux19~1_combout\ $ (\Mux17~1_combout\)) ) ) ) # ( !\Mux15~0_combout\ & ( \Mux18~2_combout\ & ( (!\Mux16~1_combout\) # ((!\Mux19~1_combout\) # (\Mux17~1_combout\)) ) 
-- ) ) # ( \Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux19~1_combout\ $ (\Mux17~1_combout\)) # (\Mux16~1_combout\) ) ) ) # ( !\Mux15~0_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux16~1_combout\ & ((!\Mux19~1_combout\) # (\Mux17~1_combout\))) # 
-- (\Mux16~1_combout\ & ((!\Mux17~1_combout\) # (\Mux19~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101111011011110101111101011111101111111011111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~1_combout\,
	datab => \ALT_INV_Mux19~1_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	datae => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X68_Y2_N45
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Mux19~1_combout\ & ( \Mux18~2_combout\ & ( (!\Mux17~1_combout\) # (!\Mux16~1_combout\ $ (!\Mux15~0_combout\)) ) ) ) # ( !\Mux19~1_combout\ & ( \Mux18~2_combout\ & ( (!\Mux16~1_combout\) # (!\Mux17~1_combout\ $ (\Mux15~0_combout\)) ) 
-- ) ) # ( \Mux19~1_combout\ & ( !\Mux18~2_combout\ & ( (!\Mux17~1_combout\ & ((!\Mux16~1_combout\) # (\Mux15~0_combout\))) # (\Mux17~1_combout\ & ((!\Mux15~0_combout\) # (\Mux16~1_combout\))) ) ) ) # ( !\Mux19~1_combout\ & ( !\Mux18~2_combout\ & ( 
-- (!\Mux17~1_combout\ $ (\Mux15~0_combout\)) # (\Mux16~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101011111111101011010111111111010111101011010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datac => \ALT_INV_Mux16~1_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X73_Y4_N9
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\A[2]~input_o\ & (!\A[3]~input_o\ & (!\A[4]~input_o\))) # (\A[2]~input_o\ & (\A[3]~input_o\ & (\A[4]~input_o\ & !\x7|buff~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110000000100000011000000010000001100000001000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \x7|ALT_INV_buff~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X71_Y4_N45
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \B[3]~input_o\ & ( (!\B[4]~input_o\ & (!\A[4]~input_o\ & ((\x0|x2|vs~0_combout\) # (\A[3]~input_o\)))) # (\B[4]~input_o\ & (\A[4]~input_o\ & (!\A[3]~input_o\ & !\x0|x2|vs~0_combout\))) ) ) # ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & 
-- (!\A[4]~input_o\ & (\A[3]~input_o\ & \x0|x2|vs~0_combout\))) # (\B[4]~input_o\ & (\A[4]~input_o\ & ((!\A[3]~input_o\) # (!\x0|x2|vs~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011000000100010001100000011000100010000001100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \x0|x2|ALT_INV_vs~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X71_Y4_N48
\Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \selection[2]~input_o\ & ( \Mux1~0_combout\ & ( \selection[1]~input_o\ ) ) ) # ( !\selection[2]~input_o\ & ( \Mux1~0_combout\ & ( (!\selection[1]~input_o\ & ((\selection[0]~input_o\) # (\Mux1~3_combout\))) ) ) ) # ( 
-- \selection[2]~input_o\ & ( !\Mux1~0_combout\ & ( (!\Mux1~2_combout\ & (\selection[1]~input_o\ & \selection[0]~input_o\)) ) ) ) # ( !\selection[2]~input_o\ & ( !\Mux1~0_combout\ & ( (\Mux1~3_combout\ & (!\selection[1]~input_o\ & !\selection[0]~input_o\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000101000110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_selection[1]~input_o\,
	datad => \ALT_INV_selection[0]~input_o\,
	datae => \ALT_INV_selection[2]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X56_Y55_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


