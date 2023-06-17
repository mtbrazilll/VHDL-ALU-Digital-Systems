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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/25/2021 21:55:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL O : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL selection : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT alu
	PORT (
	A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	O : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	selection : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	O => O,
	selection => selection
	);
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;
-- selection[2]
t_prcs_selection_2: PROCESS
BEGIN
LOOP
	selection(2) <= '0';
	WAIT FOR 10000 ps;
	selection(2) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selection_2;
-- selection[1]
t_prcs_selection_1: PROCESS
BEGIN
	selection(1) <= '0';
WAIT;
END PROCESS t_prcs_selection_1;
-- selection[0]
t_prcs_selection_0: PROCESS
BEGIN
	selection(0) <= '0';
WAIT;
END PROCESS t_prcs_selection_0;
END alu_arch;
