-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/20/2018 20:54:51"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	daclrc : OUT std_logic;
	clock_50 : IN std_logic;
	reset : IN std_logic;
	adcdat : IN std_logic;
	adclrc : OUT std_logic;
	dacdata : OUT std_logic;
	sda : OUT std_logic;
	scl : OUT std_logic;
	MCLK : OUT std_logic
	);
END Main;

-- Design Ports Information
-- daclrc	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adclrc	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacdata	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adcdat	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_daclrc : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_adcdat : std_logic;
SIGNAL ww_adclrc : std_logic;
SIGNAL ww_dacdata : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|clock_counter2[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~5_sumout\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~1_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~2\ : std_logic;
SIGNAL \inst|Add2~29_sumout\ : std_logic;
SIGNAL \inst|Add2~30\ : std_logic;
SIGNAL \inst|Add2~25_sumout\ : std_logic;
SIGNAL \inst|Add2~26\ : std_logic;
SIGNAL \inst|Add2~21_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~22\ : std_logic;
SIGNAL \inst|Add2~17_sumout\ : std_logic;
SIGNAL \inst|Add2~18\ : std_logic;
SIGNAL \inst|Add2~13_sumout\ : std_logic;
SIGNAL \inst|Add2~14\ : std_logic;
SIGNAL \inst|Add2~81_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~82\ : std_logic;
SIGNAL \inst|Add2~109_sumout\ : std_logic;
SIGNAL \inst|Add2~110\ : std_logic;
SIGNAL \inst|Add2~105_sumout\ : std_logic;
SIGNAL \inst|Add2~106\ : std_logic;
SIGNAL \inst|Add2~101_sumout\ : std_logic;
SIGNAL \inst|Add2~102\ : std_logic;
SIGNAL \inst|Add2~97_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~98\ : std_logic;
SIGNAL \inst|Add2~93_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~94\ : std_logic;
SIGNAL \inst|Add2~89_sumout\ : std_logic;
SIGNAL \inst|Add2~90\ : std_logic;
SIGNAL \inst|Add2~85_sumout\ : std_logic;
SIGNAL \inst|Add2~86\ : std_logic;
SIGNAL \inst|Add2~9_sumout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|clock_counter2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~53_sumout\ : std_logic;
SIGNAL \inst|Add2~54\ : std_logic;
SIGNAL \inst|Add2~37_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~38\ : std_logic;
SIGNAL \inst|Add2~49_sumout\ : std_logic;
SIGNAL \inst|Add2~50\ : std_logic;
SIGNAL \inst|Add2~45_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~46\ : std_logic;
SIGNAL \inst|Add2~41_sumout\ : std_logic;
SIGNAL \inst|Add2~42\ : std_logic;
SIGNAL \inst|Add2~77_sumout\ : std_logic;
SIGNAL \inst|Add2~78\ : std_logic;
SIGNAL \inst|Add2~73_sumout\ : std_logic;
SIGNAL \inst|Add2~74\ : std_logic;
SIGNAL \inst|Add2~69_sumout\ : std_logic;
SIGNAL \inst|Add2~70\ : std_logic;
SIGNAL \inst|Add2~65_sumout\ : std_logic;
SIGNAL \inst|Add2~66\ : std_logic;
SIGNAL \inst|Add2~61_sumout\ : std_logic;
SIGNAL \inst|Add2~62\ : std_logic;
SIGNAL \inst|Add2~57_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[26]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~58\ : std_logic;
SIGNAL \inst|Add2~125_sumout\ : std_logic;
SIGNAL \inst|Add2~126\ : std_logic;
SIGNAL \inst|Add2~121_sumout\ : std_logic;
SIGNAL \inst|Add2~122\ : std_logic;
SIGNAL \inst|Add2~117_sumout\ : std_logic;
SIGNAL \inst|Add2~118\ : std_logic;
SIGNAL \inst|Add2~113_sumout\ : std_logic;
SIGNAL \inst|clock_counter2[30]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add2~114\ : std_logic;
SIGNAL \inst|Add2~33_sumout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~4_combout\ : std_logic;
SIGNAL \inst|clock_counter2[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal2~5_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|Equal2~6_combout\ : std_logic;
SIGNAL \inst|clk_i2c2~0_combout\ : std_logic;
SIGNAL \inst|clk_i2c2~feeder_combout\ : std_logic;
SIGNAL \inst|clk_i2c2~q\ : std_logic;
SIGNAL \inst4|Mux27~0_combout\ : std_logic;
SIGNAL \inst4|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~2\ : std_logic;
SIGNAL \inst4|Add2~125_sumout\ : std_logic;
SIGNAL \inst4|Add2~126\ : std_logic;
SIGNAL \inst4|Add2~5_sumout\ : std_logic;
SIGNAL \inst4|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~6\ : std_logic;
SIGNAL \inst4|Add2~121_sumout\ : std_logic;
SIGNAL \inst4|Equal0~6_combout\ : std_logic;
SIGNAL \inst4|counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~122\ : std_logic;
SIGNAL \inst4|Add2~21_sumout\ : std_logic;
SIGNAL \inst4|Add2~22\ : std_logic;
SIGNAL \inst4|Add2~17_sumout\ : std_logic;
SIGNAL \inst4|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~18\ : std_logic;
SIGNAL \inst4|Add2~13_sumout\ : std_logic;
SIGNAL \inst4|Add2~14\ : std_logic;
SIGNAL \inst4|Add2~9_sumout\ : std_logic;
SIGNAL \inst4|Add2~10\ : std_logic;
SIGNAL \inst4|Add2~45_sumout\ : std_logic;
SIGNAL \inst4|counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~46\ : std_logic;
SIGNAL \inst4|Add2~41_sumout\ : std_logic;
SIGNAL \inst4|Add2~42\ : std_logic;
SIGNAL \inst4|Add2~37_sumout\ : std_logic;
SIGNAL \inst4|Add2~38\ : std_logic;
SIGNAL \inst4|Add2~33_sumout\ : std_logic;
SIGNAL \inst4|Add2~34\ : std_logic;
SIGNAL \inst4|Add2~29_sumout\ : std_logic;
SIGNAL \inst4|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~30\ : std_logic;
SIGNAL \inst4|Add2~25_sumout\ : std_logic;
SIGNAL \inst4|Add2~26\ : std_logic;
SIGNAL \inst4|Add2~69_sumout\ : std_logic;
SIGNAL \inst4|counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~70\ : std_logic;
SIGNAL \inst4|Add2~65_sumout\ : std_logic;
SIGNAL \inst4|Add2~66\ : std_logic;
SIGNAL \inst4|Add2~61_sumout\ : std_logic;
SIGNAL \inst4|Add2~62\ : std_logic;
SIGNAL \inst4|Add2~57_sumout\ : std_logic;
SIGNAL \inst4|counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~58\ : std_logic;
SIGNAL \inst4|Add2~53_sumout\ : std_logic;
SIGNAL \inst4|Add2~54\ : std_logic;
SIGNAL \inst4|Add2~49_sumout\ : std_logic;
SIGNAL \inst4|counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~50\ : std_logic;
SIGNAL \inst4|Add2~117_sumout\ : std_logic;
SIGNAL \inst4|counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~118\ : std_logic;
SIGNAL \inst4|Add2~113_sumout\ : std_logic;
SIGNAL \inst4|counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~114\ : std_logic;
SIGNAL \inst4|Add2~109_sumout\ : std_logic;
SIGNAL \inst4|Add2~110\ : std_logic;
SIGNAL \inst4|Add2~105_sumout\ : std_logic;
SIGNAL \inst4|Add2~106\ : std_logic;
SIGNAL \inst4|Add2~101_sumout\ : std_logic;
SIGNAL \inst4|counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~102\ : std_logic;
SIGNAL \inst4|Add2~97_sumout\ : std_logic;
SIGNAL \inst4|counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~98\ : std_logic;
SIGNAL \inst4|Add2~93_sumout\ : std_logic;
SIGNAL \inst4|Add2~94\ : std_logic;
SIGNAL \inst4|Add2~89_sumout\ : std_logic;
SIGNAL \inst4|Add2~90\ : std_logic;
SIGNAL \inst4|Add2~85_sumout\ : std_logic;
SIGNAL \inst4|Add2~86\ : std_logic;
SIGNAL \inst4|Add2~81_sumout\ : std_logic;
SIGNAL \inst4|counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~82\ : std_logic;
SIGNAL \inst4|Add2~77_sumout\ : std_logic;
SIGNAL \inst4|Add2~78\ : std_logic;
SIGNAL \inst4|Add2~73_sumout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|Equal0~5_combout\ : std_logic;
SIGNAL \inst4|Equal0~7_combout\ : std_logic;
SIGNAL \inst4|start_strobe1~q\ : std_logic;
SIGNAL \inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~6\ : std_logic;
SIGNAL \inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst4|Add0~2\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst4|Add0~30\ : std_logic;
SIGNAL \inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~26\ : std_logic;
SIGNAL \inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst4|Add0~22\ : std_logic;
SIGNAL \inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst4|Add0~18\ : std_logic;
SIGNAL \inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst4|Add0~10\ : std_logic;
SIGNAL \inst4|Add0~53_sumout\ : std_logic;
SIGNAL \inst4|Add0~54\ : std_logic;
SIGNAL \inst4|Add0~49_sumout\ : std_logic;
SIGNAL \inst4|Add0~50\ : std_logic;
SIGNAL \inst4|Add0~45_sumout\ : std_logic;
SIGNAL \inst4|Add0~46\ : std_logic;
SIGNAL \inst4|Add0~41_sumout\ : std_logic;
SIGNAL \inst4|Add0~42\ : std_logic;
SIGNAL \inst4|Add0~37_sumout\ : std_logic;
SIGNAL \inst4|Add0~38\ : std_logic;
SIGNAL \inst4|Add0~33_sumout\ : std_logic;
SIGNAL \inst4|Add0~34\ : std_logic;
SIGNAL \inst4|Add0~77_sumout\ : std_logic;
SIGNAL \inst4|Add0~78\ : std_logic;
SIGNAL \inst4|Add0~73_sumout\ : std_logic;
SIGNAL \inst4|Add0~74\ : std_logic;
SIGNAL \inst4|Add0~69_sumout\ : std_logic;
SIGNAL \inst4|Add0~70\ : std_logic;
SIGNAL \inst4|Add0~65_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~66\ : std_logic;
SIGNAL \inst4|Add0~61_sumout\ : std_logic;
SIGNAL \inst4|Add0~62\ : std_logic;
SIGNAL \inst4|Add0~81_sumout\ : std_logic;
SIGNAL \inst4|Add0~82\ : std_logic;
SIGNAL \inst4|Add0~57_sumout\ : std_logic;
SIGNAL \inst4|Equal1~3_combout\ : std_logic;
SIGNAL \inst4|Add0~58\ : std_logic;
SIGNAL \inst4|Add0~125_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~126\ : std_logic;
SIGNAL \inst4|Add0~121_sumout\ : std_logic;
SIGNAL \inst4|Add0~122\ : std_logic;
SIGNAL \inst4|Add0~117_sumout\ : std_logic;
SIGNAL \inst4|Add0~118\ : std_logic;
SIGNAL \inst4|Add0~113_sumout\ : std_logic;
SIGNAL \inst4|Add0~114\ : std_logic;
SIGNAL \inst4|Add0~109_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~110\ : std_logic;
SIGNAL \inst4|Add0~105_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~106\ : std_logic;
SIGNAL \inst4|Add0~101_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~102\ : std_logic;
SIGNAL \inst4|Add0~97_sumout\ : std_logic;
SIGNAL \inst4|Add0~98\ : std_logic;
SIGNAL \inst4|Add0~93_sumout\ : std_logic;
SIGNAL \inst4|clock_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add0~94\ : std_logic;
SIGNAL \inst4|Add0~89_sumout\ : std_logic;
SIGNAL \inst4|Add0~90\ : std_logic;
SIGNAL \inst4|Add0~85_sumout\ : std_logic;
SIGNAL \inst4|Equal1~4_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~5_combout\ : std_logic;
SIGNAL \inst4|clock_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|clock_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|clock_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|clock_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|Equal1~6_combout\ : std_logic;
SIGNAL \inst4|start_strobe1~0_combout\ : std_logic;
SIGNAL \inst4|start_strobe1~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Mux24~0_combout\ : std_logic;
SIGNAL \inst4|counter[31]~0_combout\ : std_logic;
SIGNAL \inst4|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Add2~1_sumout\ : std_logic;
SIGNAL \inst4|count[2]~1_combout\ : std_logic;
SIGNAL \inst4|count[2]~0_combout\ : std_logic;
SIGNAL \inst4|count[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Mux26~0_combout\ : std_logic;
SIGNAL \inst4|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Mux25~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux22~0_combout\ : std_logic;
SIGNAL \inst4|statemachine[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Mux23~0_combout\ : std_logic;
SIGNAL \inst4|Mux21~0_combout\ : std_logic;
SIGNAL \inst4|statemachine[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Mux28~0_combout\ : std_logic;
SIGNAL \inst4|ack~0_combout\ : std_logic;
SIGNAL \inst4|ack~q\ : std_logic;
SIGNAL \inst4|Mux23~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|sda_out~1_combout\ : std_logic;
SIGNAL \inst4|Mux20~10_combout\ : std_logic;
SIGNAL \inst4|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|Mux20~15_combout\ : std_logic;
SIGNAL \inst4|sda_out~2_combout\ : std_logic;
SIGNAL \inst4|Equal6~0_combout\ : std_logic;
SIGNAL \inst4|Equal6~1_combout\ : std_logic;
SIGNAL \inst4|Mux20~9_combout\ : std_logic;
SIGNAL \inst4|Mux20~11_combout\ : std_logic;
SIGNAL \inst4|sda_out~q\ : std_logic;
SIGNAL \inst4|Mux20~5_combout\ : std_logic;
SIGNAL \inst4|Mux20~6_combout\ : std_logic;
SIGNAL \inst4|Mux20~7_combout\ : std_logic;
SIGNAL \inst4|Mux20~8_combout\ : std_logic;
SIGNAL \inst4|Mux20~12_combout\ : std_logic;
SIGNAL \inst4|Mux20~13_combout\ : std_logic;
SIGNAL \inst4|Mux20~14_combout\ : std_logic;
SIGNAL \inst4|Mux20~3_combout\ : std_logic;
SIGNAL \inst4|Mux20~18_combout\ : std_logic;
SIGNAL \inst4|Equal0~8_combout\ : std_logic;
SIGNAL \inst4|Mux20~20_combout\ : std_logic;
SIGNAL \inst4|Mux20~19_combout\ : std_logic;
SIGNAL \inst4|Mux20~21_combout\ : std_logic;
SIGNAL \inst4|Mux20~1_combout\ : std_logic;
SIGNAL \inst4|Mux20~2_combout\ : std_logic;
SIGNAL \inst4|Mux20~22_combout\ : std_logic;
SIGNAL \inst4|Mux20~24_combout\ : std_logic;
SIGNAL \inst4|Mux20~23_combout\ : std_logic;
SIGNAL \inst4|Mux20~25_combout\ : std_logic;
SIGNAL \inst4|Mux20~16_combout\ : std_logic;
SIGNAL \inst4|Mux20~17_combout\ : std_logic;
SIGNAL \inst4|Mux20~0_combout\ : std_logic;
SIGNAL \inst4|Mux20~4_combout\ : std_logic;
SIGNAL \inst4|sda_out~0_combout\ : std_logic;
SIGNAL \inst4|sda_out~DUPLICATE_q\ : std_logic;
SIGNAL \inst|clock_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~89_sumout\ : std_logic;
SIGNAL \inst|Add0~90\ : std_logic;
SIGNAL \inst|Add0~93_sumout\ : std_logic;
SIGNAL \inst|clock_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~94\ : std_logic;
SIGNAL \inst|Add0~97_sumout\ : std_logic;
SIGNAL \inst|Add0~98\ : std_logic;
SIGNAL \inst|Add0~101_sumout\ : std_logic;
SIGNAL \inst|clock_counter[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~102\ : std_logic;
SIGNAL \inst|Add0~105_sumout\ : std_logic;
SIGNAL \inst|Add0~106\ : std_logic;
SIGNAL \inst|Add0~109_sumout\ : std_logic;
SIGNAL \inst|Add0~110\ : std_logic;
SIGNAL \inst|Add0~113_sumout\ : std_logic;
SIGNAL \inst|Add0~114\ : std_logic;
SIGNAL \inst|Add0~117_sumout\ : std_logic;
SIGNAL \inst|clock_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~118\ : std_logic;
SIGNAL \inst|Add0~73_sumout\ : std_logic;
SIGNAL \inst|Add0~74\ : std_logic;
SIGNAL \inst|Add0~121_sumout\ : std_logic;
SIGNAL \inst|Add0~122\ : std_logic;
SIGNAL \inst|Add0~125_sumout\ : std_logic;
SIGNAL \inst|Add0~126\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \inst|clock_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~61_sumout\ : std_logic;
SIGNAL \inst|clock_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~65_sumout\ : std_logic;
SIGNAL \inst|Add0~66\ : std_logic;
SIGNAL \inst|Add0~77_sumout\ : std_logic;
SIGNAL \inst|Add0~78\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|clock_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|clock_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~85_sumout\ : std_logic;
SIGNAL \inst|clock_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~86\ : std_logic;
SIGNAL \inst|Add0~81_sumout\ : std_logic;
SIGNAL \inst|clock_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~82\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|clock_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~69_sumout\ : std_logic;
SIGNAL \inst|Add0~70\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst|clock_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|clock_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|clock_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|clk_i2c~0_combout\ : std_logic;
SIGNAL \inst|clk_i2c~q\ : std_logic;
SIGNAL \inst1|daclrc~feeder_combout\ : std_logic;
SIGNAL \inst1|count[0]~2_combout\ : std_logic;
SIGNAL \inst1|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|count[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|statemachine~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|daclrc~0_combout\ : std_logic;
SIGNAL \inst1|daclrc~q\ : std_logic;
SIGNAL \inst1|adclrc~feeder_combout\ : std_logic;
SIGNAL \inst1|adclrc~q\ : std_logic;
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \inst1|dacdat~q\ : std_logic;
SIGNAL \inst4|Mux19~0_combout\ : std_logic;
SIGNAL \inst4|scl_out~q\ : std_logic;
SIGNAL \inst|Add1~89_sumout\ : std_logic;
SIGNAL \inst|Add1~90\ : std_logic;
SIGNAL \inst|Add1~93_sumout\ : std_logic;
SIGNAL \inst|Add1~94\ : std_logic;
SIGNAL \inst|Add1~97_sumout\ : std_logic;
SIGNAL \inst|Add1~98\ : std_logic;
SIGNAL \inst|Add1~101_sumout\ : std_logic;
SIGNAL \inst|Add1~102\ : std_logic;
SIGNAL \inst|Add1~105_sumout\ : std_logic;
SIGNAL \inst|Add1~106\ : std_logic;
SIGNAL \inst|Add1~109_sumout\ : std_logic;
SIGNAL \inst|Add1~110\ : std_logic;
SIGNAL \inst|Add1~113_sumout\ : std_logic;
SIGNAL \inst|Add1~114\ : std_logic;
SIGNAL \inst|Add1~117_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~118\ : std_logic;
SIGNAL \inst|Add1~121_sumout\ : std_logic;
SIGNAL \inst|Add1~122\ : std_logic;
SIGNAL \inst|Add1~57_sumout\ : std_logic;
SIGNAL \inst|Add1~58\ : std_logic;
SIGNAL \inst|Add1~61_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~62\ : std_logic;
SIGNAL \inst|Add1~65_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~66\ : std_logic;
SIGNAL \inst|Add1~125_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~126\ : std_logic;
SIGNAL \inst|Add1~69_sumout\ : std_logic;
SIGNAL \inst|Add1~70\ : std_logic;
SIGNAL \inst|Add1~73_sumout\ : std_logic;
SIGNAL \inst|Add1~74\ : std_logic;
SIGNAL \inst|Add1~77_sumout\ : std_logic;
SIGNAL \inst|Add1~78\ : std_logic;
SIGNAL \inst|Add1~33_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~34\ : std_logic;
SIGNAL \inst|Add1~37_sumout\ : std_logic;
SIGNAL \inst|Add1~38\ : std_logic;
SIGNAL \inst|Add1~41_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~49_sumout\ : std_logic;
SIGNAL \inst|clock_counter1[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add1~50\ : std_logic;
SIGNAL \inst|Add1~53_sumout\ : std_logic;
SIGNAL \inst|Add1~54\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~85_sumout\ : std_logic;
SIGNAL \inst|Add1~86\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~81_sumout\ : std_logic;
SIGNAL \inst|Add1~82\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|clock_counter1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|clock_counter1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|clock_counter1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|clock_counter1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~45_sumout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|clock_counter1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|clock_counter1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|clock_counter1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|clk_i2c1~0_combout\ : std_logic;
SIGNAL \inst|clk_i2c1~q\ : std_logic;
SIGNAL \inst|clock_counter1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|statemachine\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|clock_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|clock_counter2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|clock_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|statemachine\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_clock_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_clock_counter1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|ALT_INV_statemachine\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ALT_INV_start_strobe1~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_sda_out~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[30]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[26]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[20]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[18]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst4|ALT_INV_sda_out~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sda_out~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~24_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~23_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~22_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~21_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~20_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~19_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~18_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~17_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~16_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_count[2]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_count[2]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_clk_i2c2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ack~q\ : std_logic;
SIGNAL \inst4|ALT_INV_start_strobe1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~15_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~14_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~13_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~12_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~11_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~10_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~9_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~7_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_clk_i2c2~q\ : std_logic;
SIGNAL \inst4|ALT_INV_sda_out~q\ : std_logic;
SIGNAL \inst1|ALT_INV_daclrc~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_statemachine\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_clk_i2c~q\ : std_logic;
SIGNAL \inst|ALT_INV_clk_i2c1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_scl_out~q\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux20~25_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_clock_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_clock_counter2\ : std_logic_vector(31 DOWNTO 0);

BEGIN

daclrc <= ww_daclrc;
ww_clock_50 <= clock_50;
ww_reset <= reset;
ww_adcdat <= adcdat;
adclrc <= ww_adclrc;
dacdata <= ww_dacdata;
sda <= ww_sda;
scl <= ww_scl;
MCLK <= ww_MCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_clock_counter\(17) <= NOT \inst|clock_counter\(17);
\inst|ALT_INV_clock_counter\(16) <= NOT \inst|clock_counter\(16);
\inst|ALT_INV_clock_counter\(15) <= NOT \inst|clock_counter\(15);
\inst|ALT_INV_clock_counter\(22) <= NOT \inst|clock_counter\(22);
\inst|ALT_INV_clock_counter\(23) <= NOT \inst|clock_counter\(23);
\inst|ALT_INV_clock_counter\(25) <= NOT \inst|clock_counter\(25);
\inst|ALT_INV_clock_counter\(26) <= NOT \inst|clock_counter\(26);
\inst|ALT_INV_clock_counter\(27) <= NOT \inst|clock_counter\(27);
\inst|ALT_INV_clock_counter\(28) <= NOT \inst|clock_counter\(28);
\inst|ALT_INV_clock_counter\(20) <= NOT \inst|clock_counter\(20);
\inst|ALT_INV_clock_counter\(21) <= NOT \inst|clock_counter\(21);
\inst|ALT_INV_clock_counter1\(12) <= NOT \inst|clock_counter1\(12);
\inst|ALT_INV_clock_counter1\(8) <= NOT \inst|clock_counter1\(8);
\inst|ALT_INV_clock_counter1\(7) <= NOT \inst|clock_counter1\(7);
\inst|ALT_INV_clock_counter1\(6) <= NOT \inst|clock_counter1\(6);
\inst|ALT_INV_clock_counter1\(5) <= NOT \inst|clock_counter1\(5);
\inst|ALT_INV_clock_counter1\(4) <= NOT \inst|clock_counter1\(4);
\inst|ALT_INV_clock_counter1\(3) <= NOT \inst|clock_counter1\(3);
\inst|ALT_INV_clock_counter1\(2) <= NOT \inst|clock_counter1\(2);
\inst|ALT_INV_clock_counter1\(1) <= NOT \inst|clock_counter1\(1);
\inst|ALT_INV_clock_counter1\(0) <= NOT \inst|clock_counter1\(0);
\inst|ALT_INV_clock_counter1\(26) <= NOT \inst|clock_counter1\(26);
\inst|ALT_INV_clock_counter1\(28) <= NOT \inst|clock_counter1\(28);
\inst|ALT_INV_clock_counter1\(15) <= NOT \inst|clock_counter1\(15);
\inst|ALT_INV_clock_counter1\(14) <= NOT \inst|clock_counter1\(14);
\inst|ALT_INV_clock_counter1\(13) <= NOT \inst|clock_counter1\(13);
\inst|ALT_INV_clock_counter1\(11) <= NOT \inst|clock_counter1\(11);
\inst|ALT_INV_clock_counter1\(10) <= NOT \inst|clock_counter1\(10);
\inst|ALT_INV_clock_counter1\(9) <= NOT \inst|clock_counter1\(9);
\inst|ALT_INV_clock_counter1\(20) <= NOT \inst|clock_counter1\(20);
\inst|ALT_INV_clock_counter1\(19) <= NOT \inst|clock_counter1\(19);
\inst|ALT_INV_clock_counter1\(31) <= NOT \inst|clock_counter1\(31);
\inst|ALT_INV_clock_counter1\(18) <= NOT \inst|clock_counter1\(18);
\inst|ALT_INV_clock_counter1\(17) <= NOT \inst|clock_counter1\(17);
\inst|ALT_INV_clock_counter1\(16) <= NOT \inst|clock_counter1\(16);
\inst|ALT_INV_clock_counter1\(29) <= NOT \inst|clock_counter1\(29);
\inst|ALT_INV_clock_counter1\(24) <= NOT \inst|clock_counter1\(24);
\inst|ALT_INV_clock_counter1\(30) <= NOT \inst|clock_counter1\(30);
\inst|ALT_INV_clock_counter1\(23) <= NOT \inst|clock_counter1\(23);
\inst|ALT_INV_clock_counter1\(22) <= NOT \inst|clock_counter1\(22);
\inst|ALT_INV_clock_counter1\(21) <= NOT \inst|clock_counter1\(21);
\inst|ALT_INV_clock_counter1\(27) <= NOT \inst|clock_counter1\(27);
\inst|ALT_INV_clock_counter1\(25) <= NOT \inst|clock_counter1\(25);
\inst4|ALT_INV_statemachine\(0) <= NOT \inst4|statemachine\(0);
\inst4|ALT_INV_start_strobe1~DUPLICATE_q\ <= NOT \inst4|start_strobe1~DUPLICATE_q\;
\inst4|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \inst4|count[1]~DUPLICATE_q\;
\inst1|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \inst1|count[1]~DUPLICATE_q\;
\inst1|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \inst1|count[0]~DUPLICATE_q\;
\inst1|ALT_INV_count[2]~DUPLICATE_q\ <= NOT \inst1|count[2]~DUPLICATE_q\;
\inst1|ALT_INV_count[3]~DUPLICATE_q\ <= NOT \inst1|count[3]~DUPLICATE_q\;
\inst4|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \inst4|counter[1]~DUPLICATE_q\;
\inst4|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \inst4|counter[3]~DUPLICATE_q\;
\inst4|ALT_INV_counter[20]~DUPLICATE_q\ <= NOT \inst4|counter[20]~DUPLICATE_q\;
\inst4|ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \inst4|counter[21]~DUPLICATE_q\;
\inst4|ALT_INV_counter[24]~DUPLICATE_q\ <= NOT \inst4|counter[24]~DUPLICATE_q\;
\inst4|ALT_INV_counter[25]~DUPLICATE_q\ <= NOT \inst4|counter[25]~DUPLICATE_q\;
\inst4|ALT_INV_counter[28]~DUPLICATE_q\ <= NOT \inst4|counter[28]~DUPLICATE_q\;
\inst4|ALT_INV_counter[29]~DUPLICATE_q\ <= NOT \inst4|counter[29]~DUPLICATE_q\;
\inst4|ALT_INV_counter[14]~DUPLICATE_q\ <= NOT \inst4|counter[14]~DUPLICATE_q\;
\inst4|ALT_INV_counter[17]~DUPLICATE_q\ <= NOT \inst4|counter[17]~DUPLICATE_q\;
\inst4|ALT_INV_counter[18]~DUPLICATE_q\ <= NOT \inst4|counter[18]~DUPLICATE_q\;
\inst4|ALT_INV_counter[19]~DUPLICATE_q\ <= NOT \inst4|counter[19]~DUPLICATE_q\;
\inst4|ALT_INV_counter[8]~DUPLICATE_q\ <= NOT \inst4|counter[8]~DUPLICATE_q\;
\inst4|ALT_INV_counter[9]~DUPLICATE_q\ <= NOT \inst4|counter[9]~DUPLICATE_q\;
\inst4|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \inst4|counter[12]~DUPLICATE_q\;
\inst4|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \inst4|counter[5]~DUPLICATE_q\;
\inst4|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \inst4|counter[2]~DUPLICATE_q\;
\inst4|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \inst4|counter[0]~DUPLICATE_q\;
\inst4|ALT_INV_statemachine[3]~DUPLICATE_q\ <= NOT \inst4|statemachine[3]~DUPLICATE_q\;
\inst4|ALT_INV_statemachine[2]~DUPLICATE_q\ <= NOT \inst4|statemachine[2]~DUPLICATE_q\;
\inst4|ALT_INV_sda_out~DUPLICATE_q\ <= NOT \inst4|sda_out~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[21]~DUPLICATE_q\ <= NOT \inst4|clock_counter[21]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[25]~DUPLICATE_q\ <= NOT \inst4|clock_counter[25]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[26]~DUPLICATE_q\ <= NOT \inst4|clock_counter[26]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[27]~DUPLICATE_q\ <= NOT \inst4|clock_counter[27]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[30]~DUPLICATE_q\ <= NOT \inst4|clock_counter[30]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[17]~DUPLICATE_q\ <= NOT \inst4|clock_counter[17]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[9]~DUPLICATE_q\ <= NOT \inst4|clock_counter[9]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[10]~DUPLICATE_q\ <= NOT \inst4|clock_counter[10]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[2]~DUPLICATE_q\ <= NOT \inst4|clock_counter[2]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[3]~DUPLICATE_q\ <= NOT \inst4|clock_counter[3]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[4]~DUPLICATE_q\ <= NOT \inst4|clock_counter[4]~DUPLICATE_q\;
\inst4|ALT_INV_clock_counter[0]~DUPLICATE_q\ <= NOT \inst4|clock_counter[0]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[28]~DUPLICATE_q\ <= NOT \inst|clock_counter2[28]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[30]~DUPLICATE_q\ <= NOT \inst|clock_counter2[30]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[11]~DUPLICATE_q\ <= NOT \inst|clock_counter2[11]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[12]~DUPLICATE_q\ <= NOT \inst|clock_counter2[12]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[7]~DUPLICATE_q\ <= NOT \inst|clock_counter2[7]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[26]~DUPLICATE_q\ <= NOT \inst|clock_counter2[26]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[19]~DUPLICATE_q\ <= NOT \inst|clock_counter2[19]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[20]~DUPLICATE_q\ <= NOT \inst|clock_counter2[20]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[17]~DUPLICATE_q\ <= NOT \inst|clock_counter2[17]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[4]~DUPLICATE_q\ <= NOT \inst|clock_counter2[4]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[15]~DUPLICATE_q\ <= NOT \inst|clock_counter2[15]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter2[1]~DUPLICATE_q\ <= NOT \inst|clock_counter2[1]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[7]~DUPLICATE_q\ <= NOT \inst|clock_counter[7]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[1]~DUPLICATE_q\ <= NOT \inst|clock_counter[1]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[18]~DUPLICATE_q\ <= NOT \inst|clock_counter[18]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[19]~DUPLICATE_q\ <= NOT \inst|clock_counter[19]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[24]~DUPLICATE_q\ <= NOT \inst|clock_counter[24]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[12]~DUPLICATE_q\ <= NOT \inst|clock_counter[12]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[11]~DUPLICATE_q\ <= NOT \inst|clock_counter[11]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[29]~DUPLICATE_q\ <= NOT \inst|clock_counter[29]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[17]~DUPLICATE_q\ <= NOT \inst|clock_counter[17]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[16]~DUPLICATE_q\ <= NOT \inst|clock_counter[16]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[15]~DUPLICATE_q\ <= NOT \inst|clock_counter[15]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[28]~DUPLICATE_q\ <= NOT \inst|clock_counter[28]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter[21]~DUPLICATE_q\ <= NOT \inst|clock_counter[21]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[12]~DUPLICATE_q\ <= NOT \inst|clock_counter1[12]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[7]~DUPLICATE_q\ <= NOT \inst|clock_counter1[7]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[4]~DUPLICATE_q\ <= NOT \inst|clock_counter1[4]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[3]~DUPLICATE_q\ <= NOT \inst|clock_counter1[3]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[2]~DUPLICATE_q\ <= NOT \inst|clock_counter1[2]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[1]~DUPLICATE_q\ <= NOT \inst|clock_counter1[1]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[0]~DUPLICATE_q\ <= NOT \inst|clock_counter1[0]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[14]~DUPLICATE_q\ <= NOT \inst|clock_counter1[14]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[13]~DUPLICATE_q\ <= NOT \inst|clock_counter1[13]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[11]~DUPLICATE_q\ <= NOT \inst|clock_counter1[11]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[10]~DUPLICATE_q\ <= NOT \inst|clock_counter1[10]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[19]~DUPLICATE_q\ <= NOT \inst|clock_counter1[19]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[18]~DUPLICATE_q\ <= NOT \inst|clock_counter1[18]~DUPLICATE_q\;
\inst|ALT_INV_clock_counter1[16]~DUPLICATE_q\ <= NOT \inst|clock_counter1[16]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst4|ALT_INV_sda_out~2_combout\ <= NOT \inst4|sda_out~2_combout\;
\inst4|ALT_INV_sda_out~1_combout\ <= NOT \inst4|sda_out~1_combout\;
\inst4|ALT_INV_Mux20~24_combout\ <= NOT \inst4|Mux20~24_combout\;
\inst4|ALT_INV_Mux20~23_combout\ <= NOT \inst4|Mux20~23_combout\;
\inst4|ALT_INV_Mux20~22_combout\ <= NOT \inst4|Mux20~22_combout\;
\inst4|ALT_INV_Mux20~21_combout\ <= NOT \inst4|Mux20~21_combout\;
\inst4|ALT_INV_Mux20~20_combout\ <= NOT \inst4|Mux20~20_combout\;
\inst4|ALT_INV_Mux20~19_combout\ <= NOT \inst4|Mux20~19_combout\;
\inst4|ALT_INV_Mux20~18_combout\ <= NOT \inst4|Mux20~18_combout\;
\inst4|ALT_INV_Mux20~17_combout\ <= NOT \inst4|Mux20~17_combout\;
\inst4|ALT_INV_Mux20~16_combout\ <= NOT \inst4|Mux20~16_combout\;
\inst4|ALT_INV_Mux28~0_combout\ <= NOT \inst4|Mux28~0_combout\;
\inst4|ALT_INV_Equal1~6_combout\ <= NOT \inst4|Equal1~6_combout\;
\inst4|ALT_INV_Equal1~5_combout\ <= NOT \inst4|Equal1~5_combout\;
\inst4|ALT_INV_Equal1~4_combout\ <= NOT \inst4|Equal1~4_combout\;
\inst4|ALT_INV_Equal1~3_combout\ <= NOT \inst4|Equal1~3_combout\;
\inst4|ALT_INV_Equal1~2_combout\ <= NOT \inst4|Equal1~2_combout\;
\inst4|ALT_INV_Equal1~1_combout\ <= NOT \inst4|Equal1~1_combout\;
\inst4|ALT_INV_Equal1~0_combout\ <= NOT \inst4|Equal1~0_combout\;
\inst4|ALT_INV_count[2]~1_combout\ <= NOT \inst4|count[2]~1_combout\;
\inst4|ALT_INV_count[2]~0_combout\ <= NOT \inst4|count[2]~0_combout\;
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\inst1|ALT_INV_Mux4~0_combout\ <= NOT \inst1|Mux4~0_combout\;
\inst|ALT_INV_clk_i2c2~0_combout\ <= NOT \inst|clk_i2c2~0_combout\;
\inst|ALT_INV_Equal2~6_combout\ <= NOT \inst|Equal2~6_combout\;
\inst|ALT_INV_Equal2~5_combout\ <= NOT \inst|Equal2~5_combout\;
\inst|ALT_INV_Equal2~4_combout\ <= NOT \inst|Equal2~4_combout\;
\inst|ALT_INV_Equal2~3_combout\ <= NOT \inst|Equal2~3_combout\;
\inst|ALT_INV_Equal2~2_combout\ <= NOT \inst|Equal2~2_combout\;
\inst|ALT_INV_Equal2~1_combout\ <= NOT \inst|Equal2~1_combout\;
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst4|ALT_INV_Mux23~0_combout\ <= NOT \inst4|Mux23~0_combout\;
\inst4|ALT_INV_ack~q\ <= NOT \inst4|ack~q\;
\inst4|ALT_INV_start_strobe1~q\ <= NOT \inst4|start_strobe1~q\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst4|ALT_INV_Mux20~15_combout\ <= NOT \inst4|Mux20~15_combout\;
\inst4|ALT_INV_Mux20~14_combout\ <= NOT \inst4|Mux20~14_combout\;
\inst4|ALT_INV_Mux20~13_combout\ <= NOT \inst4|Mux20~13_combout\;
\inst4|ALT_INV_Mux20~12_combout\ <= NOT \inst4|Mux20~12_combout\;
\inst4|ALT_INV_Mux20~11_combout\ <= NOT \inst4|Mux20~11_combout\;
\inst4|ALT_INV_Mux20~10_combout\ <= NOT \inst4|Mux20~10_combout\;
\inst4|ALT_INV_Mux20~9_combout\ <= NOT \inst4|Mux20~9_combout\;
\inst4|ALT_INV_Mux20~8_combout\ <= NOT \inst4|Mux20~8_combout\;
\inst4|ALT_INV_Mux20~7_combout\ <= NOT \inst4|Mux20~7_combout\;
\inst4|ALT_INV_Mux10~0_combout\ <= NOT \inst4|Mux10~0_combout\;
\inst4|ALT_INV_Mux20~6_combout\ <= NOT \inst4|Mux20~6_combout\;
\inst4|ALT_INV_Mux20~5_combout\ <= NOT \inst4|Mux20~5_combout\;
\inst4|ALT_INV_Mux20~4_combout\ <= NOT \inst4|Mux20~4_combout\;
\inst4|ALT_INV_Mux20~3_combout\ <= NOT \inst4|Mux20~3_combout\;
\inst4|ALT_INV_Mux20~2_combout\ <= NOT \inst4|Mux20~2_combout\;
\inst4|ALT_INV_Mux20~1_combout\ <= NOT \inst4|Mux20~1_combout\;
\inst4|ALT_INV_Equal6~1_combout\ <= NOT \inst4|Equal6~1_combout\;
\inst4|ALT_INV_Equal6~0_combout\ <= NOT \inst4|Equal6~0_combout\;
\inst4|ALT_INV_Mux20~0_combout\ <= NOT \inst4|Mux20~0_combout\;
\inst4|ALT_INV_Mux15~0_combout\ <= NOT \inst4|Mux15~0_combout\;
\inst4|ALT_INV_count\(1) <= NOT \inst4|count\(1);
\inst4|ALT_INV_Equal0~8_combout\ <= NOT \inst4|Equal0~8_combout\;
\inst4|ALT_INV_count\(0) <= NOT \inst4|count\(0);
\inst4|ALT_INV_count\(2) <= NOT \inst4|count\(2);
\inst4|ALT_INV_Equal2~0_combout\ <= NOT \inst4|Equal2~0_combout\;
\inst1|ALT_INV_count\(1) <= NOT \inst1|count\(1);
\inst1|ALT_INV_count\(0) <= NOT \inst1|count\(0);
\inst1|ALT_INV_count\(2) <= NOT \inst1|count\(2);
\inst1|ALT_INV_count\(3) <= NOT \inst1|count\(3);
\inst|ALT_INV_Equal0~6_combout\ <= NOT \inst|Equal0~6_combout\;
\inst|ALT_INV_Equal0~5_combout\ <= NOT \inst|Equal0~5_combout\;
\inst|ALT_INV_Equal0~4_combout\ <= NOT \inst|Equal0~4_combout\;
\inst|ALT_INV_Equal0~3_combout\ <= NOT \inst|Equal0~3_combout\;
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_Equal1~6_combout\ <= NOT \inst|Equal1~6_combout\;
\inst|ALT_INV_Equal1~5_combout\ <= NOT \inst|Equal1~5_combout\;
\inst|ALT_INV_Equal1~4_combout\ <= NOT \inst|Equal1~4_combout\;
\inst|ALT_INV_Equal1~3_combout\ <= NOT \inst|Equal1~3_combout\;
\inst|ALT_INV_Equal1~2_combout\ <= NOT \inst|Equal1~2_combout\;
\inst|ALT_INV_Equal1~1_combout\ <= NOT \inst|Equal1~1_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst4|ALT_INV_Equal0~7_combout\ <= NOT \inst4|Equal0~7_combout\;
\inst4|ALT_INV_Equal0~6_combout\ <= NOT \inst4|Equal0~6_combout\;
\inst4|ALT_INV_counter\(1) <= NOT \inst4|counter\(1);
\inst4|ALT_INV_counter\(3) <= NOT \inst4|counter\(3);
\inst4|ALT_INV_Equal0~5_combout\ <= NOT \inst4|Equal0~5_combout\;
\inst4|ALT_INV_Equal0~4_combout\ <= NOT \inst4|Equal0~4_combout\;
\inst4|ALT_INV_counter\(20) <= NOT \inst4|counter\(20);
\inst4|ALT_INV_counter\(21) <= NOT \inst4|counter\(21);
\inst4|ALT_INV_counter\(22) <= NOT \inst4|counter\(22);
\inst4|ALT_INV_counter\(23) <= NOT \inst4|counter\(23);
\inst4|ALT_INV_counter\(24) <= NOT \inst4|counter\(24);
\inst4|ALT_INV_counter\(25) <= NOT \inst4|counter\(25);
\inst4|ALT_INV_Equal0~3_combout\ <= NOT \inst4|Equal0~3_combout\;
\inst4|ALT_INV_counter\(26) <= NOT \inst4|counter\(26);
\inst4|ALT_INV_counter\(27) <= NOT \inst4|counter\(27);
\inst4|ALT_INV_counter\(28) <= NOT \inst4|counter\(28);
\inst4|ALT_INV_counter\(29) <= NOT \inst4|counter\(29);
\inst4|ALT_INV_counter\(30) <= NOT \inst4|counter\(30);
\inst4|ALT_INV_counter\(31) <= NOT \inst4|counter\(31);
\inst4|ALT_INV_Equal0~2_combout\ <= NOT \inst4|Equal0~2_combout\;
\inst4|ALT_INV_counter\(14) <= NOT \inst4|counter\(14);
\inst4|ALT_INV_counter\(15) <= NOT \inst4|counter\(15);
\inst4|ALT_INV_counter\(16) <= NOT \inst4|counter\(16);
\inst4|ALT_INV_counter\(17) <= NOT \inst4|counter\(17);
\inst4|ALT_INV_counter\(18) <= NOT \inst4|counter\(18);
\inst4|ALT_INV_counter\(19) <= NOT \inst4|counter\(19);
\inst4|ALT_INV_Equal0~1_combout\ <= NOT \inst4|Equal0~1_combout\;
\inst4|ALT_INV_counter\(8) <= NOT \inst4|counter\(8);
\inst4|ALT_INV_counter\(9) <= NOT \inst4|counter\(9);
\inst4|ALT_INV_counter\(10) <= NOT \inst4|counter\(10);
\inst4|ALT_INV_counter\(11) <= NOT \inst4|counter\(11);
\inst4|ALT_INV_counter\(12) <= NOT \inst4|counter\(12);
\inst4|ALT_INV_counter\(13) <= NOT \inst4|counter\(13);
\inst4|ALT_INV_Equal0~0_combout\ <= NOT \inst4|Equal0~0_combout\;
\inst4|ALT_INV_counter\(4) <= NOT \inst4|counter\(4);
\inst4|ALT_INV_counter\(5) <= NOT \inst4|counter\(5);
\inst4|ALT_INV_counter\(6) <= NOT \inst4|counter\(6);
\inst4|ALT_INV_counter\(7) <= NOT \inst4|counter\(7);
\inst4|ALT_INV_counter\(2) <= NOT \inst4|counter\(2);
\inst4|ALT_INV_counter\(0) <= NOT \inst4|counter\(0);
\inst|ALT_INV_clk_i2c2~q\ <= NOT \inst|clk_i2c2~q\;
\inst4|ALT_INV_statemachine\(3) <= NOT \inst4|statemachine\(3);
\inst4|ALT_INV_statemachine\(2) <= NOT \inst4|statemachine\(2);
\inst4|ALT_INV_statemachine\(1) <= NOT \inst4|statemachine\(1);
\inst4|ALT_INV_sda_out~q\ <= NOT \inst4|sda_out~q\;
\inst1|ALT_INV_daclrc~0_combout\ <= NOT \inst1|daclrc~0_combout\;
\inst1|ALT_INV_statemachine\(0) <= NOT \inst1|statemachine\(0);
\inst1|ALT_INV_statemachine\(1) <= NOT \inst1|statemachine\(1);
\inst|ALT_INV_clk_i2c~q\ <= NOT \inst|clk_i2c~q\;
\inst|ALT_INV_clk_i2c1~q\ <= NOT \inst|clk_i2c1~q\;
\inst4|ALT_INV_scl_out~q\ <= NOT \inst4|scl_out~q\;
\inst4|ALT_INV_Mux20~25_combout\ <= NOT \inst4|Mux20~25_combout\;
\inst4|ALT_INV_clock_counter\(21) <= NOT \inst4|clock_counter\(21);
\inst4|ALT_INV_clock_counter\(22) <= NOT \inst4|clock_counter\(22);
\inst4|ALT_INV_clock_counter\(23) <= NOT \inst4|clock_counter\(23);
\inst4|ALT_INV_clock_counter\(24) <= NOT \inst4|clock_counter\(24);
\inst4|ALT_INV_clock_counter\(25) <= NOT \inst4|clock_counter\(25);
\inst4|ALT_INV_clock_counter\(26) <= NOT \inst4|clock_counter\(26);
\inst4|ALT_INV_clock_counter\(27) <= NOT \inst4|clock_counter\(27);
\inst4|ALT_INV_clock_counter\(28) <= NOT \inst4|clock_counter\(28);
\inst4|ALT_INV_clock_counter\(29) <= NOT \inst4|clock_counter\(29);
\inst4|ALT_INV_clock_counter\(30) <= NOT \inst4|clock_counter\(30);
\inst4|ALT_INV_clock_counter\(31) <= NOT \inst4|clock_counter\(31);
\inst4|ALT_INV_clock_counter\(19) <= NOT \inst4|clock_counter\(19);
\inst4|ALT_INV_clock_counter\(14) <= NOT \inst4|clock_counter\(14);
\inst4|ALT_INV_clock_counter\(15) <= NOT \inst4|clock_counter\(15);
\inst4|ALT_INV_clock_counter\(16) <= NOT \inst4|clock_counter\(16);
\inst4|ALT_INV_clock_counter\(17) <= NOT \inst4|clock_counter\(17);
\inst4|ALT_INV_clock_counter\(18) <= NOT \inst4|clock_counter\(18);
\inst4|ALT_INV_clock_counter\(20) <= NOT \inst4|clock_counter\(20);
\inst4|ALT_INV_clock_counter\(8) <= NOT \inst4|clock_counter\(8);
\inst4|ALT_INV_clock_counter\(9) <= NOT \inst4|clock_counter\(9);
\inst4|ALT_INV_clock_counter\(10) <= NOT \inst4|clock_counter\(10);
\inst4|ALT_INV_clock_counter\(11) <= NOT \inst4|clock_counter\(11);
\inst4|ALT_INV_clock_counter\(12) <= NOT \inst4|clock_counter\(12);
\inst4|ALT_INV_clock_counter\(13) <= NOT \inst4|clock_counter\(13);
\inst4|ALT_INV_clock_counter\(2) <= NOT \inst4|clock_counter\(2);
\inst4|ALT_INV_clock_counter\(3) <= NOT \inst4|clock_counter\(3);
\inst4|ALT_INV_clock_counter\(4) <= NOT \inst4|clock_counter\(4);
\inst4|ALT_INV_clock_counter\(5) <= NOT \inst4|clock_counter\(5);
\inst4|ALT_INV_clock_counter\(6) <= NOT \inst4|clock_counter\(6);
\inst4|ALT_INV_clock_counter\(7) <= NOT \inst4|clock_counter\(7);
\inst4|ALT_INV_clock_counter\(0) <= NOT \inst4|clock_counter\(0);
\inst4|ALT_INV_clock_counter\(1) <= NOT \inst4|clock_counter\(1);
\inst|ALT_INV_Add0~101_sumout\ <= NOT \inst|Add0~101_sumout\;
\inst|ALT_INV_clock_counter2\(27) <= NOT \inst|clock_counter2\(27);
\inst|ALT_INV_clock_counter2\(28) <= NOT \inst|clock_counter2\(28);
\inst|ALT_INV_clock_counter2\(29) <= NOT \inst|clock_counter2\(29);
\inst|ALT_INV_clock_counter2\(30) <= NOT \inst|clock_counter2\(30);
\inst|ALT_INV_clock_counter2\(8) <= NOT \inst|clock_counter2\(8);
\inst|ALT_INV_clock_counter2\(9) <= NOT \inst|clock_counter2\(9);
\inst|ALT_INV_clock_counter2\(10) <= NOT \inst|clock_counter2\(10);
\inst|ALT_INV_clock_counter2\(11) <= NOT \inst|clock_counter2\(11);
\inst|ALT_INV_clock_counter2\(12) <= NOT \inst|clock_counter2\(12);
\inst|ALT_INV_clock_counter2\(13) <= NOT \inst|clock_counter2\(13);
\inst|ALT_INV_clock_counter2\(14) <= NOT \inst|clock_counter2\(14);
\inst|ALT_INV_clock_counter2\(7) <= NOT \inst|clock_counter2\(7);
\inst|ALT_INV_clock_counter2\(21) <= NOT \inst|clock_counter2\(21);
\inst|ALT_INV_clock_counter2\(22) <= NOT \inst|clock_counter2\(22);
\inst|ALT_INV_clock_counter2\(23) <= NOT \inst|clock_counter2\(23);
\inst|ALT_INV_clock_counter2\(24) <= NOT \inst|clock_counter2\(24);
\inst|ALT_INV_clock_counter2\(25) <= NOT \inst|clock_counter2\(25);
\inst|ALT_INV_clock_counter2\(26) <= NOT \inst|clock_counter2\(26);
\inst|ALT_INV_clock_counter2\(16) <= NOT \inst|clock_counter2\(16);
\inst|ALT_INV_clock_counter2\(18) <= NOT \inst|clock_counter2\(18);
\inst|ALT_INV_clock_counter2\(19) <= NOT \inst|clock_counter2\(19);
\inst|ALT_INV_clock_counter2\(20) <= NOT \inst|clock_counter2\(20);
\inst|ALT_INV_clock_counter2\(17) <= NOT \inst|clock_counter2\(17);
\inst|ALT_INV_clock_counter2\(31) <= NOT \inst|clock_counter2\(31);
\inst|ALT_INV_clock_counter2\(2) <= NOT \inst|clock_counter2\(2);
\inst|ALT_INV_clock_counter2\(3) <= NOT \inst|clock_counter2\(3);
\inst|ALT_INV_clock_counter2\(4) <= NOT \inst|clock_counter2\(4);
\inst|ALT_INV_clock_counter2\(5) <= NOT \inst|clock_counter2\(5);
\inst|ALT_INV_clock_counter2\(6) <= NOT \inst|clock_counter2\(6);
\inst|ALT_INV_clock_counter2\(15) <= NOT \inst|clock_counter2\(15);
\inst|ALT_INV_clock_counter2\(0) <= NOT \inst|clock_counter2\(0);
\inst|ALT_INV_clock_counter2\(1) <= NOT \inst|clock_counter2\(1);
\inst|ALT_INV_clock_counter\(10) <= NOT \inst|clock_counter\(10);
\inst|ALT_INV_clock_counter\(9) <= NOT \inst|clock_counter\(9);
\inst|ALT_INV_clock_counter\(7) <= NOT \inst|clock_counter\(7);
\inst|ALT_INV_clock_counter\(6) <= NOT \inst|clock_counter\(6);
\inst|ALT_INV_clock_counter\(5) <= NOT \inst|clock_counter\(5);
\inst|ALT_INV_clock_counter\(4) <= NOT \inst|clock_counter\(4);
\inst|ALT_INV_clock_counter\(3) <= NOT \inst|clock_counter\(3);
\inst|ALT_INV_clock_counter\(2) <= NOT \inst|clock_counter\(2);
\inst|ALT_INV_clock_counter\(1) <= NOT \inst|clock_counter\(1);
\inst|ALT_INV_clock_counter\(0) <= NOT \inst|clock_counter\(0);
\inst|ALT_INV_clock_counter\(18) <= NOT \inst|clock_counter\(18);
\inst|ALT_INV_clock_counter\(19) <= NOT \inst|clock_counter\(19);
\inst|ALT_INV_clock_counter\(14) <= NOT \inst|clock_counter\(14);
\inst|ALT_INV_clock_counter\(8) <= NOT \inst|clock_counter\(8);
\inst|ALT_INV_clock_counter\(24) <= NOT \inst|clock_counter\(24);
\inst|ALT_INV_clock_counter\(13) <= NOT \inst|clock_counter\(13);
\inst|ALT_INV_clock_counter\(12) <= NOT \inst|clock_counter\(12);
\inst|ALT_INV_clock_counter\(11) <= NOT \inst|clock_counter\(11);
\inst|ALT_INV_clock_counter\(29) <= NOT \inst|clock_counter\(29);
\inst|ALT_INV_clock_counter\(30) <= NOT \inst|clock_counter\(30);
\inst|ALT_INV_clock_counter\(31) <= NOT \inst|clock_counter\(31);

-- Location: IOOBUF_X12_Y81_N2
\sda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_sda_out~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sda);

-- Location: IOOBUF_X24_Y81_N2
\daclrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|daclrc~q\,
	devoe => ww_devoe,
	o => ww_daclrc);

-- Location: IOOBUF_X8_Y81_N19
\adclrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|adclrc~q\,
	devoe => ww_devoe,
	o => ww_adclrc);

-- Location: IOOBUF_X16_Y81_N2
\dacdata~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dacdat~q\,
	devoe => ww_devoe,
	o => ww_dacdata);

-- Location: IOOBUF_X12_Y81_N19
\scl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_scl_out~q\,
	devoe => ww_devoe,
	o => ww_scl);

-- Location: IOOBUF_X2_Y81_N76
\MCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clk_i2c1~q\,
	devoe => ww_devoe,
	o => ww_MCLK);

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X33_Y49_N47
\inst|clock_counter2[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[15]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N0
\inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~5_sumout\ = SUM(( \inst|clock_counter2\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add2~6\ = CARRY(( \inst|clock_counter2\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(0),
	cin => GND,
	sumout => \inst|Add2~5_sumout\,
	cout => \inst|Add2~6\);

-- Location: FF_X33_Y49_N1
\inst|clock_counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(0));

-- Location: LABCELL_X33_Y49_N3
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_sumout\ = SUM(( \inst|clock_counter2[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~6\ ))
-- \inst|Add2~2\ = CARRY(( \inst|clock_counter2[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2[1]~DUPLICATE_q\,
	cin => \inst|Add2~6\,
	sumout => \inst|Add2~1_sumout\,
	cout => \inst|Add2~2\);

-- Location: FF_X33_Y49_N5
\inst|clock_counter2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[1]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N6
\inst|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~29_sumout\ = SUM(( \inst|clock_counter2\(2) ) + ( GND ) + ( \inst|Add2~2\ ))
-- \inst|Add2~30\ = CARRY(( \inst|clock_counter2\(2) ) + ( GND ) + ( \inst|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(2),
	cin => \inst|Add2~2\,
	sumout => \inst|Add2~29_sumout\,
	cout => \inst|Add2~30\);

-- Location: FF_X33_Y49_N7
\inst|clock_counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(2));

-- Location: LABCELL_X33_Y49_N9
\inst|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~25_sumout\ = SUM(( \inst|clock_counter2\(3) ) + ( GND ) + ( \inst|Add2~30\ ))
-- \inst|Add2~26\ = CARRY(( \inst|clock_counter2\(3) ) + ( GND ) + ( \inst|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(3),
	cin => \inst|Add2~30\,
	sumout => \inst|Add2~25_sumout\,
	cout => \inst|Add2~26\);

-- Location: FF_X33_Y49_N10
\inst|clock_counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(3));

-- Location: LABCELL_X33_Y49_N12
\inst|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~21_sumout\ = SUM(( \inst|clock_counter2[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~26\ ))
-- \inst|Add2~22\ = CARRY(( \inst|clock_counter2[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2[4]~DUPLICATE_q\,
	cin => \inst|Add2~26\,
	sumout => \inst|Add2~21_sumout\,
	cout => \inst|Add2~22\);

-- Location: FF_X33_Y49_N14
\inst|clock_counter2[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[4]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N15
\inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~17_sumout\ = SUM(( \inst|clock_counter2\(5) ) + ( GND ) + ( \inst|Add2~22\ ))
-- \inst|Add2~18\ = CARRY(( \inst|clock_counter2\(5) ) + ( GND ) + ( \inst|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(5),
	cin => \inst|Add2~22\,
	sumout => \inst|Add2~17_sumout\,
	cout => \inst|Add2~18\);

-- Location: FF_X33_Y49_N16
\inst|clock_counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(5));

-- Location: LABCELL_X33_Y49_N18
\inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~13_sumout\ = SUM(( \inst|clock_counter2\(6) ) + ( GND ) + ( \inst|Add2~18\ ))
-- \inst|Add2~14\ = CARRY(( \inst|clock_counter2\(6) ) + ( GND ) + ( \inst|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(6),
	cin => \inst|Add2~18\,
	sumout => \inst|Add2~13_sumout\,
	cout => \inst|Add2~14\);

-- Location: FF_X33_Y49_N19
\inst|clock_counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(6));

-- Location: LABCELL_X33_Y49_N21
\inst|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~81_sumout\ = SUM(( \inst|clock_counter2[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~14\ ))
-- \inst|Add2~82\ = CARRY(( \inst|clock_counter2[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2[7]~DUPLICATE_q\,
	cin => \inst|Add2~14\,
	sumout => \inst|Add2~81_sumout\,
	cout => \inst|Add2~82\);

-- Location: FF_X33_Y49_N23
\inst|clock_counter2[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[7]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N24
\inst|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~109_sumout\ = SUM(( \inst|clock_counter2\(8) ) + ( GND ) + ( \inst|Add2~82\ ))
-- \inst|Add2~110\ = CARRY(( \inst|clock_counter2\(8) ) + ( GND ) + ( \inst|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(8),
	cin => \inst|Add2~82\,
	sumout => \inst|Add2~109_sumout\,
	cout => \inst|Add2~110\);

-- Location: FF_X33_Y49_N25
\inst|clock_counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(8));

-- Location: LABCELL_X33_Y49_N27
\inst|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~105_sumout\ = SUM(( \inst|clock_counter2\(9) ) + ( GND ) + ( \inst|Add2~110\ ))
-- \inst|Add2~106\ = CARRY(( \inst|clock_counter2\(9) ) + ( GND ) + ( \inst|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(9),
	cin => \inst|Add2~110\,
	sumout => \inst|Add2~105_sumout\,
	cout => \inst|Add2~106\);

-- Location: FF_X33_Y49_N28
\inst|clock_counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(9));

-- Location: LABCELL_X33_Y49_N30
\inst|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~101_sumout\ = SUM(( \inst|clock_counter2\(10) ) + ( GND ) + ( \inst|Add2~106\ ))
-- \inst|Add2~102\ = CARRY(( \inst|clock_counter2\(10) ) + ( GND ) + ( \inst|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(10),
	cin => \inst|Add2~106\,
	sumout => \inst|Add2~101_sumout\,
	cout => \inst|Add2~102\);

-- Location: FF_X33_Y49_N31
\inst|clock_counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(10));

-- Location: LABCELL_X33_Y49_N33
\inst|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~97_sumout\ = SUM(( \inst|clock_counter2[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~102\ ))
-- \inst|Add2~98\ = CARRY(( \inst|clock_counter2[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2[11]~DUPLICATE_q\,
	cin => \inst|Add2~102\,
	sumout => \inst|Add2~97_sumout\,
	cout => \inst|Add2~98\);

-- Location: FF_X33_Y49_N35
\inst|clock_counter2[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[11]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N36
\inst|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~93_sumout\ = SUM(( \inst|clock_counter2[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~98\ ))
-- \inst|Add2~94\ = CARRY(( \inst|clock_counter2[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2[12]~DUPLICATE_q\,
	cin => \inst|Add2~98\,
	sumout => \inst|Add2~93_sumout\,
	cout => \inst|Add2~94\);

-- Location: FF_X33_Y49_N38
\inst|clock_counter2[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[12]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N39
\inst|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~89_sumout\ = SUM(( \inst|clock_counter2\(13) ) + ( GND ) + ( \inst|Add2~94\ ))
-- \inst|Add2~90\ = CARRY(( \inst|clock_counter2\(13) ) + ( GND ) + ( \inst|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(13),
	cin => \inst|Add2~94\,
	sumout => \inst|Add2~89_sumout\,
	cout => \inst|Add2~90\);

-- Location: FF_X33_Y49_N40
\inst|clock_counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(13));

-- Location: LABCELL_X33_Y49_N42
\inst|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~85_sumout\ = SUM(( \inst|clock_counter2\(14) ) + ( GND ) + ( \inst|Add2~90\ ))
-- \inst|Add2~86\ = CARRY(( \inst|clock_counter2\(14) ) + ( GND ) + ( \inst|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(14),
	cin => \inst|Add2~90\,
	sumout => \inst|Add2~85_sumout\,
	cout => \inst|Add2~86\);

-- Location: FF_X33_Y49_N43
\inst|clock_counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(14));

-- Location: LABCELL_X33_Y49_N45
\inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~9_sumout\ = SUM(( \inst|clock_counter2[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~86\ ))
-- \inst|Add2~10\ = CARRY(( \inst|clock_counter2[15]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2[15]~DUPLICATE_q\,
	cin => \inst|Add2~86\,
	sumout => \inst|Add2~9_sumout\,
	cout => \inst|Add2~10\);

-- Location: FF_X33_Y49_N46
\inst|clock_counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(15));

-- Location: FF_X33_Y49_N13
\inst|clock_counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(4));

-- Location: MLABCELL_X34_Y49_N48
\inst|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = ( \inst|clock_counter2\(4) & ( \inst|clock_counter2\(6) & ( (!\inst|clock_counter2\(15) & (\inst|clock_counter2\(3) & (\inst|clock_counter2\(2) & \inst|clock_counter2\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(15),
	datab => \inst|ALT_INV_clock_counter2\(3),
	datac => \inst|ALT_INV_clock_counter2\(2),
	datad => \inst|ALT_INV_clock_counter2\(5),
	datae => \inst|ALT_INV_clock_counter2\(4),
	dataf => \inst|ALT_INV_clock_counter2\(6),
	combout => \inst|Equal2~1_combout\);

-- Location: FF_X33_Y49_N4
\inst|clock_counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(1));

-- Location: MLABCELL_X34_Y49_N30
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( !\inst|clock_counter2\(0) & ( !\inst|clock_counter2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(1),
	dataf => \inst|ALT_INV_clock_counter2\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: FF_X33_Y49_N53
\inst|clock_counter2[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[17]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N48
\inst|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~53_sumout\ = SUM(( \inst|clock_counter2\(16) ) + ( GND ) + ( \inst|Add2~10\ ))
-- \inst|Add2~54\ = CARRY(( \inst|clock_counter2\(16) ) + ( GND ) + ( \inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(16),
	cin => \inst|Add2~10\,
	sumout => \inst|Add2~53_sumout\,
	cout => \inst|Add2~54\);

-- Location: FF_X33_Y49_N49
\inst|clock_counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(16));

-- Location: LABCELL_X33_Y49_N51
\inst|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~37_sumout\ = SUM(( \inst|clock_counter2[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~54\ ))
-- \inst|Add2~38\ = CARRY(( \inst|clock_counter2[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2[17]~DUPLICATE_q\,
	cin => \inst|Add2~54\,
	sumout => \inst|Add2~37_sumout\,
	cout => \inst|Add2~38\);

-- Location: FF_X33_Y49_N52
\inst|clock_counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(17));

-- Location: FF_X33_Y49_N59
\inst|clock_counter2[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[19]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y49_N54
\inst|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~49_sumout\ = SUM(( \inst|clock_counter2\(18) ) + ( GND ) + ( \inst|Add2~38\ ))
-- \inst|Add2~50\ = CARRY(( \inst|clock_counter2\(18) ) + ( GND ) + ( \inst|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(18),
	cin => \inst|Add2~38\,
	sumout => \inst|Add2~49_sumout\,
	cout => \inst|Add2~50\);

-- Location: FF_X33_Y49_N55
\inst|clock_counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(18));

-- Location: LABCELL_X33_Y49_N57
\inst|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~45_sumout\ = SUM(( \inst|clock_counter2[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~50\ ))
-- \inst|Add2~46\ = CARRY(( \inst|clock_counter2[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2[19]~DUPLICATE_q\,
	cin => \inst|Add2~50\,
	sumout => \inst|Add2~45_sumout\,
	cout => \inst|Add2~46\);

-- Location: FF_X33_Y49_N58
\inst|clock_counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(19));

-- Location: FF_X33_Y48_N1
\inst|clock_counter2[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[20]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y48_N0
\inst|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~41_sumout\ = SUM(( \inst|clock_counter2[20]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~46\ ))
-- \inst|Add2~42\ = CARRY(( \inst|clock_counter2[20]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2[20]~DUPLICATE_q\,
	cin => \inst|Add2~46\,
	sumout => \inst|Add2~41_sumout\,
	cout => \inst|Add2~42\);

-- Location: FF_X33_Y48_N2
\inst|clock_counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(20));

-- Location: LABCELL_X33_Y48_N3
\inst|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~77_sumout\ = SUM(( \inst|clock_counter2\(21) ) + ( GND ) + ( \inst|Add2~42\ ))
-- \inst|Add2~78\ = CARRY(( \inst|clock_counter2\(21) ) + ( GND ) + ( \inst|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(21),
	cin => \inst|Add2~42\,
	sumout => \inst|Add2~77_sumout\,
	cout => \inst|Add2~78\);

-- Location: FF_X33_Y48_N5
\inst|clock_counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(21));

-- Location: LABCELL_X33_Y48_N6
\inst|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~73_sumout\ = SUM(( \inst|clock_counter2\(22) ) + ( GND ) + ( \inst|Add2~78\ ))
-- \inst|Add2~74\ = CARRY(( \inst|clock_counter2\(22) ) + ( GND ) + ( \inst|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(22),
	cin => \inst|Add2~78\,
	sumout => \inst|Add2~73_sumout\,
	cout => \inst|Add2~74\);

-- Location: FF_X33_Y48_N8
\inst|clock_counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(22));

-- Location: LABCELL_X33_Y48_N9
\inst|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~69_sumout\ = SUM(( \inst|clock_counter2\(23) ) + ( GND ) + ( \inst|Add2~74\ ))
-- \inst|Add2~70\ = CARRY(( \inst|clock_counter2\(23) ) + ( GND ) + ( \inst|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter2\(23),
	cin => \inst|Add2~74\,
	sumout => \inst|Add2~69_sumout\,
	cout => \inst|Add2~70\);

-- Location: FF_X33_Y48_N10
\inst|clock_counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(23));

-- Location: LABCELL_X33_Y48_N12
\inst|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~65_sumout\ = SUM(( \inst|clock_counter2\(24) ) + ( GND ) + ( \inst|Add2~70\ ))
-- \inst|Add2~66\ = CARRY(( \inst|clock_counter2\(24) ) + ( GND ) + ( \inst|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(24),
	cin => \inst|Add2~70\,
	sumout => \inst|Add2~65_sumout\,
	cout => \inst|Add2~66\);

-- Location: FF_X33_Y48_N14
\inst|clock_counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(24));

-- Location: LABCELL_X33_Y48_N15
\inst|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~61_sumout\ = SUM(( \inst|clock_counter2\(25) ) + ( GND ) + ( \inst|Add2~66\ ))
-- \inst|Add2~62\ = CARRY(( \inst|clock_counter2\(25) ) + ( GND ) + ( \inst|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(25),
	cin => \inst|Add2~66\,
	sumout => \inst|Add2~61_sumout\,
	cout => \inst|Add2~62\);

-- Location: FF_X33_Y48_N16
\inst|clock_counter2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(25));

-- Location: LABCELL_X33_Y48_N18
\inst|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~57_sumout\ = SUM(( \inst|clock_counter2[26]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~62\ ))
-- \inst|Add2~58\ = CARRY(( \inst|clock_counter2[26]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2[26]~DUPLICATE_q\,
	cin => \inst|Add2~62\,
	sumout => \inst|Add2~57_sumout\,
	cout => \inst|Add2~58\);

-- Location: FF_X33_Y48_N19
\inst|clock_counter2[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[26]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y48_N21
\inst|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~125_sumout\ = SUM(( \inst|clock_counter2\(27) ) + ( GND ) + ( \inst|Add2~58\ ))
-- \inst|Add2~126\ = CARRY(( \inst|clock_counter2\(27) ) + ( GND ) + ( \inst|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(27),
	cin => \inst|Add2~58\,
	sumout => \inst|Add2~125_sumout\,
	cout => \inst|Add2~126\);

-- Location: FF_X33_Y48_N22
\inst|clock_counter2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(27));

-- Location: LABCELL_X33_Y48_N24
\inst|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~121_sumout\ = SUM(( \inst|clock_counter2\(28) ) + ( GND ) + ( \inst|Add2~126\ ))
-- \inst|Add2~122\ = CARRY(( \inst|clock_counter2\(28) ) + ( GND ) + ( \inst|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter2\(28),
	cin => \inst|Add2~126\,
	sumout => \inst|Add2~121_sumout\,
	cout => \inst|Add2~122\);

-- Location: FF_X33_Y48_N25
\inst|clock_counter2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(28));

-- Location: LABCELL_X33_Y48_N27
\inst|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~117_sumout\ = SUM(( \inst|clock_counter2\(29) ) + ( GND ) + ( \inst|Add2~122\ ))
-- \inst|Add2~118\ = CARRY(( \inst|clock_counter2\(29) ) + ( GND ) + ( \inst|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2\(29),
	cin => \inst|Add2~122\,
	sumout => \inst|Add2~117_sumout\,
	cout => \inst|Add2~118\);

-- Location: FF_X33_Y48_N28
\inst|clock_counter2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(29));

-- Location: LABCELL_X33_Y48_N30
\inst|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~113_sumout\ = SUM(( \inst|clock_counter2[30]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~118\ ))
-- \inst|Add2~114\ = CARRY(( \inst|clock_counter2[30]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter2[30]~DUPLICATE_q\,
	cin => \inst|Add2~118\,
	sumout => \inst|Add2~113_sumout\,
	cout => \inst|Add2~114\);

-- Location: FF_X33_Y48_N31
\inst|clock_counter2[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[30]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y48_N33
\inst|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~33_sumout\ = SUM(( \inst|clock_counter2\(31) ) + ( GND ) + ( \inst|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(31),
	cin => \inst|Add2~114\,
	sumout => \inst|Add2~33_sumout\);

-- Location: FF_X33_Y48_N35
\inst|clock_counter2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(31));

-- Location: MLABCELL_X34_Y49_N42
\inst|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = ( !\inst|clock_counter2\(20) & ( !\inst|clock_counter2\(31) & ( (!\inst|clock_counter2\(17) & (!\inst|clock_counter2\(19) & (!\inst|clock_counter2\(18) & !\inst|clock_counter2\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(17),
	datab => \inst|ALT_INV_clock_counter2\(19),
	datac => \inst|ALT_INV_clock_counter2\(18),
	datad => \inst|ALT_INV_clock_counter2\(16),
	datae => \inst|ALT_INV_clock_counter2\(20),
	dataf => \inst|ALT_INV_clock_counter2\(31),
	combout => \inst|Equal2~2_combout\);

-- Location: FF_X33_Y49_N34
\inst|clock_counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(11));

-- Location: FF_X33_Y49_N37
\inst|clock_counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(12));

-- Location: FF_X33_Y49_N22
\inst|clock_counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(7));

-- Location: MLABCELL_X34_Y49_N54
\inst|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~4_combout\ = ( !\inst|clock_counter2\(7) & ( !\inst|clock_counter2\(13) & ( (!\inst|clock_counter2\(10) & (!\inst|clock_counter2\(11) & (!\inst|clock_counter2\(12) & !\inst|clock_counter2\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(10),
	datab => \inst|ALT_INV_clock_counter2\(11),
	datac => \inst|ALT_INV_clock_counter2\(12),
	datad => \inst|ALT_INV_clock_counter2\(14),
	datae => \inst|ALT_INV_clock_counter2\(7),
	dataf => \inst|ALT_INV_clock_counter2\(13),
	combout => \inst|Equal2~4_combout\);

-- Location: FF_X33_Y48_N32
\inst|clock_counter2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(30));

-- Location: FF_X33_Y48_N26
\inst|clock_counter2[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2[28]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y49_N0
\inst|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~5_combout\ = ( !\inst|clock_counter2\(27) & ( !\inst|clock_counter2[28]~DUPLICATE_q\ & ( (!\inst|clock_counter2\(9) & (!\inst|clock_counter2\(29) & (!\inst|clock_counter2\(8) & !\inst|clock_counter2\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(9),
	datab => \inst|ALT_INV_clock_counter2\(29),
	datac => \inst|ALT_INV_clock_counter2\(8),
	datad => \inst|ALT_INV_clock_counter2\(30),
	datae => \inst|ALT_INV_clock_counter2\(27),
	dataf => \inst|ALT_INV_clock_counter2[28]~DUPLICATE_q\,
	combout => \inst|Equal2~5_combout\);

-- Location: FF_X33_Y48_N20
\inst|clock_counter2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add2~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter2\(26));

-- Location: LABCELL_X33_Y48_N54
\inst|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = ( !\inst|clock_counter2\(23) & ( !\inst|clock_counter2\(25) & ( (!\inst|clock_counter2\(21) & (!\inst|clock_counter2\(22) & (!\inst|clock_counter2\(26) & !\inst|clock_counter2\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter2\(21),
	datab => \inst|ALT_INV_clock_counter2\(22),
	datac => \inst|ALT_INV_clock_counter2\(26),
	datad => \inst|ALT_INV_clock_counter2\(24),
	datae => \inst|ALT_INV_clock_counter2\(23),
	dataf => \inst|ALT_INV_clock_counter2\(25),
	combout => \inst|Equal2~3_combout\);

-- Location: MLABCELL_X34_Y49_N39
\inst|Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~6_combout\ = ( \inst|Equal2~5_combout\ & ( \inst|Equal2~3_combout\ & ( (\inst|Equal2~1_combout\ & (\inst|Equal2~0_combout\ & (\inst|Equal2~2_combout\ & \inst|Equal2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal2~1_combout\,
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst|ALT_INV_Equal2~2_combout\,
	datad => \inst|ALT_INV_Equal2~4_combout\,
	datae => \inst|ALT_INV_Equal2~5_combout\,
	dataf => \inst|ALT_INV_Equal2~3_combout\,
	combout => \inst|Equal2~6_combout\);

-- Location: LABCELL_X35_Y50_N54
\inst|clk_i2c2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_i2c2~0_combout\ = ( !\inst|Equal2~6_combout\ & ( \inst|clk_i2c2~q\ ) ) # ( \inst|Equal2~6_combout\ & ( !\inst|clk_i2c2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_Equal2~6_combout\,
	dataf => \inst|ALT_INV_clk_i2c2~q\,
	combout => \inst|clk_i2c2~0_combout\);

-- Location: LABCELL_X35_Y50_N48
\inst|clk_i2c2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_i2c2~feeder_combout\ = ( \inst|clk_i2c2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_clk_i2c2~0_combout\,
	combout => \inst|clk_i2c2~feeder_combout\);

-- Location: FF_X35_Y50_N50
\inst|clk_i2c2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \inst|clk_i2c2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_i2c2~q\);

-- Location: MLABCELL_X34_Y52_N54
\inst4|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux27~0_combout\ = ( !\inst4|count\(0) & ( ((\inst4|statemachine[3]~DUPLICATE_q\) # (\inst4|statemachine\(1))) # (\inst4|statemachine[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_statemachine\(1),
	datad => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_count\(0),
	combout => \inst4|Mux27~0_combout\);

-- Location: FF_X34_Y53_N10
\inst4|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~121_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N0
\inst4|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~1_sumout\ = SUM(( \inst4|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst4|Add2~2\ = CARRY(( \inst4|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst4|Add2~1_sumout\,
	cout => \inst4|Add2~2\);

-- Location: MLABCELL_X34_Y53_N3
\inst4|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~125_sumout\ = SUM(( \inst4|counter\(1) ) + ( GND ) + ( \inst4|Add2~2\ ))
-- \inst4|Add2~126\ = CARRY(( \inst4|counter\(1) ) + ( GND ) + ( \inst4|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(1),
	cin => \inst4|Add2~2\,
	sumout => \inst4|Add2~125_sumout\,
	cout => \inst4|Add2~126\);

-- Location: FF_X34_Y53_N4
\inst4|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~125_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(1));

-- Location: MLABCELL_X34_Y53_N6
\inst4|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~5_sumout\ = SUM(( \inst4|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~126\ ))
-- \inst4|Add2~6\ = CARRY(( \inst4|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter[2]~DUPLICATE_q\,
	cin => \inst4|Add2~126\,
	sumout => \inst4|Add2~5_sumout\,
	cout => \inst4|Add2~6\);

-- Location: FF_X34_Y53_N8
\inst4|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~5_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[2]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N9
\inst4|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~121_sumout\ = SUM(( \inst4|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~6\ ))
-- \inst4|Add2~122\ = CARRY(( \inst4|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[3]~DUPLICATE_q\,
	cin => \inst4|Add2~6\,
	sumout => \inst4|Add2~121_sumout\,
	cout => \inst4|Add2~122\);

-- Location: FF_X34_Y53_N11
\inst4|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~121_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(3));

-- Location: LABCELL_X33_Y51_N33
\inst4|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~6_combout\ = ( \inst4|counter\(1) & ( \inst4|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(3),
	dataf => \inst4|ALT_INV_counter\(1),
	combout => \inst4|Equal0~6_combout\);

-- Location: FF_X34_Y52_N25
\inst4|counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~85_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[28]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N12
\inst4|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~21_sumout\ = SUM(( \inst4|counter\(4) ) + ( GND ) + ( \inst4|Add2~122\ ))
-- \inst4|Add2~22\ = CARRY(( \inst4|counter\(4) ) + ( GND ) + ( \inst4|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter\(4),
	cin => \inst4|Add2~122\,
	sumout => \inst4|Add2~21_sumout\,
	cout => \inst4|Add2~22\);

-- Location: FF_X34_Y53_N14
\inst4|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~21_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(4));

-- Location: MLABCELL_X34_Y53_N15
\inst4|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~17_sumout\ = SUM(( \inst4|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~22\ ))
-- \inst4|Add2~18\ = CARRY(( \inst4|counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \inst4|Add2~22\,
	sumout => \inst4|Add2~17_sumout\,
	cout => \inst4|Add2~18\);

-- Location: FF_X34_Y53_N17
\inst4|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~17_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N18
\inst4|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~13_sumout\ = SUM(( \inst4|counter\(6) ) + ( GND ) + ( \inst4|Add2~18\ ))
-- \inst4|Add2~14\ = CARRY(( \inst4|counter\(6) ) + ( GND ) + ( \inst4|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter\(6),
	cin => \inst4|Add2~18\,
	sumout => \inst4|Add2~13_sumout\,
	cout => \inst4|Add2~14\);

-- Location: FF_X34_Y53_N19
\inst4|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~13_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(6));

-- Location: MLABCELL_X34_Y53_N21
\inst4|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~9_sumout\ = SUM(( \inst4|counter\(7) ) + ( GND ) + ( \inst4|Add2~14\ ))
-- \inst4|Add2~10\ = CARRY(( \inst4|counter\(7) ) + ( GND ) + ( \inst4|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(7),
	cin => \inst4|Add2~14\,
	sumout => \inst4|Add2~9_sumout\,
	cout => \inst4|Add2~10\);

-- Location: FF_X34_Y53_N23
\inst4|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~9_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(7));

-- Location: MLABCELL_X34_Y53_N24
\inst4|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~45_sumout\ = SUM(( \inst4|counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~10\ ))
-- \inst4|Add2~46\ = CARRY(( \inst4|counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter[8]~DUPLICATE_q\,
	cin => \inst4|Add2~10\,
	sumout => \inst4|Add2~45_sumout\,
	cout => \inst4|Add2~46\);

-- Location: FF_X34_Y53_N26
\inst4|counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~45_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N27
\inst4|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~41_sumout\ = SUM(( \inst4|counter\(9) ) + ( GND ) + ( \inst4|Add2~46\ ))
-- \inst4|Add2~42\ = CARRY(( \inst4|counter\(9) ) + ( GND ) + ( \inst4|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(9),
	cin => \inst4|Add2~46\,
	sumout => \inst4|Add2~41_sumout\,
	cout => \inst4|Add2~42\);

-- Location: FF_X34_Y53_N29
\inst4|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~41_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(9));

-- Location: MLABCELL_X34_Y53_N30
\inst4|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~37_sumout\ = SUM(( \inst4|counter\(10) ) + ( GND ) + ( \inst4|Add2~42\ ))
-- \inst4|Add2~38\ = CARRY(( \inst4|counter\(10) ) + ( GND ) + ( \inst4|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(10),
	cin => \inst4|Add2~42\,
	sumout => \inst4|Add2~37_sumout\,
	cout => \inst4|Add2~38\);

-- Location: FF_X33_Y51_N14
\inst4|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Add2~37_sumout\,
	sload => VCC,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(10));

-- Location: MLABCELL_X34_Y53_N33
\inst4|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~33_sumout\ = SUM(( \inst4|counter\(11) ) + ( GND ) + ( \inst4|Add2~38\ ))
-- \inst4|Add2~34\ = CARRY(( \inst4|counter\(11) ) + ( GND ) + ( \inst4|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(11),
	cin => \inst4|Add2~38\,
	sumout => \inst4|Add2~33_sumout\,
	cout => \inst4|Add2~34\);

-- Location: FF_X34_Y53_N35
\inst4|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~33_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(11));

-- Location: MLABCELL_X34_Y53_N36
\inst4|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~29_sumout\ = SUM(( \inst4|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~34\ ))
-- \inst4|Add2~30\ = CARRY(( \inst4|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \inst4|Add2~34\,
	sumout => \inst4|Add2~29_sumout\,
	cout => \inst4|Add2~30\);

-- Location: FF_X34_Y53_N38
\inst4|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~29_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[12]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N39
\inst4|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~25_sumout\ = SUM(( \inst4|counter\(13) ) + ( GND ) + ( \inst4|Add2~30\ ))
-- \inst4|Add2~26\ = CARRY(( \inst4|counter\(13) ) + ( GND ) + ( \inst4|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(13),
	cin => \inst4|Add2~30\,
	sumout => \inst4|Add2~25_sumout\,
	cout => \inst4|Add2~26\);

-- Location: FF_X33_Y51_N44
\inst4|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Add2~25_sumout\,
	sload => VCC,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(13));

-- Location: MLABCELL_X34_Y53_N42
\inst4|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~69_sumout\ = SUM(( \inst4|counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~26\ ))
-- \inst4|Add2~70\ = CARRY(( \inst4|counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter[14]~DUPLICATE_q\,
	cin => \inst4|Add2~26\,
	sumout => \inst4|Add2~69_sumout\,
	cout => \inst4|Add2~70\);

-- Location: FF_X34_Y53_N44
\inst4|counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~69_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[14]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N45
\inst4|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~65_sumout\ = SUM(( \inst4|counter\(15) ) + ( GND ) + ( \inst4|Add2~70\ ))
-- \inst4|Add2~66\ = CARRY(( \inst4|counter\(15) ) + ( GND ) + ( \inst4|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(15),
	cin => \inst4|Add2~70\,
	sumout => \inst4|Add2~65_sumout\,
	cout => \inst4|Add2~66\);

-- Location: FF_X34_Y51_N22
\inst4|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Add2~65_sumout\,
	sload => VCC,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(15));

-- Location: MLABCELL_X34_Y53_N48
\inst4|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~61_sumout\ = SUM(( \inst4|counter\(16) ) + ( GND ) + ( \inst4|Add2~66\ ))
-- \inst4|Add2~62\ = CARRY(( \inst4|counter\(16) ) + ( GND ) + ( \inst4|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter\(16),
	cin => \inst4|Add2~66\,
	sumout => \inst4|Add2~61_sumout\,
	cout => \inst4|Add2~62\);

-- Location: FF_X34_Y53_N50
\inst4|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~61_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(16));

-- Location: MLABCELL_X34_Y53_N51
\inst4|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~57_sumout\ = SUM(( \inst4|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~62\ ))
-- \inst4|Add2~58\ = CARRY(( \inst4|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[17]~DUPLICATE_q\,
	cin => \inst4|Add2~62\,
	sumout => \inst4|Add2~57_sumout\,
	cout => \inst4|Add2~58\);

-- Location: FF_X34_Y53_N53
\inst4|counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~57_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[17]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y53_N54
\inst4|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~53_sumout\ = SUM(( \inst4|counter\(18) ) + ( GND ) + ( \inst4|Add2~58\ ))
-- \inst4|Add2~54\ = CARRY(( \inst4|counter\(18) ) + ( GND ) + ( \inst4|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(18),
	cin => \inst4|Add2~58\,
	sumout => \inst4|Add2~53_sumout\,
	cout => \inst4|Add2~54\);

-- Location: FF_X34_Y53_N56
\inst4|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~53_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(18));

-- Location: MLABCELL_X34_Y53_N57
\inst4|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~49_sumout\ = SUM(( \inst4|counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~54\ ))
-- \inst4|Add2~50\ = CARRY(( \inst4|counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter[19]~DUPLICATE_q\,
	cin => \inst4|Add2~54\,
	sumout => \inst4|Add2~49_sumout\,
	cout => \inst4|Add2~50\);

-- Location: FF_X33_Y51_N28
\inst4|counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Add2~49_sumout\,
	sload => VCC,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[19]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N0
\inst4|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~117_sumout\ = SUM(( \inst4|counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~50\ ))
-- \inst4|Add2~118\ = CARRY(( \inst4|counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[20]~DUPLICATE_q\,
	cin => \inst4|Add2~50\,
	sumout => \inst4|Add2~117_sumout\,
	cout => \inst4|Add2~118\);

-- Location: FF_X34_Y52_N1
\inst4|counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~117_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[20]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N3
\inst4|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~113_sumout\ = SUM(( \inst4|counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~118\ ))
-- \inst4|Add2~114\ = CARRY(( \inst4|counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter[21]~DUPLICATE_q\,
	cin => \inst4|Add2~118\,
	sumout => \inst4|Add2~113_sumout\,
	cout => \inst4|Add2~114\);

-- Location: FF_X34_Y52_N4
\inst4|counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~113_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[21]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N6
\inst4|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~109_sumout\ = SUM(( \inst4|counter\(22) ) + ( GND ) + ( \inst4|Add2~114\ ))
-- \inst4|Add2~110\ = CARRY(( \inst4|counter\(22) ) + ( GND ) + ( \inst4|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter\(22),
	cin => \inst4|Add2~114\,
	sumout => \inst4|Add2~109_sumout\,
	cout => \inst4|Add2~110\);

-- Location: FF_X34_Y52_N8
\inst4|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~109_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(22));

-- Location: MLABCELL_X34_Y52_N9
\inst4|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~105_sumout\ = SUM(( \inst4|counter\(23) ) + ( GND ) + ( \inst4|Add2~110\ ))
-- \inst4|Add2~106\ = CARRY(( \inst4|counter\(23) ) + ( GND ) + ( \inst4|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(23),
	cin => \inst4|Add2~110\,
	sumout => \inst4|Add2~105_sumout\,
	cout => \inst4|Add2~106\);

-- Location: FF_X34_Y52_N10
\inst4|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~105_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(23));

-- Location: MLABCELL_X34_Y52_N12
\inst4|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~101_sumout\ = SUM(( \inst4|counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~106\ ))
-- \inst4|Add2~102\ = CARRY(( \inst4|counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter[24]~DUPLICATE_q\,
	cin => \inst4|Add2~106\,
	sumout => \inst4|Add2~101_sumout\,
	cout => \inst4|Add2~102\);

-- Location: FF_X34_Y52_N13
\inst4|counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~101_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[24]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N15
\inst4|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~97_sumout\ = SUM(( \inst4|counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~102\ ))
-- \inst4|Add2~98\ = CARRY(( \inst4|counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[25]~DUPLICATE_q\,
	cin => \inst4|Add2~102\,
	sumout => \inst4|Add2~97_sumout\,
	cout => \inst4|Add2~98\);

-- Location: FF_X34_Y52_N16
\inst4|counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~97_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[25]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N18
\inst4|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~93_sumout\ = SUM(( \inst4|counter\(26) ) + ( GND ) + ( \inst4|Add2~98\ ))
-- \inst4|Add2~94\ = CARRY(( \inst4|counter\(26) ) + ( GND ) + ( \inst4|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter\(26),
	cin => \inst4|Add2~98\,
	sumout => \inst4|Add2~93_sumout\,
	cout => \inst4|Add2~94\);

-- Location: FF_X34_Y52_N20
\inst4|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~93_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(26));

-- Location: MLABCELL_X34_Y52_N21
\inst4|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~89_sumout\ = SUM(( \inst4|counter\(27) ) + ( GND ) + ( \inst4|Add2~94\ ))
-- \inst4|Add2~90\ = CARRY(( \inst4|counter\(27) ) + ( GND ) + ( \inst4|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_counter\(27),
	cin => \inst4|Add2~94\,
	sumout => \inst4|Add2~89_sumout\,
	cout => \inst4|Add2~90\);

-- Location: FF_X34_Y52_N22
\inst4|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~89_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(27));

-- Location: MLABCELL_X34_Y52_N24
\inst4|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~85_sumout\ = SUM(( \inst4|counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~90\ ))
-- \inst4|Add2~86\ = CARRY(( \inst4|counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter[28]~DUPLICATE_q\,
	cin => \inst4|Add2~90\,
	sumout => \inst4|Add2~85_sumout\,
	cout => \inst4|Add2~86\);

-- Location: FF_X34_Y52_N26
\inst4|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~85_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(28));

-- Location: MLABCELL_X34_Y52_N27
\inst4|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~81_sumout\ = SUM(( \inst4|counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~86\ ))
-- \inst4|Add2~82\ = CARRY(( \inst4|counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[29]~DUPLICATE_q\,
	cin => \inst4|Add2~86\,
	sumout => \inst4|Add2~81_sumout\,
	cout => \inst4|Add2~82\);

-- Location: FF_X34_Y52_N28
\inst4|counter[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~81_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[29]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y52_N30
\inst4|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~77_sumout\ = SUM(( \inst4|counter\(30) ) + ( GND ) + ( \inst4|Add2~82\ ))
-- \inst4|Add2~78\ = CARRY(( \inst4|counter\(30) ) + ( GND ) + ( \inst4|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter\(30),
	cin => \inst4|Add2~82\,
	sumout => \inst4|Add2~77_sumout\,
	cout => \inst4|Add2~78\);

-- Location: FF_X34_Y52_N32
\inst4|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~77_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(30));

-- Location: MLABCELL_X34_Y52_N33
\inst4|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add2~73_sumout\ = SUM(( \inst4|counter\(31) ) + ( GND ) + ( \inst4|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(31),
	cin => \inst4|Add2~78\,
	sumout => \inst4|Add2~73_sumout\);

-- Location: FF_X34_Y52_N35
\inst4|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~73_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(31));

-- Location: FF_X34_Y52_N29
\inst4|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~81_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(29));

-- Location: MLABCELL_X34_Y52_N36
\inst4|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = ( !\inst4|counter\(29) & ( !\inst4|counter\(26) & ( (!\inst4|counter\(28) & (!\inst4|counter\(30) & (!\inst4|counter\(31) & !\inst4|counter\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(28),
	datab => \inst4|ALT_INV_counter\(30),
	datac => \inst4|ALT_INV_counter\(31),
	datad => \inst4|ALT_INV_counter\(27),
	datae => \inst4|ALT_INV_counter\(29),
	dataf => \inst4|ALT_INV_counter\(26),
	combout => \inst4|Equal0~3_combout\);

-- Location: FF_X33_Y51_N29
\inst4|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Add2~49_sumout\,
	sload => VCC,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(19));

-- Location: FF_X34_Y53_N52
\inst4|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~57_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(17));

-- Location: FF_X34_Y53_N43
\inst4|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~69_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(14));

-- Location: FF_X34_Y53_N55
\inst4|counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~53_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y51_N39
\inst4|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = ( !\inst4|counter\(14) & ( !\inst4|counter[18]~DUPLICATE_q\ & ( (!\inst4|counter\(19) & (!\inst4|counter\(15) & (!\inst4|counter\(17) & !\inst4|counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(19),
	datab => \inst4|ALT_INV_counter\(15),
	datac => \inst4|ALT_INV_counter\(17),
	datad => \inst4|ALT_INV_counter\(16),
	datae => \inst4|ALT_INV_counter\(14),
	dataf => \inst4|ALT_INV_counter[18]~DUPLICATE_q\,
	combout => \inst4|Equal0~2_combout\);

-- Location: FF_X34_Y53_N37
\inst4|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~29_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(12));

-- Location: FF_X34_Y53_N28
\inst4|counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~41_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[9]~DUPLICATE_q\);

-- Location: FF_X34_Y53_N25
\inst4|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~45_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(8));

-- Location: LABCELL_X33_Y51_N0
\inst4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = ( !\inst4|counter[9]~DUPLICATE_q\ & ( !\inst4|counter\(8) & ( (!\inst4|counter\(10) & (!\inst4|counter\(13) & (!\inst4|counter\(11) & !\inst4|counter\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(10),
	datab => \inst4|ALT_INV_counter\(13),
	datac => \inst4|ALT_INV_counter\(11),
	datad => \inst4|ALT_INV_counter\(12),
	datae => \inst4|ALT_INV_counter[9]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_counter\(8),
	combout => \inst4|Equal0~1_combout\);

-- Location: FF_X34_Y53_N16
\inst4|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~17_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(5));

-- Location: LABCELL_X33_Y51_N57
\inst4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = ( !\inst4|counter\(4) & ( (!\inst4|counter\(5) & (!\inst4|counter\(7) & !\inst4|counter\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter\(5),
	datac => \inst4|ALT_INV_counter\(7),
	datad => \inst4|ALT_INV_counter\(6),
	dataf => \inst4|ALT_INV_counter\(4),
	combout => \inst4|Equal0~0_combout\);

-- Location: FF_X34_Y52_N5
\inst4|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~113_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(21));

-- Location: FF_X34_Y52_N17
\inst4|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~97_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(25));

-- Location: FF_X34_Y52_N2
\inst4|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~117_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(20));

-- Location: FF_X34_Y52_N14
\inst4|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~101_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(24));

-- Location: MLABCELL_X34_Y52_N42
\inst4|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~4_combout\ = ( !\inst4|counter\(20) & ( !\inst4|counter\(24) & ( (!\inst4|counter\(21) & (!\inst4|counter\(22) & (!\inst4|counter\(23) & !\inst4|counter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(21),
	datab => \inst4|ALT_INV_counter\(22),
	datac => \inst4|ALT_INV_counter\(23),
	datad => \inst4|ALT_INV_counter\(25),
	datae => \inst4|ALT_INV_counter\(20),
	dataf => \inst4|ALT_INV_counter\(24),
	combout => \inst4|Equal0~4_combout\);

-- Location: FF_X34_Y53_N7
\inst4|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~5_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(2));

-- Location: LABCELL_X33_Y51_N6
\inst4|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~5_combout\ = ( \inst4|Equal0~4_combout\ & ( !\inst4|counter\(2) & ( (\inst4|Equal0~3_combout\ & (\inst4|Equal0~2_combout\ & (\inst4|Equal0~1_combout\ & \inst4|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~3_combout\,
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	datae => \inst4|ALT_INV_Equal0~4_combout\,
	dataf => \inst4|ALT_INV_counter\(2),
	combout => \inst4|Equal0~5_combout\);

-- Location: LABCELL_X33_Y51_N48
\inst4|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~7_combout\ = ( \inst4|Equal0~5_combout\ & ( (\inst4|counter[0]~DUPLICATE_q\ & \inst4|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_Equal0~6_combout\,
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|Equal0~7_combout\);

-- Location: FF_X33_Y51_N38
\inst4|statemachine[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux21~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine\(3));

-- Location: FF_X35_Y51_N5
\inst4|start_strobe1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|start_strobe1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|start_strobe1~q\);

-- Location: FF_X36_Y51_N53
\inst4|clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~65_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(17));

-- Location: LABCELL_X36_Y51_N0
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|clock_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst4|Add0~6\ = CARRY(( \inst4|clock_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: FF_X36_Y51_N1
\inst4|clock_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~5_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y51_N3
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \inst4|clock_counter\(1) ) + ( GND ) + ( \inst4|Add0~6\ ))
-- \inst4|Add0~2\ = CARRY(( \inst4|clock_counter\(1) ) + ( GND ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_clock_counter\(1),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\,
	cout => \inst4|Add0~2\);

-- Location: FF_X36_Y51_N4
\inst4|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~1_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(1));

-- Location: LABCELL_X36_Y51_N6
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( \inst4|clock_counter\(2) ) + ( GND ) + ( \inst4|Add0~2\ ))
-- \inst4|Add0~30\ = CARRY(( \inst4|clock_counter\(2) ) + ( GND ) + ( \inst4|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(2),
	cin => \inst4|Add0~2\,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: FF_X36_Y51_N8
\inst4|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~29_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(2));

-- Location: LABCELL_X36_Y51_N9
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \inst4|clock_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \inst4|clock_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[3]~DUPLICATE_q\,
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: FF_X36_Y51_N10
\inst4|clock_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~25_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y51_N12
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \inst4|clock_counter\(4) ) + ( GND ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \inst4|clock_counter\(4) ) + ( GND ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(4),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: FF_X36_Y51_N14
\inst4|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~21_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(4));

-- Location: LABCELL_X36_Y51_N15
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \inst4|clock_counter\(5) ) + ( GND ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \inst4|clock_counter\(5) ) + ( GND ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(5),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: FF_X36_Y51_N16
\inst4|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~17_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(5));

-- Location: LABCELL_X36_Y51_N18
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \inst4|clock_counter\(6) ) + ( GND ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \inst4|clock_counter\(6) ) + ( GND ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(6),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: FF_X36_Y51_N19
\inst4|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~13_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(6));

-- Location: LABCELL_X36_Y51_N21
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( \inst4|clock_counter\(7) ) + ( GND ) + ( \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( \inst4|clock_counter\(7) ) + ( GND ) + ( \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_clock_counter\(7),
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: FF_X36_Y51_N22
\inst4|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~9_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(7));

-- Location: LABCELL_X36_Y51_N24
\inst4|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~53_sumout\ = SUM(( \inst4|clock_counter\(8) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~54\ = CARRY(( \inst4|clock_counter\(8) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(8),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~53_sumout\,
	cout => \inst4|Add0~54\);

-- Location: FF_X36_Y51_N25
\inst4|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~53_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(8));

-- Location: LABCELL_X36_Y51_N27
\inst4|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~49_sumout\ = SUM(( \inst4|clock_counter\(9) ) + ( GND ) + ( \inst4|Add0~54\ ))
-- \inst4|Add0~50\ = CARRY(( \inst4|clock_counter\(9) ) + ( GND ) + ( \inst4|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(9),
	cin => \inst4|Add0~54\,
	sumout => \inst4|Add0~49_sumout\,
	cout => \inst4|Add0~50\);

-- Location: FF_X36_Y51_N29
\inst4|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~49_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(9));

-- Location: LABCELL_X36_Y51_N30
\inst4|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~45_sumout\ = SUM(( \inst4|clock_counter\(10) ) + ( GND ) + ( \inst4|Add0~50\ ))
-- \inst4|Add0~46\ = CARRY(( \inst4|clock_counter\(10) ) + ( GND ) + ( \inst4|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(10),
	cin => \inst4|Add0~50\,
	sumout => \inst4|Add0~45_sumout\,
	cout => \inst4|Add0~46\);

-- Location: FF_X36_Y51_N32
\inst4|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~45_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(10));

-- Location: LABCELL_X36_Y51_N33
\inst4|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~41_sumout\ = SUM(( \inst4|clock_counter\(11) ) + ( GND ) + ( \inst4|Add0~46\ ))
-- \inst4|Add0~42\ = CARRY(( \inst4|clock_counter\(11) ) + ( GND ) + ( \inst4|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(11),
	cin => \inst4|Add0~46\,
	sumout => \inst4|Add0~41_sumout\,
	cout => \inst4|Add0~42\);

-- Location: FF_X36_Y51_N34
\inst4|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~41_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(11));

-- Location: LABCELL_X36_Y51_N36
\inst4|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~37_sumout\ = SUM(( \inst4|clock_counter\(12) ) + ( GND ) + ( \inst4|Add0~42\ ))
-- \inst4|Add0~38\ = CARRY(( \inst4|clock_counter\(12) ) + ( GND ) + ( \inst4|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(12),
	cin => \inst4|Add0~42\,
	sumout => \inst4|Add0~37_sumout\,
	cout => \inst4|Add0~38\);

-- Location: FF_X36_Y51_N37
\inst4|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~37_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(12));

-- Location: LABCELL_X36_Y51_N39
\inst4|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~33_sumout\ = SUM(( \inst4|clock_counter\(13) ) + ( GND ) + ( \inst4|Add0~38\ ))
-- \inst4|Add0~34\ = CARRY(( \inst4|clock_counter\(13) ) + ( GND ) + ( \inst4|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(13),
	cin => \inst4|Add0~38\,
	sumout => \inst4|Add0~33_sumout\,
	cout => \inst4|Add0~34\);

-- Location: FF_X36_Y51_N40
\inst4|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~33_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(13));

-- Location: LABCELL_X36_Y51_N42
\inst4|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~77_sumout\ = SUM(( \inst4|clock_counter\(14) ) + ( GND ) + ( \inst4|Add0~34\ ))
-- \inst4|Add0~78\ = CARRY(( \inst4|clock_counter\(14) ) + ( GND ) + ( \inst4|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(14),
	cin => \inst4|Add0~34\,
	sumout => \inst4|Add0~77_sumout\,
	cout => \inst4|Add0~78\);

-- Location: FF_X36_Y51_N43
\inst4|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~77_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(14));

-- Location: LABCELL_X36_Y51_N45
\inst4|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~73_sumout\ = SUM(( \inst4|clock_counter\(15) ) + ( GND ) + ( \inst4|Add0~78\ ))
-- \inst4|Add0~74\ = CARRY(( \inst4|clock_counter\(15) ) + ( GND ) + ( \inst4|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(15),
	cin => \inst4|Add0~78\,
	sumout => \inst4|Add0~73_sumout\,
	cout => \inst4|Add0~74\);

-- Location: FF_X36_Y51_N46
\inst4|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~73_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(15));

-- Location: LABCELL_X36_Y51_N48
\inst4|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~69_sumout\ = SUM(( \inst4|clock_counter\(16) ) + ( GND ) + ( \inst4|Add0~74\ ))
-- \inst4|Add0~70\ = CARRY(( \inst4|clock_counter\(16) ) + ( GND ) + ( \inst4|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(16),
	cin => \inst4|Add0~74\,
	sumout => \inst4|Add0~69_sumout\,
	cout => \inst4|Add0~70\);

-- Location: FF_X36_Y51_N49
\inst4|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~69_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(16));

-- Location: LABCELL_X36_Y51_N51
\inst4|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~65_sumout\ = SUM(( \inst4|clock_counter\(17) ) + ( GND ) + ( \inst4|Add0~70\ ))
-- \inst4|Add0~66\ = CARRY(( \inst4|clock_counter\(17) ) + ( GND ) + ( \inst4|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(17),
	cin => \inst4|Add0~70\,
	sumout => \inst4|Add0~65_sumout\,
	cout => \inst4|Add0~66\);

-- Location: FF_X36_Y51_N52
\inst4|clock_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~65_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y51_N54
\inst4|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~61_sumout\ = SUM(( \inst4|clock_counter\(18) ) + ( GND ) + ( \inst4|Add0~66\ ))
-- \inst4|Add0~62\ = CARRY(( \inst4|clock_counter\(18) ) + ( GND ) + ( \inst4|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(18),
	cin => \inst4|Add0~66\,
	sumout => \inst4|Add0~61_sumout\,
	cout => \inst4|Add0~62\);

-- Location: FF_X36_Y51_N55
\inst4|clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~61_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(18));

-- Location: LABCELL_X36_Y51_N57
\inst4|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~81_sumout\ = SUM(( \inst4|clock_counter\(19) ) + ( GND ) + ( \inst4|Add0~62\ ))
-- \inst4|Add0~82\ = CARRY(( \inst4|clock_counter\(19) ) + ( GND ) + ( \inst4|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(19),
	cin => \inst4|Add0~62\,
	sumout => \inst4|Add0~81_sumout\,
	cout => \inst4|Add0~82\);

-- Location: FF_X36_Y51_N59
\inst4|clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~81_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(19));

-- Location: LABCELL_X36_Y50_N0
\inst4|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~57_sumout\ = SUM(( \inst4|clock_counter\(20) ) + ( GND ) + ( \inst4|Add0~82\ ))
-- \inst4|Add0~58\ = CARRY(( \inst4|clock_counter\(20) ) + ( GND ) + ( \inst4|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(20),
	cin => \inst4|Add0~82\,
	sumout => \inst4|Add0~57_sumout\,
	cout => \inst4|Add0~58\);

-- Location: FF_X36_Y50_N1
\inst4|clock_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~57_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(20));

-- Location: LABCELL_X37_Y51_N33
\inst4|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~3_combout\ = ( !\inst4|clock_counter\(20) & ( !\inst4|clock_counter\(18) & ( (\inst4|clock_counter[17]~DUPLICATE_q\ & (!\inst4|clock_counter\(14) & (\inst4|clock_counter\(16) & !\inst4|clock_counter\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[17]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_clock_counter\(14),
	datac => \inst4|ALT_INV_clock_counter\(16),
	datad => \inst4|ALT_INV_clock_counter\(15),
	datae => \inst4|ALT_INV_clock_counter\(20),
	dataf => \inst4|ALT_INV_clock_counter\(18),
	combout => \inst4|Equal1~3_combout\);

-- Location: LABCELL_X36_Y50_N3
\inst4|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~125_sumout\ = SUM(( \inst4|clock_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~58\ ))
-- \inst4|Add0~126\ = CARRY(( \inst4|clock_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_clock_counter[21]~DUPLICATE_q\,
	cin => \inst4|Add0~58\,
	sumout => \inst4|Add0~125_sumout\,
	cout => \inst4|Add0~126\);

-- Location: FF_X36_Y50_N4
\inst4|clock_counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~125_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y50_N6
\inst4|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~121_sumout\ = SUM(( \inst4|clock_counter\(22) ) + ( GND ) + ( \inst4|Add0~126\ ))
-- \inst4|Add0~122\ = CARRY(( \inst4|clock_counter\(22) ) + ( GND ) + ( \inst4|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(22),
	cin => \inst4|Add0~126\,
	sumout => \inst4|Add0~121_sumout\,
	cout => \inst4|Add0~122\);

-- Location: FF_X36_Y50_N7
\inst4|clock_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~121_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(22));

-- Location: LABCELL_X36_Y50_N9
\inst4|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~117_sumout\ = SUM(( \inst4|clock_counter\(23) ) + ( GND ) + ( \inst4|Add0~122\ ))
-- \inst4|Add0~118\ = CARRY(( \inst4|clock_counter\(23) ) + ( GND ) + ( \inst4|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter\(23),
	cin => \inst4|Add0~122\,
	sumout => \inst4|Add0~117_sumout\,
	cout => \inst4|Add0~118\);

-- Location: FF_X36_Y50_N10
\inst4|clock_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~117_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(23));

-- Location: LABCELL_X36_Y50_N12
\inst4|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~113_sumout\ = SUM(( \inst4|clock_counter\(24) ) + ( GND ) + ( \inst4|Add0~118\ ))
-- \inst4|Add0~114\ = CARRY(( \inst4|clock_counter\(24) ) + ( GND ) + ( \inst4|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(24),
	cin => \inst4|Add0~118\,
	sumout => \inst4|Add0~113_sumout\,
	cout => \inst4|Add0~114\);

-- Location: FF_X36_Y50_N14
\inst4|clock_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~113_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(24));

-- Location: LABCELL_X36_Y50_N15
\inst4|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~109_sumout\ = SUM(( \inst4|clock_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~114\ ))
-- \inst4|Add0~110\ = CARRY(( \inst4|clock_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clock_counter[25]~DUPLICATE_q\,
	cin => \inst4|Add0~114\,
	sumout => \inst4|Add0~109_sumout\,
	cout => \inst4|Add0~110\);

-- Location: FF_X36_Y50_N16
\inst4|clock_counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~109_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y50_N18
\inst4|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~105_sumout\ = SUM(( \inst4|clock_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~110\ ))
-- \inst4|Add0~106\ = CARRY(( \inst4|clock_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter[26]~DUPLICATE_q\,
	cin => \inst4|Add0~110\,
	sumout => \inst4|Add0~105_sumout\,
	cout => \inst4|Add0~106\);

-- Location: FF_X36_Y50_N19
\inst4|clock_counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~105_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[26]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y50_N21
\inst4|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~101_sumout\ = SUM(( \inst4|clock_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~106\ ))
-- \inst4|Add0~102\ = CARRY(( \inst4|clock_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[27]~DUPLICATE_q\,
	cin => \inst4|Add0~106\,
	sumout => \inst4|Add0~101_sumout\,
	cout => \inst4|Add0~102\);

-- Location: FF_X36_Y50_N22
\inst4|clock_counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~101_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y50_N24
\inst4|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~97_sumout\ = SUM(( \inst4|clock_counter\(28) ) + ( GND ) + ( \inst4|Add0~102\ ))
-- \inst4|Add0~98\ = CARRY(( \inst4|clock_counter\(28) ) + ( GND ) + ( \inst4|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter\(28),
	cin => \inst4|Add0~102\,
	sumout => \inst4|Add0~97_sumout\,
	cout => \inst4|Add0~98\);

-- Location: FF_X36_Y50_N25
\inst4|clock_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~97_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(28));

-- Location: LABCELL_X36_Y50_N27
\inst4|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~93_sumout\ = SUM(( \inst4|clock_counter\(29) ) + ( GND ) + ( \inst4|Add0~98\ ))
-- \inst4|Add0~94\ = CARRY(( \inst4|clock_counter\(29) ) + ( GND ) + ( \inst4|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(29),
	cin => \inst4|Add0~98\,
	sumout => \inst4|Add0~93_sumout\,
	cout => \inst4|Add0~94\);

-- Location: FF_X36_Y50_N29
\inst4|clock_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~93_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(29));

-- Location: FF_X36_Y50_N31
\inst4|clock_counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~89_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[30]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y50_N30
\inst4|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~89_sumout\ = SUM(( \inst4|clock_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~94\ ))
-- \inst4|Add0~90\ = CARRY(( \inst4|clock_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \inst4|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clock_counter[30]~DUPLICATE_q\,
	cin => \inst4|Add0~94\,
	sumout => \inst4|Add0~89_sumout\,
	cout => \inst4|Add0~90\);

-- Location: FF_X36_Y50_N32
\inst4|clock_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~89_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(30));

-- Location: LABCELL_X36_Y50_N33
\inst4|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~85_sumout\ = SUM(( \inst4|clock_counter\(31) ) + ( GND ) + ( \inst4|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(31),
	cin => \inst4|Add0~90\,
	sumout => \inst4|Add0~85_sumout\);

-- Location: FF_X36_Y50_N35
\inst4|clock_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~85_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(31));

-- Location: FF_X36_Y50_N23
\inst4|clock_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~101_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(27));

-- Location: LABCELL_X36_Y50_N51
\inst4|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~4_combout\ = ( !\inst4|clock_counter\(27) & ( !\inst4|clock_counter\(19) & ( (!\inst4|clock_counter\(29) & (!\inst4|clock_counter\(30) & (!\inst4|clock_counter\(28) & !\inst4|clock_counter\(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(29),
	datab => \inst4|ALT_INV_clock_counter\(30),
	datac => \inst4|ALT_INV_clock_counter\(28),
	datad => \inst4|ALT_INV_clock_counter\(31),
	datae => \inst4|ALT_INV_clock_counter\(27),
	dataf => \inst4|ALT_INV_clock_counter\(19),
	combout => \inst4|Equal1~4_combout\);

-- Location: FF_X36_Y51_N2
\inst4|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~5_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(0));

-- Location: LABCELL_X37_Y51_N36
\inst4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = ( \inst4|clock_counter\(0) & ( \inst4|clock_counter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_clock_counter\(0),
	dataf => \inst4|ALT_INV_clock_counter\(1),
	combout => \inst4|Equal1~0_combout\);

-- Location: FF_X36_Y50_N20
\inst4|clock_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~105_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(26));

-- Location: FF_X36_Y50_N17
\inst4|clock_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~109_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(25));

-- Location: FF_X36_Y50_N5
\inst4|clock_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~125_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(21));

-- Location: LABCELL_X36_Y50_N57
\inst4|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~5_combout\ = ( !\inst4|clock_counter\(22) & ( !\inst4|clock_counter\(23) & ( (!\inst4|clock_counter\(26) & (!\inst4|clock_counter\(24) & (!\inst4|clock_counter\(25) & !\inst4|clock_counter\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter\(26),
	datab => \inst4|ALT_INV_clock_counter\(24),
	datac => \inst4|ALT_INV_clock_counter\(25),
	datad => \inst4|ALT_INV_clock_counter\(21),
	datae => \inst4|ALT_INV_clock_counter\(22),
	dataf => \inst4|ALT_INV_clock_counter\(23),
	combout => \inst4|Equal1~5_combout\);

-- Location: FF_X36_Y51_N13
\inst4|clock_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~21_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[4]~DUPLICATE_q\);

-- Location: FF_X36_Y51_N11
\inst4|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~25_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter\(3));

-- Location: FF_X36_Y51_N7
\inst4|clock_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~29_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y51_N54
\inst4|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = ( !\inst4|clock_counter\(7) & ( !\inst4|clock_counter\(6) & ( (\inst4|clock_counter[4]~DUPLICATE_q\ & (\inst4|clock_counter\(3) & (\inst4|clock_counter[2]~DUPLICATE_q\ & \inst4|clock_counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[4]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_clock_counter\(3),
	datac => \inst4|ALT_INV_clock_counter[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_clock_counter\(5),
	datae => \inst4|ALT_INV_clock_counter\(7),
	dataf => \inst4|ALT_INV_clock_counter\(6),
	combout => \inst4|Equal1~1_combout\);

-- Location: FF_X36_Y51_N31
\inst4|clock_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~45_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[10]~DUPLICATE_q\);

-- Location: FF_X36_Y51_N28
\inst4|clock_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add0~49_sumout\,
	sclr => \inst4|Equal1~6_combout\,
	ena => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clock_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y51_N48
\inst4|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = ( !\inst4|clock_counter[9]~DUPLICATE_q\ & ( !\inst4|clock_counter\(12) & ( (\inst4|clock_counter[10]~DUPLICATE_q\ & (\inst4|clock_counter\(8) & (!\inst4|clock_counter\(13) & \inst4|clock_counter\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clock_counter[10]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_clock_counter\(8),
	datac => \inst4|ALT_INV_clock_counter\(13),
	datad => \inst4|ALT_INV_clock_counter\(11),
	datae => \inst4|ALT_INV_clock_counter[9]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_clock_counter\(12),
	combout => \inst4|Equal1~2_combout\);

-- Location: LABCELL_X37_Y51_N24
\inst4|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal1~6_combout\ = ( \inst4|Equal1~1_combout\ & ( \inst4|Equal1~2_combout\ & ( (\inst4|Equal1~3_combout\ & (\inst4|Equal1~4_combout\ & (\inst4|Equal1~0_combout\ & \inst4|Equal1~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal1~3_combout\,
	datab => \inst4|ALT_INV_Equal1~4_combout\,
	datac => \inst4|ALT_INV_Equal1~0_combout\,
	datad => \inst4|ALT_INV_Equal1~5_combout\,
	datae => \inst4|ALT_INV_Equal1~1_combout\,
	dataf => \inst4|ALT_INV_Equal1~2_combout\,
	combout => \inst4|Equal1~6_combout\);

-- Location: LABCELL_X35_Y51_N36
\inst4|start_strobe1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|start_strobe1~0_combout\ = ( \inst4|Equal0~5_combout\ & ( !\inst4|start_strobe1~q\ $ (((!\inst4|Equal1~6_combout\) # ((\inst4|Equal0~6_combout\ & \inst4|counter\(0))))) ) ) # ( !\inst4|Equal0~5_combout\ & ( !\inst4|start_strobe1~q\ $ 
-- (!\inst4|Equal1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110010101101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_start_strobe1~q\,
	datab => \inst4|ALT_INV_Equal0~6_combout\,
	datac => \inst4|ALT_INV_Equal1~6_combout\,
	datad => \inst4|ALT_INV_counter\(0),
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|start_strobe1~0_combout\);

-- Location: FF_X35_Y51_N4
\inst4|start_strobe1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|start_strobe1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|start_strobe1~DUPLICATE_q\);

-- Location: LABCELL_X33_Y51_N54
\inst4|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux24~0_combout\ = ( \inst4|statemachine[2]~DUPLICATE_q\ ) # ( !\inst4|statemachine[2]~DUPLICATE_q\ & ( ((!\inst4|start_strobe1~DUPLICATE_q\) # (\inst4|statemachine[3]~DUPLICATE_q\)) # (\inst4|statemachine\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_start_strobe1~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	combout => \inst4|Mux24~0_combout\);

-- Location: FF_X33_Y51_N56
\inst4|statemachine[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Mux24~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sclr => \inst4|statemachine\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine\(0));

-- Location: LABCELL_X33_Y51_N18
\inst4|counter[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|counter[31]~0_combout\ = ( !\inst4|Equal0~7_combout\ & ( (\inst4|statemachine\(3) & (\inst4|statemachine[2]~DUPLICATE_q\ & (\inst4|statemachine\(1) & \inst4|statemachine\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(3),
	datab => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_statemachine\(1),
	datad => \inst4|ALT_INV_statemachine\(0),
	dataf => \inst4|ALT_INV_Equal0~7_combout\,
	combout => \inst4|counter[31]~0_combout\);

-- Location: FF_X34_Y53_N2
\inst4|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~1_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[0]~DUPLICATE_q\);

-- Location: FF_X34_Y53_N1
\inst4|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~1_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(0));

-- Location: FF_X34_Y51_N14
\inst4|statemachine[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux22~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine\(2));

-- Location: LABCELL_X33_Y51_N15
\inst4|count[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|count[2]~1_combout\ = (\inst4|statemachine\(3) & \inst4|statemachine\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(3),
	datab => \inst4|ALT_INV_statemachine\(2),
	combout => \inst4|count[2]~1_combout\);

-- Location: LABCELL_X35_Y51_N57
\inst4|count[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|count[2]~0_combout\ = ( \inst4|statemachine[2]~DUPLICATE_q\ & ( (!\inst4|statemachine\(1) & !\inst4|statemachine[3]~DUPLICATE_q\) ) ) # ( !\inst4|statemachine[2]~DUPLICATE_q\ & ( (!\inst4|statemachine\(1) & \inst4|statemachine[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_statemachine\(1),
	datad => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	combout => \inst4|count[2]~0_combout\);

-- Location: LABCELL_X35_Y51_N0
\inst4|count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|count[2]~2_combout\ = ( !\inst4|count[2]~0_combout\ & ( \inst4|Equal0~5_combout\ & ( (!\inst4|count[2]~1_combout\ & (\inst4|statemachine\(0) & ((!\inst4|counter\(0)) # (!\inst4|Equal0~6_combout\)))) ) ) ) # ( !\inst4|count[2]~0_combout\ & ( 
-- !\inst4|Equal0~5_combout\ & ( (!\inst4|count[2]~1_combout\ & \inst4|statemachine\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(0),
	datab => \inst4|ALT_INV_count[2]~1_combout\,
	datac => \inst4|ALT_INV_statemachine\(0),
	datad => \inst4|ALT_INV_Equal0~6_combout\,
	datae => \inst4|ALT_INV_count[2]~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|count[2]~2_combout\);

-- Location: FF_X35_Y51_N35
\inst4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux27~0_combout\,
	sload => VCC,
	ena => \inst4|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(0));

-- Location: LABCELL_X35_Y51_N27
\inst4|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux15~0_combout\ = ( \inst4|count[1]~DUPLICATE_q\ & ( !\inst4|count\(0) ) ) # ( !\inst4|count[1]~DUPLICATE_q\ & ( \inst4|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(0),
	dataf => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \inst4|Mux15~0_combout\);

-- Location: LABCELL_X35_Y51_N24
\inst4|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux26~0_combout\ = ( \inst4|statemachine[2]~DUPLICATE_q\ & ( \inst4|Mux15~0_combout\ ) ) # ( !\inst4|statemachine[2]~DUPLICATE_q\ & ( (\inst4|Mux15~0_combout\ & ((\inst4|statemachine\(1)) # (\inst4|statemachine[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Mux15~0_combout\,
	datac => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine\(1),
	dataf => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	combout => \inst4|Mux26~0_combout\);

-- Location: FF_X35_Y51_N25
\inst4|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Mux26~0_combout\,
	ena => \inst4|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y52_N45
\inst4|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux25~0_combout\ = ( \inst4|count\(2) & ( \inst4|statemachine[2]~DUPLICATE_q\ & ( (!\inst4|count\(0)) # (!\inst4|count[1]~DUPLICATE_q\) ) ) ) # ( !\inst4|count\(2) & ( \inst4|statemachine[2]~DUPLICATE_q\ & ( (\inst4|count\(0) & 
-- \inst4|count[1]~DUPLICATE_q\) ) ) ) # ( \inst4|count\(2) & ( !\inst4|statemachine[2]~DUPLICATE_q\ & ( (!\inst4|count\(0) & (((\inst4|statemachine[3]~DUPLICATE_q\)) # (\inst4|statemachine\(1)))) # (\inst4|count\(0) & (!\inst4|count[1]~DUPLICATE_q\ & 
-- ((\inst4|statemachine[3]~DUPLICATE_q\) # (\inst4|statemachine\(1))))) ) ) ) # ( !\inst4|count\(2) & ( !\inst4|statemachine[2]~DUPLICATE_q\ & ( (\inst4|count\(0) & (\inst4|count[1]~DUPLICATE_q\ & ((\inst4|statemachine[3]~DUPLICATE_q\) # 
-- (\inst4|statemachine\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101001111110010101000000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(0),
	datab => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_count\(2),
	dataf => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	combout => \inst4|Mux25~0_combout\);

-- Location: FF_X35_Y51_N41
\inst4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux25~0_combout\,
	sload => VCC,
	ena => \inst4|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(2));

-- Location: LABCELL_X35_Y51_N9
\inst4|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = ( \inst4|count\(0) & ( \inst4|count[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_count\(0),
	combout => \inst4|Mux10~0_combout\);

-- Location: LABCELL_X35_Y52_N3
\inst4|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux22~0_combout\ = ( \inst4|statemachine\(1) & ( \inst4|statemachine\(0) & ( (!\inst4|statemachine[2]~DUPLICATE_q\ & (((\inst4|count\(2) & \inst4|Mux10~0_combout\)))) # (\inst4|statemachine[2]~DUPLICATE_q\ & (!\inst4|statemachine[3]~DUPLICATE_q\ & 
-- ((!\inst4|count\(2)) # (!\inst4|Mux10~0_combout\)))) ) ) ) # ( !\inst4|statemachine\(1) & ( \inst4|statemachine\(0) & ( \inst4|statemachine[2]~DUPLICATE_q\ ) ) ) # ( \inst4|statemachine\(1) & ( !\inst4|statemachine\(0) & ( 
-- \inst4|statemachine[2]~DUPLICATE_q\ ) ) ) # ( !\inst4|statemachine\(1) & ( !\inst4|statemachine\(0) & ( \inst4|statemachine[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000101000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_count\(2),
	datac => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_Mux10~0_combout\,
	datae => \inst4|ALT_INV_statemachine\(1),
	dataf => \inst4|ALT_INV_statemachine\(0),
	combout => \inst4|Mux22~0_combout\);

-- Location: FF_X34_Y51_N13
\inst4|statemachine[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux22~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine[2]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y52_N18
\inst4|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux23~0_combout\ = ( \inst4|count\(2) & ( \inst4|Mux10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_count\(2),
	dataf => \inst4|ALT_INV_Mux10~0_combout\,
	combout => \inst4|Mux23~0_combout\);

-- Location: LABCELL_X33_Y52_N51
\inst4|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux21~0_combout\ = ( \inst4|statemachine[3]~DUPLICATE_q\ & ( \inst4|Mux23~0_combout\ & ( (!\inst4|statemachine\(1)) # ((!\inst4|statemachine[2]~DUPLICATE_q\) # (!\inst4|statemachine\(0))) ) ) ) # ( !\inst4|statemachine[3]~DUPLICATE_q\ & ( 
-- \inst4|Mux23~0_combout\ & ( (\inst4|statemachine\(1) & (\inst4|statemachine[2]~DUPLICATE_q\ & \inst4|statemachine\(0))) ) ) ) # ( \inst4|statemachine[3]~DUPLICATE_q\ & ( !\inst4|Mux23~0_combout\ & ( (!\inst4|statemachine\(1)) # 
-- ((!\inst4|statemachine[2]~DUPLICATE_q\) # (!\inst4|statemachine\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110000000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine\(0),
	datae => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Mux23~0_combout\,
	combout => \inst4|Mux21~0_combout\);

-- Location: FF_X33_Y51_N37
\inst4|statemachine[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux21~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine[3]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y52_N57
\inst4|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux28~0_combout\ = ( !\inst4|statemachine\(1) & ( (\inst4|statemachine\(0) & ((\inst4|statemachine[2]~DUPLICATE_q\) # (\inst4|statemachine[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(0),
	datac => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_statemachine\(1),
	combout => \inst4|Mux28~0_combout\);

-- Location: LABCELL_X33_Y52_N54
\inst4|ack~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ack~0_combout\ = ( \inst4|Mux28~0_combout\ & ( (!\inst4|Equal0~7_combout\ & ((!\inst4|sda_out~DUPLICATE_q\))) # (\inst4|Equal0~7_combout\ & (\inst4|ack~q\)) ) ) # ( !\inst4|Mux28~0_combout\ & ( \inst4|ack~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ack~q\,
	datac => \inst4|ALT_INV_sda_out~DUPLICATE_q\,
	datad => \inst4|ALT_INV_Equal0~7_combout\,
	dataf => \inst4|ALT_INV_Mux28~0_combout\,
	combout => \inst4|ack~0_combout\);

-- Location: FF_X33_Y52_N14
\inst4|ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|ack~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ack~q\);

-- Location: LABCELL_X33_Y52_N12
\inst4|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux23~1_combout\ = ( \inst4|ack~q\ & ( \inst4|Mux23~0_combout\ & ( (!\inst4|statemachine\(1) & (!\inst4|statemachine[3]~DUPLICATE_q\ & (\inst4|statemachine\(0) & !\inst4|statemachine[2]~DUPLICATE_q\))) # (\inst4|statemachine\(1) & 
-- (((!\inst4|statemachine\(0))))) ) ) ) # ( !\inst4|ack~q\ & ( \inst4|Mux23~0_combout\ & ( !\inst4|statemachine\(1) $ (!\inst4|statemachine\(0)) ) ) ) # ( \inst4|ack~q\ & ( !\inst4|Mux23~0_combout\ & ( (!\inst4|statemachine[3]~DUPLICATE_q\ & 
-- (((\inst4|statemachine\(0) & !\inst4|statemachine[2]~DUPLICATE_q\)) # (\inst4|statemachine\(1)))) # (\inst4|statemachine[3]~DUPLICATE_q\ & (\inst4|statemachine\(1) & ((!\inst4|statemachine\(0)) # (!\inst4|statemachine[2]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst4|ack~q\ & ( !\inst4|Mux23~0_combout\ & ( (!\inst4|statemachine\(1) & (((\inst4|statemachine\(0))))) # (\inst4|statemachine\(1) & ((!\inst4|statemachine[3]~DUPLICATE_q\) # ((!\inst4|statemachine\(0)) # (!\inst4|statemachine[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111110001110110011001000111100001111000011100000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_statemachine\(0),
	datad => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_ack~q\,
	dataf => \inst4|ALT_INV_Mux23~0_combout\,
	combout => \inst4|Mux23~1_combout\);

-- Location: FF_X33_Y51_N50
\inst4|statemachine[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	asdata => \inst4|Mux23~1_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|statemachine\(1));

-- Location: LABCELL_X33_Y52_N30
\inst4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = ( !\inst4|count\(2) & ( \inst4|count[1]~DUPLICATE_q\ ) ) # ( \inst4|count\(2) & ( !\inst4|count[1]~DUPLICATE_q\ & ( \inst4|count\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_count\(0),
	datae => \inst4|ALT_INV_count\(2),
	dataf => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \inst4|Mux0~0_combout\);

-- Location: MLABCELL_X34_Y52_N57
\inst4|sda_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sda_out~1_combout\ = ( \inst4|Mux0~0_combout\ & ( (!\inst4|statemachine\(1) & (!\inst4|statemachine[2]~DUPLICATE_q\ & (\inst4|statemachine\(0) & !\inst4|statemachine[3]~DUPLICATE_q\))) # (\inst4|statemachine\(1) & (!\inst4|statemachine\(0) & 
-- ((\inst4|statemachine[3]~DUPLICATE_q\) # (\inst4|statemachine[2]~DUPLICATE_q\)))) ) ) # ( !\inst4|Mux0~0_combout\ & ( (!\inst4|statemachine\(0) & (\inst4|statemachine\(1))) # (\inst4|statemachine\(0) & (((!\inst4|statemachine[2]~DUPLICATE_q\ & 
-- !\inst4|statemachine[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001010000010111000101000000011000010100000001100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(1),
	datab => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_statemachine\(0),
	datad => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Mux0~0_combout\,
	combout => \inst4|sda_out~1_combout\);

-- Location: LABCELL_X33_Y51_N12
\inst4|Mux20~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~10_combout\ = ( \inst4|statemachine\(2) & ( !\inst4|statemachine\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_statemachine\(3),
	dataf => \inst4|ALT_INV_statemachine\(2),
	combout => \inst4|Mux20~10_combout\);

-- Location: FF_X34_Y53_N5
\inst4|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Add2~125_sumout\,
	ena => \inst4|counter[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y51_N30
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( \inst4|Equal0~5_combout\ & ( (!\inst4|counter\(3) & (!\inst4|counter[1]~DUPLICATE_q\ & !\inst4|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(3),
	datab => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter\(0),
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|Equal2~0_combout\);

-- Location: LABCELL_X33_Y51_N24
\inst4|Mux20~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~15_combout\ = ( !\inst4|statemachine\(0) & ( \inst4|Equal2~0_combout\ & ( (\inst4|statemachine\(1) & (!\inst4|count\(2) & (\inst4|Mux20~10_combout\ & \inst4|Mux10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(1),
	datab => \inst4|ALT_INV_count\(2),
	datac => \inst4|ALT_INV_Mux20~10_combout\,
	datad => \inst4|ALT_INV_Mux10~0_combout\,
	datae => \inst4|ALT_INV_statemachine\(0),
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|Mux20~15_combout\);

-- Location: LABCELL_X33_Y52_N39
\inst4|sda_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sda_out~2_combout\ = ( \inst4|statemachine[3]~DUPLICATE_q\ & ( \inst4|statemachine\(1) & ( (\inst4|sda_out~DUPLICATE_q\ & (!\inst4|statemachine[2]~DUPLICATE_q\ & \inst4|statemachine\(0))) ) ) ) # ( !\inst4|statemachine[3]~DUPLICATE_q\ & ( 
-- \inst4|statemachine\(1) & ( (\inst4|sda_out~DUPLICATE_q\ & (\inst4|statemachine[2]~DUPLICATE_q\ & \inst4|statemachine\(0))) ) ) ) # ( \inst4|statemachine[3]~DUPLICATE_q\ & ( !\inst4|statemachine\(1) & ( (\inst4|sda_out~DUPLICATE_q\ & 
-- \inst4|statemachine\(0)) ) ) ) # ( !\inst4|statemachine[3]~DUPLICATE_q\ & ( !\inst4|statemachine\(1) & ( (\inst4|sda_out~DUPLICATE_q\ & (\inst4|statemachine[2]~DUPLICATE_q\ & \inst4|statemachine\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000101010100000000000001010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sda_out~DUPLICATE_q\,
	datac => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine\(0),
	datae => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_statemachine\(1),
	combout => \inst4|sda_out~2_combout\);

-- Location: LABCELL_X33_Y52_N24
\inst4|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal6~0_combout\ = ( \inst4|counter[2]~DUPLICATE_q\ & ( !\inst4|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_counter\(3),
	combout => \inst4|Equal6~0_combout\);

-- Location: LABCELL_X33_Y52_N6
\inst4|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal6~1_combout\ = ( \inst4|Equal0~3_combout\ & ( \inst4|Equal0~1_combout\ & ( (\inst4|Equal6~0_combout\ & (\inst4|Equal0~4_combout\ & (\inst4|Equal0~0_combout\ & \inst4|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal6~0_combout\,
	datab => \inst4|ALT_INV_Equal0~4_combout\,
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_Equal0~2_combout\,
	datae => \inst4|ALT_INV_Equal0~3_combout\,
	dataf => \inst4|ALT_INV_Equal0~1_combout\,
	combout => \inst4|Equal6~1_combout\);

-- Location: LABCELL_X33_Y52_N0
\inst4|Mux20~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~9_combout\ = ( \inst4|counter[1]~DUPLICATE_q\ & ( \inst4|Equal6~1_combout\ & ( (\inst4|count\(2) & ((!\inst4|counter\(0) & (!\inst4|count\(0))) # (\inst4|counter\(0) & ((!\inst4|count[1]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\inst4|counter[1]~DUPLICATE_q\ & ( \inst4|Equal6~1_combout\ & ( (\inst4|count\(2) & ((!\inst4|count\(0) & (!\inst4|count[1]~DUPLICATE_q\ $ (!\inst4|counter\(0)))) # (\inst4|count\(0) & (!\inst4|count[1]~DUPLICATE_q\ & !\inst4|counter\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011010000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(0),
	datab => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter\(0),
	datad => \inst4|ALT_INV_count\(2),
	datae => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal6~1_combout\,
	combout => \inst4|Mux20~9_combout\);

-- Location: LABCELL_X33_Y51_N21
\inst4|Mux20~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~11_combout\ = ( \inst4|Equal0~5_combout\ & ( !\inst4|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_counter\(3),
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|Mux20~11_combout\);

-- Location: FF_X34_Y51_N8
\inst4|sda_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|sda_out~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sda_out~q\);

-- Location: LABCELL_X35_Y51_N39
\inst4|Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~5_combout\ = ( \inst4|count\(0) & ( (\inst4|count[1]~DUPLICATE_q\ & !\inst4|count\(2)) ) ) # ( !\inst4|count\(0) & ( (\inst4|count[1]~DUPLICATE_q\ & \inst4|count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_count\(2),
	dataf => \inst4|ALT_INV_count\(0),
	combout => \inst4|Mux20~5_combout\);

-- Location: MLABCELL_X34_Y51_N18
\inst4|Mux20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~6_combout\ = ( \inst4|Equal0~5_combout\ & ( \inst4|counter\(3) & ( (\inst4|counter[1]~DUPLICATE_q\ & ((!\inst4|counter[0]~DUPLICATE_q\ & ((\inst4|Mux20~5_combout\))) # (\inst4|counter[0]~DUPLICATE_q\ & (!\inst4|sda_out~q\)))) ) ) ) # ( 
-- !\inst4|Equal0~5_combout\ & ( \inst4|counter\(3) & ( !\inst4|sda_out~q\ ) ) ) # ( \inst4|Equal0~5_combout\ & ( !\inst4|counter\(3) & ( !\inst4|sda_out~q\ ) ) ) # ( !\inst4|Equal0~5_combout\ & ( !\inst4|counter\(3) & ( !\inst4|sda_out~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011000000000001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_sda_out~q\,
	datac => \inst4|ALT_INV_Mux20~5_combout\,
	datad => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_Equal0~5_combout\,
	dataf => \inst4|ALT_INV_counter\(3),
	combout => \inst4|Mux20~6_combout\);

-- Location: MLABCELL_X34_Y51_N24
\inst4|Mux20~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~7_combout\ = ( \inst4|Equal0~5_combout\ & ( \inst4|counter[0]~DUPLICATE_q\ & ( (!\inst4|count\(2) & (!\inst4|counter[1]~DUPLICATE_q\ & (\inst4|counter\(3) & \inst4|Mux10~0_combout\))) ) ) ) # ( \inst4|Equal0~5_combout\ & ( 
-- !\inst4|counter[0]~DUPLICATE_q\ & ( (\inst4|count\(2) & (!\inst4|counter[1]~DUPLICATE_q\ & (\inst4|counter\(3) & !\inst4|Mux10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(2),
	datab => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter\(3),
	datad => \inst4|ALT_INV_Mux10~0_combout\,
	datae => \inst4|ALT_INV_Equal0~5_combout\,
	dataf => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \inst4|Mux20~7_combout\);

-- Location: MLABCELL_X34_Y51_N48
\inst4|Mux20~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~8_combout\ = ( !\inst4|Equal6~1_combout\ & ( (\inst4|Mux20~7_combout\) # (\inst4|Mux20~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Mux20~6_combout\,
	datad => \inst4|ALT_INV_Mux20~7_combout\,
	dataf => \inst4|ALT_INV_Equal6~1_combout\,
	combout => \inst4|Mux20~8_combout\);

-- Location: MLABCELL_X34_Y51_N42
\inst4|Mux20~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~12_combout\ = ( !\inst4|Mux20~11_combout\ & ( \inst4|Mux20~8_combout\ & ( (\inst4|Mux20~10_combout\ & (\inst4|statemachine\(1) & !\inst4|statemachine\(0))) ) ) ) # ( !\inst4|Mux20~11_combout\ & ( !\inst4|Mux20~8_combout\ & ( 
-- (\inst4|Mux20~10_combout\ & (\inst4|statemachine\(1) & (\inst4|Mux20~9_combout\ & !\inst4|statemachine\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000010001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Mux20~10_combout\,
	datab => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_Mux20~9_combout\,
	datad => \inst4|ALT_INV_statemachine\(0),
	datae => \inst4|ALT_INV_Mux20~11_combout\,
	dataf => \inst4|ALT_INV_Mux20~8_combout\,
	combout => \inst4|Mux20~12_combout\);

-- Location: LABCELL_X35_Y51_N48
\inst4|Mux20~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~13_combout\ = ( !\inst4|counter\(3) & ( \inst4|Equal0~5_combout\ & ( (!\inst4|count\(0) & (!\inst4|counter\(0) & ((!\inst4|counter[1]~DUPLICATE_q\) # (\inst4|count[1]~DUPLICATE_q\)))) # (\inst4|count\(0) & (!\inst4|count[1]~DUPLICATE_q\ & 
-- (!\inst4|counter[1]~DUPLICATE_q\ $ (\inst4|counter\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100010000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(0),
	datab => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_counter\(0),
	datae => \inst4|ALT_INV_counter\(3),
	dataf => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|Mux20~13_combout\);

-- Location: LABCELL_X35_Y51_N21
\inst4|Mux20~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~14_combout\ = ( \inst4|statemachine\(1) & ( \inst4|Mux20~13_combout\ & ( (!\inst4|statemachine\(0) & (\inst4|count\(2) & \inst4|Mux20~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(0),
	datab => \inst4|ALT_INV_count\(2),
	datad => \inst4|ALT_INV_Mux20~10_combout\,
	datae => \inst4|ALT_INV_statemachine\(1),
	dataf => \inst4|ALT_INV_Mux20~13_combout\,
	combout => \inst4|Mux20~14_combout\);

-- Location: LABCELL_X33_Y51_N42
\inst4|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~3_combout\ = ( \inst4|statemachine\(1) & ( (!\inst4|statemachine\(2) & (!\inst4|statemachine\(0) & \inst4|statemachine\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_statemachine\(2),
	datac => \inst4|ALT_INV_statemachine\(0),
	datad => \inst4|ALT_INV_statemachine\(3),
	dataf => \inst4|ALT_INV_statemachine\(1),
	combout => \inst4|Mux20~3_combout\);

-- Location: FF_X35_Y51_N26
\inst4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Mux26~0_combout\,
	ena => \inst4|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(1));

-- Location: LABCELL_X35_Y51_N15
\inst4|Mux20~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~18_combout\ = ( \inst4|counter\(2) & ( \inst4|counter\(0) & ( (\inst4|counter\(1) & ((!\inst4|count\(0) & (\inst4|count[1]~DUPLICATE_q\)) # (\inst4|count\(0) & (!\inst4|count[1]~DUPLICATE_q\ & !\inst4|count\(2))))) ) ) ) # ( 
-- !\inst4|counter\(2) & ( \inst4|counter\(0) & ( (!\inst4|count\(0) & (\inst4|count[1]~DUPLICATE_q\ & \inst4|counter\(1))) ) ) ) # ( \inst4|counter\(2) & ( !\inst4|counter\(0) & ( (\inst4|count[1]~DUPLICATE_q\ & (\inst4|count\(2) & ((!\inst4|counter\(1)) # 
-- (\inst4|count\(0))))) ) ) ) # ( !\inst4|counter\(2) & ( !\inst4|counter\(0) & ( (!\inst4|count[1]~DUPLICATE_q\ & (\inst4|count\(0) & (!\inst4|count\(2) & !\inst4|counter\(1)))) # (\inst4|count[1]~DUPLICATE_q\ & (\inst4|count\(2) & ((!\inst4|counter\(1)) # 
-- (\inst4|count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100000001000000110000000100000000001000100000000001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(0),
	datab => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_count\(2),
	datad => \inst4|ALT_INV_counter\(1),
	datae => \inst4|ALT_INV_counter\(2),
	dataf => \inst4|ALT_INV_counter\(0),
	combout => \inst4|Mux20~18_combout\);

-- Location: MLABCELL_X34_Y51_N51
\inst4|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal0~8_combout\ = ( \inst4|Equal0~2_combout\ & ( (\inst4|Equal0~3_combout\ & (\inst4|Equal0~4_combout\ & (\inst4|Equal0~1_combout\ & \inst4|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~3_combout\,
	datab => \inst4|ALT_INV_Equal0~4_combout\,
	datac => \inst4|ALT_INV_Equal0~1_combout\,
	datad => \inst4|ALT_INV_Equal0~0_combout\,
	dataf => \inst4|ALT_INV_Equal0~2_combout\,
	combout => \inst4|Equal0~8_combout\);

-- Location: LABCELL_X35_Y51_N42
\inst4|Mux20~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~20_combout\ = ( \inst4|sda_out~DUPLICATE_q\ & ( \inst4|Equal0~8_combout\ & ( (!\inst4|count\(1) & (\inst4|Mux20~18_combout\ & \inst4|counter\(3))) ) ) ) # ( !\inst4|sda_out~DUPLICATE_q\ & ( \inst4|Equal0~8_combout\ & ( (!\inst4|counter\(3)) # 
-- (((!\inst4|count\(1) & \inst4|Mux20~18_combout\)) # (\inst4|counter\(2))) ) ) ) # ( !\inst4|sda_out~DUPLICATE_q\ & ( !\inst4|Equal0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110010111111110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(1),
	datab => \inst4|ALT_INV_Mux20~18_combout\,
	datac => \inst4|ALT_INV_counter\(3),
	datad => \inst4|ALT_INV_counter\(2),
	datae => \inst4|ALT_INV_sda_out~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal0~8_combout\,
	combout => \inst4|Mux20~20_combout\);

-- Location: MLABCELL_X34_Y52_N48
\inst4|Mux20~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~19_combout\ = ( \inst4|counter[1]~DUPLICATE_q\ & ( \inst4|Mux20~18_combout\ & ( (!\inst4|counter\(3) & ((!\inst4|count[1]~DUPLICATE_q\) # ((!\inst4|sda_out~DUPLICATE_q\ & !\inst4|counter\(2))))) # (\inst4|counter\(3) & 
-- (((!\inst4|sda_out~DUPLICATE_q\)))) ) ) ) # ( !\inst4|counter[1]~DUPLICATE_q\ & ( \inst4|Mux20~18_combout\ & ( (!\inst4|sda_out~DUPLICATE_q\ & ((!\inst4|counter\(3)) # (\inst4|counter\(2)))) ) ) ) # ( \inst4|counter[1]~DUPLICATE_q\ & ( 
-- !\inst4|Mux20~18_combout\ & ( (!\inst4|sda_out~DUPLICATE_q\ & ((!\inst4|counter\(2)) # (\inst4|counter\(3)))) ) ) ) # ( !\inst4|counter[1]~DUPLICATE_q\ & ( !\inst4|Mux20~18_combout\ & ( (!\inst4|sda_out~DUPLICATE_q\ & ((!\inst4|counter\(3)) # 
-- (\inst4|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110011000000110011000000110011001110110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_sda_out~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter\(3),
	datad => \inst4|ALT_INV_counter\(2),
	datae => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Mux20~18_combout\,
	combout => \inst4|Mux20~19_combout\);

-- Location: MLABCELL_X34_Y51_N36
\inst4|Mux20~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~21_combout\ = ( \inst4|count[1]~DUPLICATE_q\ & ( (\inst4|Mux20~18_combout\ & (((\inst4|counter\(3) & \inst4|Equal0~5_combout\)) # (\inst4|counter[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(3),
	datab => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_Mux20~18_combout\,
	datad => \inst4|ALT_INV_Equal0~5_combout\,
	dataf => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \inst4|Mux20~21_combout\);

-- Location: MLABCELL_X34_Y51_N15
\inst4|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~1_combout\ = ( \inst4|Mux20~21_combout\ & ( \inst4|Equal0~8_combout\ & ( (\inst4|counter[0]~DUPLICATE_q\ & (!\inst4|Equal6~1_combout\ & !\inst4|Mux20~19_combout\)) ) ) ) # ( !\inst4|Mux20~21_combout\ & ( \inst4|Equal0~8_combout\ & ( 
-- (!\inst4|counter[0]~DUPLICATE_q\ & (!\inst4|Mux20~20_combout\)) # (\inst4|counter[0]~DUPLICATE_q\ & ((!\inst4|Mux20~19_combout\))) ) ) ) # ( \inst4|Mux20~21_combout\ & ( !\inst4|Equal0~8_combout\ & ( (\inst4|counter[0]~DUPLICATE_q\ & 
-- (!\inst4|Mux20~20_combout\ & !\inst4|Equal6~1_combout\)) ) ) ) # ( !\inst4|Mux20~21_combout\ & ( !\inst4|Equal0~8_combout\ & ( !\inst4|Mux20~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010000000100000011011101100010000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_Mux20~20_combout\,
	datac => \inst4|ALT_INV_Equal6~1_combout\,
	datad => \inst4|ALT_INV_Mux20~19_combout\,
	datae => \inst4|ALT_INV_Mux20~21_combout\,
	dataf => \inst4|ALT_INV_Equal0~8_combout\,
	combout => \inst4|Mux20~1_combout\);

-- Location: MLABCELL_X34_Y51_N39
\inst4|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~2_combout\ = ( \inst4|Equal0~8_combout\ & ( (!\inst4|counter\(3) & ((!\inst4|counter[0]~DUPLICATE_q\ & ((\inst4|counter[2]~DUPLICATE_q\) # (\inst4|counter[1]~DUPLICATE_q\))) # (\inst4|counter[0]~DUPLICATE_q\ & 
-- ((!\inst4|counter[1]~DUPLICATE_q\) # (!\inst4|counter[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010101010000010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(3),
	datab => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal0~8_combout\,
	combout => \inst4|Mux20~2_combout\);

-- Location: LABCELL_X35_Y51_N30
\inst4|Mux20~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~22_combout\ = ( \inst4|counter\(2) & ( \inst4|count[1]~DUPLICATE_q\ & ( (!\inst4|counter\(1) & ((!\inst4|count\(2) & ((!\inst4|counter\(0)) # (\inst4|count\(0)))) # (\inst4|count\(2) & ((\inst4|counter\(0)))))) # (\inst4|counter\(1) & 
-- (!\inst4|count\(2) & ((\inst4|counter\(0))))) ) ) ) # ( !\inst4|counter\(2) & ( \inst4|count[1]~DUPLICATE_q\ & ( (!\inst4|counter\(1) & (((\inst4|count\(0) & \inst4|counter\(0))))) # (\inst4|counter\(1) & ((!\inst4|count\(2)) # ((!\inst4|counter\(0))))) ) 
-- ) ) # ( \inst4|counter\(2) & ( !\inst4|count[1]~DUPLICATE_q\ & ( (!\inst4|count\(2) & (\inst4|counter\(0) & ((!\inst4|counter\(1)) # (\inst4|count\(0))))) ) ) ) # ( !\inst4|counter\(2) & ( !\inst4|count[1]~DUPLICATE_q\ & ( (\inst4|counter\(1) & 
-- (!\inst4|count\(2) & (\inst4|count\(0) & \inst4|counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000001000110001010101010011101000100001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(1),
	datab => \inst4|ALT_INV_count\(2),
	datac => \inst4|ALT_INV_count\(0),
	datad => \inst4|ALT_INV_counter\(0),
	datae => \inst4|ALT_INV_counter\(2),
	dataf => \inst4|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \inst4|Mux20~22_combout\);

-- Location: LABCELL_X35_Y51_N54
\inst4|Mux20~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~24_combout\ = ( \inst4|counter\(1) & ( (\inst4|counter\(2) & ((!\inst4|count\(1)) # ((!\inst4|count\(2)) # (\inst4|count\(0))))) ) ) # ( !\inst4|counter\(1) & ( (\inst4|count\(1) & (\inst4|counter\(2) & (!\inst4|count\(2) $ 
-- (\inst4|count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000100000100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(1),
	datab => \inst4|ALT_INV_count\(2),
	datac => \inst4|ALT_INV_count\(0),
	datad => \inst4|ALT_INV_counter\(2),
	dataf => \inst4|ALT_INV_counter\(1),
	combout => \inst4|Mux20~24_combout\);

-- Location: LABCELL_X33_Y51_N9
\inst4|Mux20~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~23_combout\ = ( \inst4|Equal0~4_combout\ & ( !\inst4|Mux20~24_combout\ & ( (\inst4|Equal0~3_combout\ & (\inst4|Equal0~2_combout\ & (\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Equal0~3_combout\,
	datab => \inst4|ALT_INV_Equal0~2_combout\,
	datac => \inst4|ALT_INV_Equal0~0_combout\,
	datad => \inst4|ALT_INV_Equal0~1_combout\,
	datae => \inst4|ALT_INV_Equal0~4_combout\,
	dataf => \inst4|ALT_INV_Mux20~24_combout\,
	combout => \inst4|Mux20~23_combout\);

-- Location: MLABCELL_X34_Y51_N0
\inst4|Mux20~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~25_combout\ = ( !\inst4|counter[2]~DUPLICATE_q\ & ( (\inst4|Mux20~22_combout\ & (!\inst4|counter\(3) & ((!\inst4|counter[0]~DUPLICATE_q\ & ((\inst4|Equal0~8_combout\))) # (\inst4|counter[0]~DUPLICATE_q\ & (\inst4|Equal0~5_combout\))))) ) ) # 
-- ( \inst4|counter[2]~DUPLICATE_q\ & ( (\inst4|Mux20~22_combout\ & (!\inst4|counter\(3) & ((!\inst4|counter[0]~DUPLICATE_q\ & ((\inst4|Equal0~8_combout\))) # (\inst4|counter[0]~DUPLICATE_q\ & (\inst4|Mux20~23_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000000000000010000000001000101000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Mux20~22_combout\,
	datab => \inst4|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_Mux20~23_combout\,
	datad => \inst4|ALT_INV_counter\(3),
	datae => \inst4|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_Equal0~8_combout\,
	datag => \inst4|ALT_INV_Equal0~5_combout\,
	combout => \inst4|Mux20~25_combout\);

-- Location: LABCELL_X35_Y51_N6
\inst4|Mux20~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~16_combout\ = ( \inst4|counter\(1) & ( (!\inst4|counter\(3) & ((!\inst4|counter\(2) & (!\inst4|Mux15~0_combout\ & \inst4|counter\(0))) # (\inst4|counter\(2) & (\inst4|Mux15~0_combout\ & !\inst4|counter\(0))))) ) ) # ( !\inst4|counter\(1) & ( 
-- (!\inst4|counter\(2) & (!\inst4|counter\(3) & \inst4|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000010000100000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(2),
	datab => \inst4|ALT_INV_Mux15~0_combout\,
	datac => \inst4|ALT_INV_counter\(3),
	datad => \inst4|ALT_INV_counter\(0),
	dataf => \inst4|ALT_INV_counter\(1),
	combout => \inst4|Mux20~16_combout\);

-- Location: LABCELL_X33_Y51_N45
\inst4|Mux20~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~17_combout\ = (!\inst4|counter\(0) & (\inst4|counter[1]~DUPLICATE_q\ & !\inst4|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_counter\(0),
	datac => \inst4|ALT_INV_counter[1]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_counter\(3),
	combout => \inst4|Mux20~17_combout\);

-- Location: MLABCELL_X34_Y51_N54
\inst4|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~0_combout\ = ( \inst4|Equal0~5_combout\ & ( \inst4|Equal0~8_combout\ & ( (\inst4|count\(2) & (((\inst4|count\(0) & \inst4|Mux20~17_combout\)) # (\inst4|Mux20~16_combout\))) ) ) ) # ( !\inst4|Equal0~5_combout\ & ( \inst4|Equal0~8_combout\ & ( 
-- (\inst4|count\(2) & \inst4|Mux20~16_combout\) ) ) ) # ( \inst4|Equal0~5_combout\ & ( !\inst4|Equal0~8_combout\ & ( (\inst4|count\(2) & (\inst4|count\(0) & \inst4|Mux20~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000101000001010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_count\(2),
	datab => \inst4|ALT_INV_count\(0),
	datac => \inst4|ALT_INV_Mux20~16_combout\,
	datad => \inst4|ALT_INV_Mux20~17_combout\,
	datae => \inst4|ALT_INV_Equal0~5_combout\,
	dataf => \inst4|ALT_INV_Equal0~8_combout\,
	combout => \inst4|Mux20~0_combout\);

-- Location: MLABCELL_X34_Y51_N33
\inst4|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux20~4_combout\ = ( \inst4|Mux20~0_combout\ & ( !\inst4|Equal2~0_combout\ & ( \inst4|Mux20~3_combout\ ) ) ) # ( !\inst4|Mux20~0_combout\ & ( !\inst4|Equal2~0_combout\ & ( (\inst4|Mux20~3_combout\ & (((!\inst4|Mux20~1_combout\ & 
-- !\inst4|Mux20~2_combout\)) # (\inst4|Mux20~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Mux20~3_combout\,
	datab => \inst4|ALT_INV_Mux20~1_combout\,
	datac => \inst4|ALT_INV_Mux20~2_combout\,
	datad => \inst4|ALT_INV_Mux20~25_combout\,
	datae => \inst4|ALT_INV_Mux20~0_combout\,
	dataf => \inst4|ALT_INV_Equal2~0_combout\,
	combout => \inst4|Mux20~4_combout\);

-- Location: MLABCELL_X34_Y51_N6
\inst4|sda_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sda_out~0_combout\ = ( \inst4|Mux20~14_combout\ & ( \inst4|Mux20~4_combout\ & ( \inst4|sda_out~2_combout\ ) ) ) # ( !\inst4|Mux20~14_combout\ & ( \inst4|Mux20~4_combout\ & ( \inst4|sda_out~2_combout\ ) ) ) # ( \inst4|Mux20~14_combout\ & ( 
-- !\inst4|Mux20~4_combout\ & ( \inst4|sda_out~2_combout\ ) ) ) # ( !\inst4|Mux20~14_combout\ & ( !\inst4|Mux20~4_combout\ & ( ((\inst4|sda_out~1_combout\ & (!\inst4|Mux20~15_combout\ & !\inst4|Mux20~12_combout\))) # (\inst4|sda_out~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sda_out~1_combout\,
	datab => \inst4|ALT_INV_Mux20~15_combout\,
	datac => \inst4|ALT_INV_sda_out~2_combout\,
	datad => \inst4|ALT_INV_Mux20~12_combout\,
	datae => \inst4|ALT_INV_Mux20~14_combout\,
	dataf => \inst4|ALT_INV_Mux20~4_combout\,
	combout => \inst4|sda_out~0_combout\);

-- Location: FF_X34_Y51_N7
\inst4|sda_out~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|sda_out~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sda_out~DUPLICATE_q\);

-- Location: FF_X30_Y38_N25
\inst|clock_counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N0
\inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~89_sumout\ = SUM(( \inst|clock_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~90\ = CARRY(( \inst|clock_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(0),
	cin => GND,
	sumout => \inst|Add0~89_sumout\,
	cout => \inst|Add0~90\);

-- Location: FF_X30_Y39_N1
\inst|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(0));

-- Location: LABCELL_X30_Y39_N3
\inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~93_sumout\ = SUM(( \inst|clock_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~90\ ))
-- \inst|Add0~94\ = CARRY(( \inst|clock_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[1]~DUPLICATE_q\,
	cin => \inst|Add0~90\,
	sumout => \inst|Add0~93_sumout\,
	cout => \inst|Add0~94\);

-- Location: FF_X30_Y39_N5
\inst|clock_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N6
\inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~97_sumout\ = SUM(( \inst|clock_counter\(2) ) + ( GND ) + ( \inst|Add0~94\ ))
-- \inst|Add0~98\ = CARRY(( \inst|clock_counter\(2) ) + ( GND ) + ( \inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(2),
	cin => \inst|Add0~94\,
	sumout => \inst|Add0~97_sumout\,
	cout => \inst|Add0~98\);

-- Location: FF_X31_Y39_N23
\inst|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \inst|Add0~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(2));

-- Location: LABCELL_X30_Y39_N9
\inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~101_sumout\ = SUM(( \inst|clock_counter\(3) ) + ( GND ) + ( \inst|Add0~98\ ))
-- \inst|Add0~102\ = CARRY(( \inst|clock_counter\(3) ) + ( GND ) + ( \inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(3),
	cin => \inst|Add0~98\,
	sumout => \inst|Add0~101_sumout\,
	cout => \inst|Add0~102\);

-- Location: LABCELL_X31_Y39_N54
\inst|clock_counter[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clock_counter[3]~feeder_combout\ = ( \inst|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add0~101_sumout\,
	combout => \inst|clock_counter[3]~feeder_combout\);

-- Location: FF_X31_Y39_N56
\inst|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|clock_counter[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(3));

-- Location: LABCELL_X30_Y39_N12
\inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~105_sumout\ = SUM(( \inst|clock_counter\(4) ) + ( GND ) + ( \inst|Add0~102\ ))
-- \inst|Add0~106\ = CARRY(( \inst|clock_counter\(4) ) + ( GND ) + ( \inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(4),
	cin => \inst|Add0~102\,
	sumout => \inst|Add0~105_sumout\,
	cout => \inst|Add0~106\);

-- Location: FF_X30_Y39_N14
\inst|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(4));

-- Location: LABCELL_X30_Y39_N15
\inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~109_sumout\ = SUM(( \inst|clock_counter\(5) ) + ( GND ) + ( \inst|Add0~106\ ))
-- \inst|Add0~110\ = CARRY(( \inst|clock_counter\(5) ) + ( GND ) + ( \inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(5),
	cin => \inst|Add0~106\,
	sumout => \inst|Add0~109_sumout\,
	cout => \inst|Add0~110\);

-- Location: FF_X30_Y39_N16
\inst|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(5));

-- Location: LABCELL_X30_Y39_N18
\inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~113_sumout\ = SUM(( \inst|clock_counter\(6) ) + ( GND ) + ( \inst|Add0~110\ ))
-- \inst|Add0~114\ = CARRY(( \inst|clock_counter\(6) ) + ( GND ) + ( \inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(6),
	cin => \inst|Add0~110\,
	sumout => \inst|Add0~113_sumout\,
	cout => \inst|Add0~114\);

-- Location: FF_X30_Y39_N19
\inst|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(6));

-- Location: LABCELL_X30_Y39_N21
\inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~117_sumout\ = SUM(( \inst|clock_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~114\ ))
-- \inst|Add0~118\ = CARRY(( \inst|clock_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter[7]~DUPLICATE_q\,
	cin => \inst|Add0~114\,
	sumout => \inst|Add0~117_sumout\,
	cout => \inst|Add0~118\);

-- Location: FF_X30_Y39_N22
\inst|clock_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N24
\inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~73_sumout\ = SUM(( \inst|clock_counter\(8) ) + ( GND ) + ( \inst|Add0~118\ ))
-- \inst|Add0~74\ = CARRY(( \inst|clock_counter\(8) ) + ( GND ) + ( \inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(8),
	cin => \inst|Add0~118\,
	sumout => \inst|Add0~73_sumout\,
	cout => \inst|Add0~74\);

-- Location: FF_X30_Y39_N25
\inst|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(8));

-- Location: LABCELL_X30_Y39_N27
\inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~121_sumout\ = SUM(( \inst|clock_counter\(9) ) + ( GND ) + ( \inst|Add0~74\ ))
-- \inst|Add0~122\ = CARRY(( \inst|clock_counter\(9) ) + ( GND ) + ( \inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(9),
	cin => \inst|Add0~74\,
	sumout => \inst|Add0~121_sumout\,
	cout => \inst|Add0~122\);

-- Location: FF_X30_Y39_N29
\inst|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(9));

-- Location: LABCELL_X30_Y39_N30
\inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~125_sumout\ = SUM(( \inst|clock_counter\(10) ) + ( GND ) + ( \inst|Add0~122\ ))
-- \inst|Add0~126\ = CARRY(( \inst|clock_counter\(10) ) + ( GND ) + ( \inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(10),
	cin => \inst|Add0~122\,
	sumout => \inst|Add0~125_sumout\,
	cout => \inst|Add0~126\);

-- Location: FF_X30_Y39_N31
\inst|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(10));

-- Location: LABCELL_X30_Y39_N33
\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( \inst|clock_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~126\ ))
-- \inst|Add0~58\ = CARRY(( \inst|clock_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[11]~DUPLICATE_q\,
	cin => \inst|Add0~126\,
	sumout => \inst|Add0~57_sumout\,
	cout => \inst|Add0~58\);

-- Location: FF_X30_Y39_N35
\inst|clock_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N36
\inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~61_sumout\ = SUM(( \inst|clock_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~58\ ))
-- \inst|Add0~62\ = CARRY(( \inst|clock_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[12]~DUPLICATE_q\,
	cin => \inst|Add0~58\,
	sumout => \inst|Add0~61_sumout\,
	cout => \inst|Add0~62\);

-- Location: FF_X30_Y39_N38
\inst|clock_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N39
\inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~65_sumout\ = SUM(( \inst|clock_counter\(13) ) + ( GND ) + ( \inst|Add0~62\ ))
-- \inst|Add0~66\ = CARRY(( \inst|clock_counter\(13) ) + ( GND ) + ( \inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(13),
	cin => \inst|Add0~62\,
	sumout => \inst|Add0~65_sumout\,
	cout => \inst|Add0~66\);

-- Location: FF_X30_Y39_N40
\inst|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(13));

-- Location: LABCELL_X30_Y39_N42
\inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~77_sumout\ = SUM(( \inst|clock_counter\(14) ) + ( GND ) + ( \inst|Add0~66\ ))
-- \inst|Add0~78\ = CARRY(( \inst|clock_counter\(14) ) + ( GND ) + ( \inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(14),
	cin => \inst|Add0~66\,
	sumout => \inst|Add0~77_sumout\,
	cout => \inst|Add0~78\);

-- Location: FF_X30_Y39_N43
\inst|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(14));

-- Location: LABCELL_X30_Y39_N45
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|clock_counter\(15) ) + ( GND ) + ( \inst|Add0~78\ ))
-- \inst|Add0~34\ = CARRY(( \inst|clock_counter\(15) ) + ( GND ) + ( \inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(15),
	cin => \inst|Add0~78\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: FF_X30_Y39_N47
\inst|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(15));

-- Location: LABCELL_X30_Y39_N48
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst|clock_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~38\ = CARRY(( \inst|clock_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter[16]~DUPLICATE_q\,
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

-- Location: FF_X30_Y39_N49
\inst|clock_counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N51
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst|clock_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~38\ ))
-- \inst|Add0~42\ = CARRY(( \inst|clock_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[17]~DUPLICATE_q\,
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: FF_X30_Y39_N53
\inst|clock_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N54
\inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~85_sumout\ = SUM(( \inst|clock_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~86\ = CARRY(( \inst|clock_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[18]~DUPLICATE_q\,
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~85_sumout\,
	cout => \inst|Add0~86\);

-- Location: FF_X30_Y39_N56
\inst|clock_counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y39_N57
\inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~81_sumout\ = SUM(( \inst|clock_counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~86\ ))
-- \inst|Add0~82\ = CARRY(( \inst|clock_counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter[19]~DUPLICATE_q\,
	cin => \inst|Add0~86\,
	sumout => \inst|Add0~81_sumout\,
	cout => \inst|Add0~82\);

-- Location: FF_X30_Y39_N59
\inst|clock_counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y38_N0
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|clock_counter\(20) ) + ( GND ) + ( \inst|Add0~82\ ))
-- \inst|Add0~6\ = CARRY(( \inst|clock_counter\(20) ) + ( GND ) + ( \inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(20),
	cin => \inst|Add0~82\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: FF_X30_Y38_N1
\inst|clock_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(20));

-- Location: LABCELL_X30_Y38_N3
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|clock_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~2\ = CARRY(( \inst|clock_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[21]~DUPLICATE_q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: FF_X30_Y38_N5
\inst|clock_counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y38_N6
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|clock_counter\(22) ) + ( GND ) + ( \inst|Add0~2\ ))
-- \inst|Add0~30\ = CARRY(( \inst|clock_counter\(22) ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(22),
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: FF_X30_Y38_N8
\inst|clock_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(22));

-- Location: LABCELL_X30_Y38_N9
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|clock_counter\(23) ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst|clock_counter\(23) ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(23),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: FF_X30_Y38_N10
\inst|clock_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(23));

-- Location: LABCELL_X30_Y38_N12
\inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~69_sumout\ = SUM(( \inst|clock_counter\(24) ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~70\ = CARRY(( \inst|clock_counter\(24) ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(24),
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~69_sumout\,
	cout => \inst|Add0~70\);

-- Location: FF_X30_Y38_N14
\inst|clock_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(24));

-- Location: LABCELL_X30_Y38_N15
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|clock_counter\(25) ) + ( GND ) + ( \inst|Add0~70\ ))
-- \inst|Add0~22\ = CARRY(( \inst|clock_counter\(25) ) + ( GND ) + ( \inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(25),
	cin => \inst|Add0~70\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: FF_X30_Y38_N16
\inst|clock_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(25));

-- Location: LABCELL_X30_Y38_N18
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|clock_counter\(26) ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|clock_counter\(26) ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter\(26),
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: FF_X30_Y38_N20
\inst|clock_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(26));

-- Location: LABCELL_X30_Y38_N21
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|clock_counter\(27) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|clock_counter\(27) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(27),
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: FF_X30_Y38_N23
\inst|clock_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(27));

-- Location: LABCELL_X30_Y38_N24
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|clock_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|clock_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter[28]~DUPLICATE_q\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: FF_X30_Y38_N26
\inst|clock_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(28));

-- Location: LABCELL_X30_Y38_N48
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\inst|clock_counter\(23) & ( !\inst|clock_counter\(26) & ( (!\inst|clock_counter\(28) & (!\inst|clock_counter\(22) & (!\inst|clock_counter\(27) & !\inst|clock_counter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(28),
	datab => \inst|ALT_INV_clock_counter\(22),
	datac => \inst|ALT_INV_clock_counter\(27),
	datad => \inst|ALT_INV_clock_counter\(25),
	datae => \inst|ALT_INV_clock_counter\(23),
	dataf => \inst|ALT_INV_clock_counter\(26),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X30_Y38_N4
\inst|clock_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(21));

-- Location: LABCELL_X31_Y38_N48
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\inst|clock_counter\(20) & ( !\inst|clock_counter\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter\(21),
	dataf => \inst|ALT_INV_clock_counter\(20),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X30_Y39_N4
\inst|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(1));

-- Location: FF_X30_Y39_N58
\inst|clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(19));

-- Location: FF_X30_Y39_N55
\inst|clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(18));

-- Location: LABCELL_X31_Y39_N3
\inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = ( !\inst|clock_counter\(19) & ( !\inst|clock_counter\(18) & ( (\inst|clock_counter\(2) & (\inst|clock_counter\(0) & (\inst|clock_counter\(1) & \inst|clock_counter\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(2),
	datab => \inst|ALT_INV_clock_counter\(0),
	datac => \inst|ALT_INV_clock_counter\(1),
	datad => \inst|ALT_INV_clock_counter\(3),
	datae => \inst|ALT_INV_clock_counter\(19),
	dataf => \inst|ALT_INV_clock_counter\(18),
	combout => \inst|Equal0~4_combout\);

-- Location: LABCELL_X30_Y38_N27
\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( \inst|clock_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~54\ = CARRY(( \inst|clock_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter[29]~DUPLICATE_q\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

-- Location: FF_X30_Y38_N29
\inst|clock_counter[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[29]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y38_N30
\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \inst|clock_counter\(30) ) + ( GND ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( \inst|clock_counter\(30) ) + ( GND ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter\(30),
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

-- Location: FF_X30_Y38_N32
\inst|clock_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(30));

-- Location: LABCELL_X30_Y38_N33
\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \inst|clock_counter\(31) ) + ( GND ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(31),
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\);

-- Location: FF_X30_Y38_N35
\inst|clock_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(31));

-- Location: FF_X30_Y39_N50
\inst|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(16));

-- Location: FF_X30_Y38_N28
\inst|clock_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(29));

-- Location: FF_X30_Y39_N46
\inst|clock_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[15]~DUPLICATE_q\);

-- Location: FF_X30_Y39_N52
\inst|clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(17));

-- Location: LABCELL_X30_Y38_N42
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( !\inst|clock_counter[15]~DUPLICATE_q\ & ( !\inst|clock_counter\(17) & ( (!\inst|clock_counter\(31) & (!\inst|clock_counter\(30) & (!\inst|clock_counter\(16) & !\inst|clock_counter\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(31),
	datab => \inst|ALT_INV_clock_counter\(30),
	datac => \inst|ALT_INV_clock_counter\(16),
	datad => \inst|ALT_INV_clock_counter\(29),
	datae => \inst|ALT_INV_clock_counter[15]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_clock_counter\(17),
	combout => \inst|Equal0~2_combout\);

-- Location: FF_X30_Y39_N23
\inst|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(7));

-- Location: LABCELL_X30_Y38_N36
\inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = ( !\inst|clock_counter\(6) & ( !\inst|clock_counter\(9) & ( (!\inst|clock_counter\(7) & (!\inst|clock_counter\(4) & (!\inst|clock_counter\(10) & !\inst|clock_counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(7),
	datab => \inst|ALT_INV_clock_counter\(4),
	datac => \inst|ALT_INV_clock_counter\(10),
	datad => \inst|ALT_INV_clock_counter\(5),
	datae => \inst|ALT_INV_clock_counter\(6),
	dataf => \inst|ALT_INV_clock_counter\(9),
	combout => \inst|Equal0~5_combout\);

-- Location: FF_X30_Y39_N34
\inst|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(11));

-- Location: FF_X30_Y39_N37
\inst|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(12));

-- Location: FF_X30_Y38_N13
\inst|clock_counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y39_N6
\inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = ( !\inst|clock_counter\(14) & ( !\inst|clock_counter[24]~DUPLICATE_q\ & ( (!\inst|clock_counter\(13) & (!\inst|clock_counter\(11) & (!\inst|clock_counter\(12) & !\inst|clock_counter\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter\(13),
	datab => \inst|ALT_INV_clock_counter\(11),
	datac => \inst|ALT_INV_clock_counter\(12),
	datad => \inst|ALT_INV_clock_counter\(8),
	datae => \inst|ALT_INV_clock_counter\(14),
	dataf => \inst|ALT_INV_clock_counter[24]~DUPLICATE_q\,
	combout => \inst|Equal0~3_combout\);

-- Location: LABCELL_X30_Y38_N54
\inst|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = ( \inst|Equal0~5_combout\ & ( \inst|Equal0~3_combout\ & ( (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal0~4_combout\ & \inst|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal0~1_combout\,
	datab => \inst|ALT_INV_Equal0~0_combout\,
	datac => \inst|ALT_INV_Equal0~4_combout\,
	datad => \inst|ALT_INV_Equal0~2_combout\,
	datae => \inst|ALT_INV_Equal0~5_combout\,
	dataf => \inst|ALT_INV_Equal0~3_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: MLABCELL_X34_Y49_N6
\inst|clk_i2c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_i2c~0_combout\ = ( !\inst|Equal0~6_combout\ & ( \inst|clk_i2c~q\ ) ) # ( \inst|Equal0~6_combout\ & ( !\inst|clk_i2c~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_Equal0~6_combout\,
	dataf => \inst|ALT_INV_clk_i2c~q\,
	combout => \inst|clk_i2c~0_combout\);

-- Location: FF_X34_Y49_N29
\inst|clk_i2c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	asdata => \inst|clk_i2c~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_i2c~q\);

-- Location: LABCELL_X35_Y49_N30
\inst1|daclrc~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|daclrc~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst1|daclrc~feeder_combout\);

-- Location: LABCELL_X35_Y49_N3
\inst1|count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|count[0]~2_combout\ = ( !\inst1|count[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \inst1|count[0]~2_combout\);

-- Location: FF_X35_Y49_N41
\inst1|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	asdata => \inst1|count[0]~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y49_N12
\inst1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = ( \inst1|count[0]~DUPLICATE_q\ & ( !\inst1|count\(1) ) ) # ( !\inst1|count[0]~DUPLICATE_q\ & ( \inst1|count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_count\(1),
	dataf => \inst1|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LABCELL_X35_Y49_N18
\inst1|count[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|count[1]~feeder_combout\ = \inst1|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_Mux5~0_combout\,
	combout => \inst1|count[1]~feeder_combout\);

-- Location: FF_X35_Y49_N20
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|count[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: FF_X35_Y49_N49
\inst1|count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|count[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y49_N0
\inst1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = ( \inst1|count[0]~DUPLICATE_q\ & ( !\inst1|count\(1) $ (!\inst1|count[2]~DUPLICATE_q\) ) ) # ( !\inst1|count[0]~DUPLICATE_q\ & ( \inst1|count[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_count\(1),
	datad => \inst1|ALT_INV_count[2]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_count[0]~DUPLICATE_q\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LABCELL_X35_Y49_N48
\inst1|count[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|count[2]~feeder_combout\ = \inst1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Mux4~0_combout\,
	combout => \inst1|count[2]~feeder_combout\);

-- Location: FF_X35_Y49_N50
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|count[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: FF_X35_Y49_N40
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	asdata => \inst1|count[0]~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: FF_X35_Y49_N19
\inst1|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|count[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y49_N42
\inst1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = ( \inst1|count\(0) & ( \inst1|count[1]~DUPLICATE_q\ & ( !\inst1|count\(2) $ (!\inst1|count\(3)) ) ) ) # ( !\inst1|count\(0) & ( \inst1|count[1]~DUPLICATE_q\ & ( \inst1|count\(3) ) ) ) # ( \inst1|count\(0) & ( 
-- !\inst1|count[1]~DUPLICATE_q\ & ( \inst1|count\(3) ) ) ) # ( !\inst1|count\(0) & ( !\inst1|count[1]~DUPLICATE_q\ & ( \inst1|count\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_count\(2),
	datad => \inst1|ALT_INV_count\(3),
	datae => \inst1|ALT_INV_count\(0),
	dataf => \inst1|ALT_INV_count[1]~DUPLICATE_q\,
	combout => \inst1|Mux3~0_combout\);

-- Location: FF_X35_Y49_N17
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	asdata => \inst1|Mux3~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: FF_X35_Y49_N16
\inst1|count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	asdata => \inst1|Mux3~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \inst1|daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count[3]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y49_N27
\inst1|statemachine~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|statemachine~0_combout\ = ( \inst1|count[3]~DUPLICATE_q\ & ( (\inst1|statemachine\(0) & (\inst1|count[1]~DUPLICATE_q\ & (\inst1|count\(0) & \inst1|count[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_statemachine\(0),
	datab => \inst1|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_count\(0),
	datad => \inst1|ALT_INV_count[2]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_count[3]~DUPLICATE_q\,
	combout => \inst1|statemachine~0_combout\);

-- Location: FF_X35_Y49_N28
\inst1|statemachine[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|statemachine~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|statemachine\(1));

-- Location: LABCELL_X35_Y49_N54
\inst1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = ( \inst1|count[2]~DUPLICATE_q\ & ( \inst1|statemachine\(1) & ( (!\inst1|count\(1)) # ((!\inst1|count\(3)) # (!\inst1|count\(0))) ) ) ) # ( !\inst1|count[2]~DUPLICATE_q\ & ( \inst1|statemachine\(1) ) ) # ( 
-- \inst1|count[2]~DUPLICATE_q\ & ( !\inst1|statemachine\(1) & ( (!\inst1|count\(1)) # ((!\inst1|count\(3)) # ((!\inst1|statemachine\(0)) # (!\inst1|count\(0)))) ) ) ) # ( !\inst1|count[2]~DUPLICATE_q\ & ( !\inst1|statemachine\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111011111111111111111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_count\(1),
	datab => \inst1|ALT_INV_count\(3),
	datac => \inst1|ALT_INV_statemachine\(0),
	datad => \inst1|ALT_INV_count\(0),
	datae => \inst1|ALT_INV_count[2]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_statemachine\(1),
	combout => \inst1|Mux2~0_combout\);

-- Location: FF_X35_Y49_N7
\inst1|statemachine[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	asdata => \inst1|Mux2~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|statemachine\(0));

-- Location: LABCELL_X35_Y49_N24
\inst1|daclrc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|daclrc~0_combout\ = ( \inst1|statemachine\(1) ) # ( !\inst1|statemachine\(1) & ( \inst1|statemachine\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_statemachine\(0),
	dataf => \inst1|ALT_INV_statemachine\(1),
	combout => \inst1|daclrc~0_combout\);

-- Location: FF_X35_Y49_N31
\inst1|daclrc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|daclrc~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|ALT_INV_daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|daclrc~q\);

-- Location: LABCELL_X35_Y49_N33
\inst1|adclrc~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|adclrc~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst1|adclrc~feeder_combout\);

-- Location: FF_X35_Y49_N34
\inst1|adclrc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_i2c~q\,
	d => \inst1|adclrc~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \inst1|ALT_INV_daclrc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|adclrc~q\);

-- Location: IOIBUF_X8_Y81_N1
\adcdat~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adcdat,
	o => \adcdat~input_o\);

-- Location: FF_X34_Y49_N10
\inst1|dacdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c~q\,
	asdata => \adcdat~input_o\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dacdat~q\);

-- Location: LABCELL_X33_Y51_N51
\inst4|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Mux19~0_combout\ = ( !\inst4|statemachine\(0) & ( (!\inst4|statemachine\(1) & ((\inst4|statemachine[3]~DUPLICATE_q\) # (\inst4|statemachine[2]~DUPLICATE_q\))) # (\inst4|statemachine\(1) & ((!\inst4|statemachine[2]~DUPLICATE_q\) # 
-- (!\inst4|statemachine[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010010111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_statemachine\(1),
	datac => \inst4|ALT_INV_statemachine[2]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_statemachine[3]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_statemachine\(0),
	combout => \inst4|Mux19~0_combout\);

-- Location: FF_X33_Y51_N52
\inst4|scl_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_i2c2~q\,
	d => \inst4|Mux19~0_combout\,
	clrn => \inst4|ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|scl_out~q\);

-- Location: MLABCELL_X34_Y47_N0
\inst|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~89_sumout\ = SUM(( \inst|clock_counter1\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add1~90\ = CARRY(( \inst|clock_counter1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter1\(0),
	cin => GND,
	sumout => \inst|Add1~89_sumout\,
	cout => \inst|Add1~90\);

-- Location: FF_X34_Y47_N1
\inst|clock_counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(0));

-- Location: MLABCELL_X34_Y47_N3
\inst|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~93_sumout\ = SUM(( \inst|clock_counter1\(1) ) + ( GND ) + ( \inst|Add1~90\ ))
-- \inst|Add1~94\ = CARRY(( \inst|clock_counter1\(1) ) + ( GND ) + ( \inst|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(1),
	cin => \inst|Add1~90\,
	sumout => \inst|Add1~93_sumout\,
	cout => \inst|Add1~94\);

-- Location: FF_X34_Y47_N5
\inst|clock_counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(1));

-- Location: MLABCELL_X34_Y47_N6
\inst|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~97_sumout\ = SUM(( \inst|clock_counter1\(2) ) + ( GND ) + ( \inst|Add1~94\ ))
-- \inst|Add1~98\ = CARRY(( \inst|clock_counter1\(2) ) + ( GND ) + ( \inst|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(2),
	cin => \inst|Add1~94\,
	sumout => \inst|Add1~97_sumout\,
	cout => \inst|Add1~98\);

-- Location: FF_X34_Y47_N8
\inst|clock_counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(2));

-- Location: MLABCELL_X34_Y47_N9
\inst|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~101_sumout\ = SUM(( \inst|clock_counter1\(3) ) + ( GND ) + ( \inst|Add1~98\ ))
-- \inst|Add1~102\ = CARRY(( \inst|clock_counter1\(3) ) + ( GND ) + ( \inst|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter1\(3),
	cin => \inst|Add1~98\,
	sumout => \inst|Add1~101_sumout\,
	cout => \inst|Add1~102\);

-- Location: FF_X34_Y47_N10
\inst|clock_counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(3));

-- Location: MLABCELL_X34_Y47_N12
\inst|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~105_sumout\ = SUM(( \inst|clock_counter1\(4) ) + ( GND ) + ( \inst|Add1~102\ ))
-- \inst|Add1~106\ = CARRY(( \inst|clock_counter1\(4) ) + ( GND ) + ( \inst|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(4),
	cin => \inst|Add1~102\,
	sumout => \inst|Add1~105_sumout\,
	cout => \inst|Add1~106\);

-- Location: FF_X34_Y47_N14
\inst|clock_counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(4));

-- Location: MLABCELL_X34_Y47_N15
\inst|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~109_sumout\ = SUM(( \inst|clock_counter1\(5) ) + ( GND ) + ( \inst|Add1~106\ ))
-- \inst|Add1~110\ = CARRY(( \inst|clock_counter1\(5) ) + ( GND ) + ( \inst|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1\(5),
	cin => \inst|Add1~106\,
	sumout => \inst|Add1~109_sumout\,
	cout => \inst|Add1~110\);

-- Location: FF_X34_Y47_N16
\inst|clock_counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(5));

-- Location: MLABCELL_X34_Y47_N18
\inst|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~113_sumout\ = SUM(( \inst|clock_counter1\(6) ) + ( GND ) + ( \inst|Add1~110\ ))
-- \inst|Add1~114\ = CARRY(( \inst|clock_counter1\(6) ) + ( GND ) + ( \inst|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(6),
	cin => \inst|Add1~110\,
	sumout => \inst|Add1~113_sumout\,
	cout => \inst|Add1~114\);

-- Location: FF_X34_Y47_N19
\inst|clock_counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(6));

-- Location: MLABCELL_X34_Y47_N21
\inst|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~117_sumout\ = SUM(( \inst|clock_counter1[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~114\ ))
-- \inst|Add1~118\ = CARRY(( \inst|clock_counter1[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1[7]~DUPLICATE_q\,
	cin => \inst|Add1~114\,
	sumout => \inst|Add1~117_sumout\,
	cout => \inst|Add1~118\);

-- Location: FF_X34_Y47_N23
\inst|clock_counter1[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[7]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N24
\inst|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~121_sumout\ = SUM(( \inst|clock_counter1\(8) ) + ( GND ) + ( \inst|Add1~118\ ))
-- \inst|Add1~122\ = CARRY(( \inst|clock_counter1\(8) ) + ( GND ) + ( \inst|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(8),
	cin => \inst|Add1~118\,
	sumout => \inst|Add1~121_sumout\,
	cout => \inst|Add1~122\);

-- Location: FF_X34_Y47_N25
\inst|clock_counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(8));

-- Location: MLABCELL_X34_Y47_N27
\inst|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~57_sumout\ = SUM(( \inst|clock_counter1\(9) ) + ( GND ) + ( \inst|Add1~122\ ))
-- \inst|Add1~58\ = CARRY(( \inst|clock_counter1\(9) ) + ( GND ) + ( \inst|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(9),
	cin => \inst|Add1~122\,
	sumout => \inst|Add1~57_sumout\,
	cout => \inst|Add1~58\);

-- Location: FF_X34_Y47_N29
\inst|clock_counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(9));

-- Location: MLABCELL_X34_Y47_N30
\inst|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~61_sumout\ = SUM(( \inst|clock_counter1[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~58\ ))
-- \inst|Add1~62\ = CARRY(( \inst|clock_counter1[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1[10]~DUPLICATE_q\,
	cin => \inst|Add1~58\,
	sumout => \inst|Add1~61_sumout\,
	cout => \inst|Add1~62\);

-- Location: FF_X34_Y47_N31
\inst|clock_counter1[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[10]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N33
\inst|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~65_sumout\ = SUM(( \inst|clock_counter1[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~62\ ))
-- \inst|Add1~66\ = CARRY(( \inst|clock_counter1[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1[11]~DUPLICATE_q\,
	cin => \inst|Add1~62\,
	sumout => \inst|Add1~65_sumout\,
	cout => \inst|Add1~66\);

-- Location: FF_X34_Y47_N35
\inst|clock_counter1[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[11]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N36
\inst|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~125_sumout\ = SUM(( \inst|clock_counter1[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~66\ ))
-- \inst|Add1~126\ = CARRY(( \inst|clock_counter1[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1[12]~DUPLICATE_q\,
	cin => \inst|Add1~66\,
	sumout => \inst|Add1~125_sumout\,
	cout => \inst|Add1~126\);

-- Location: FF_X34_Y47_N38
\inst|clock_counter1[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[12]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N39
\inst|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~69_sumout\ = SUM(( \inst|clock_counter1\(13) ) + ( GND ) + ( \inst|Add1~126\ ))
-- \inst|Add1~70\ = CARRY(( \inst|clock_counter1\(13) ) + ( GND ) + ( \inst|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1\(13),
	cin => \inst|Add1~126\,
	sumout => \inst|Add1~69_sumout\,
	cout => \inst|Add1~70\);

-- Location: FF_X34_Y47_N40
\inst|clock_counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(13));

-- Location: MLABCELL_X34_Y47_N42
\inst|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~73_sumout\ = SUM(( \inst|clock_counter1\(14) ) + ( GND ) + ( \inst|Add1~70\ ))
-- \inst|Add1~74\ = CARRY(( \inst|clock_counter1\(14) ) + ( GND ) + ( \inst|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter1\(14),
	cin => \inst|Add1~70\,
	sumout => \inst|Add1~73_sumout\,
	cout => \inst|Add1~74\);

-- Location: FF_X34_Y47_N43
\inst|clock_counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(14));

-- Location: MLABCELL_X34_Y47_N45
\inst|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~77_sumout\ = SUM(( \inst|clock_counter1\(15) ) + ( GND ) + ( \inst|Add1~74\ ))
-- \inst|Add1~78\ = CARRY(( \inst|clock_counter1\(15) ) + ( GND ) + ( \inst|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(15),
	cin => \inst|Add1~74\,
	sumout => \inst|Add1~77_sumout\,
	cout => \inst|Add1~78\);

-- Location: FF_X34_Y47_N47
\inst|clock_counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(15));

-- Location: MLABCELL_X34_Y47_N48
\inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~33_sumout\ = SUM(( \inst|clock_counter1[16]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~78\ ))
-- \inst|Add1~34\ = CARRY(( \inst|clock_counter1[16]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter1[16]~DUPLICATE_q\,
	cin => \inst|Add1~78\,
	sumout => \inst|Add1~33_sumout\,
	cout => \inst|Add1~34\);

-- Location: FF_X34_Y46_N40
\inst|clock_counter1[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[16]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N51
\inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~37_sumout\ = SUM(( \inst|clock_counter1\(17) ) + ( GND ) + ( \inst|Add1~34\ ))
-- \inst|Add1~38\ = CARRY(( \inst|clock_counter1\(17) ) + ( GND ) + ( \inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1\(17),
	cin => \inst|Add1~34\,
	sumout => \inst|Add1~37_sumout\,
	cout => \inst|Add1~38\);

-- Location: FF_X34_Y47_N52
\inst|clock_counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(17));

-- Location: MLABCELL_X34_Y47_N54
\inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~41_sumout\ = SUM(( \inst|clock_counter1[18]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~38\ ))
-- \inst|Add1~42\ = CARRY(( \inst|clock_counter1[18]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_clock_counter1[18]~DUPLICATE_q\,
	cin => \inst|Add1~38\,
	sumout => \inst|Add1~41_sumout\,
	cout => \inst|Add1~42\);

-- Location: FF_X34_Y46_N55
\inst|clock_counter1[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[18]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y47_N57
\inst|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~49_sumout\ = SUM(( \inst|clock_counter1[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~42\ ))
-- \inst|Add1~50\ = CARRY(( \inst|clock_counter1[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1[19]~DUPLICATE_q\,
	cin => \inst|Add1~42\,
	sumout => \inst|Add1~49_sumout\,
	cout => \inst|Add1~50\);

-- Location: FF_X34_Y47_N58
\inst|clock_counter1[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[19]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y46_N0
\inst|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~53_sumout\ = SUM(( \inst|clock_counter1\(20) ) + ( GND ) + ( \inst|Add1~50\ ))
-- \inst|Add1~54\ = CARRY(( \inst|clock_counter1\(20) ) + ( GND ) + ( \inst|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1\(20),
	cin => \inst|Add1~50\,
	sumout => \inst|Add1~53_sumout\,
	cout => \inst|Add1~54\);

-- Location: FF_X34_Y46_N1
\inst|clock_counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(20));

-- Location: MLABCELL_X34_Y46_N3
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst|clock_counter1\(21) ) + ( GND ) + ( \inst|Add1~54\ ))
-- \inst|Add1~10\ = CARRY(( \inst|clock_counter1\(21) ) + ( GND ) + ( \inst|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(21),
	cin => \inst|Add1~54\,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: FF_X34_Y46_N5
\inst|clock_counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(21));

-- Location: MLABCELL_X34_Y46_N6
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst|clock_counter1\(22) ) + ( GND ) + ( \inst|Add1~10\ ))
-- \inst|Add1~14\ = CARRY(( \inst|clock_counter1\(22) ) + ( GND ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(22),
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: FF_X34_Y46_N8
\inst|clock_counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(22));

-- Location: MLABCELL_X34_Y46_N9
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst|clock_counter1\(23) ) + ( GND ) + ( \inst|Add1~14\ ))
-- \inst|Add1~18\ = CARRY(( \inst|clock_counter1\(23) ) + ( GND ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(23),
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: FF_X34_Y46_N10
\inst|clock_counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(23));

-- Location: MLABCELL_X34_Y46_N12
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( \inst|clock_counter1\(24) ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~26\ = CARRY(( \inst|clock_counter1\(24) ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(24),
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: FF_X34_Y46_N14
\inst|clock_counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(24));

-- Location: MLABCELL_X34_Y46_N15
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \inst|clock_counter1\(25) ) + ( GND ) + ( \inst|Add1~26\ ))
-- \inst|Add1~2\ = CARRY(( \inst|clock_counter1\(25) ) + ( GND ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_clock_counter1\(25),
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: FF_X34_Y46_N16
\inst|clock_counter1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(25));

-- Location: MLABCELL_X34_Y46_N18
\inst|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~85_sumout\ = SUM(( \inst|clock_counter1\(26) ) + ( GND ) + ( \inst|Add1~2\ ))
-- \inst|Add1~86\ = CARRY(( \inst|clock_counter1\(26) ) + ( GND ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(26),
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~85_sumout\,
	cout => \inst|Add1~86\);

-- Location: FF_X34_Y46_N19
\inst|clock_counter1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(26));

-- Location: MLABCELL_X34_Y46_N21
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst|clock_counter1\(27) ) + ( GND ) + ( \inst|Add1~86\ ))
-- \inst|Add1~6\ = CARRY(( \inst|clock_counter1\(27) ) + ( GND ) + ( \inst|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(27),
	cin => \inst|Add1~86\,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: FF_X34_Y46_N23
\inst|clock_counter1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(27));

-- Location: MLABCELL_X34_Y46_N24
\inst|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~81_sumout\ = SUM(( \inst|clock_counter1\(28) ) + ( GND ) + ( \inst|Add1~6\ ))
-- \inst|Add1~82\ = CARRY(( \inst|clock_counter1\(28) ) + ( GND ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(28),
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~81_sumout\,
	cout => \inst|Add1~82\);

-- Location: FF_X34_Y46_N25
\inst|clock_counter1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(28));

-- Location: MLABCELL_X34_Y46_N27
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( \inst|clock_counter1\(29) ) + ( GND ) + ( \inst|Add1~82\ ))
-- \inst|Add1~30\ = CARRY(( \inst|clock_counter1\(29) ) + ( GND ) + ( \inst|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(29),
	cin => \inst|Add1~82\,
	sumout => \inst|Add1~29_sumout\,
	cout => \inst|Add1~30\);

-- Location: FF_X34_Y46_N29
\inst|clock_counter1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(29));

-- Location: MLABCELL_X34_Y46_N30
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \inst|clock_counter1\(30) ) + ( GND ) + ( \inst|Add1~30\ ))
-- \inst|Add1~22\ = CARRY(( \inst|clock_counter1\(30) ) + ( GND ) + ( \inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_clock_counter1\(30),
	cin => \inst|Add1~30\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: FF_X34_Y46_N32
\inst|clock_counter1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(30));

-- Location: MLABCELL_X34_Y46_N48
\inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = ( !\inst|clock_counter1\(21) & ( !\inst|clock_counter1\(22) & ( (!\inst|clock_counter1\(23) & (!\inst|clock_counter1\(30) & (!\inst|clock_counter1\(29) & !\inst|clock_counter1\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(23),
	datab => \inst|ALT_INV_clock_counter1\(30),
	datac => \inst|ALT_INV_clock_counter1\(29),
	datad => \inst|ALT_INV_clock_counter1\(24),
	datae => \inst|ALT_INV_clock_counter1\(21),
	dataf => \inst|ALT_INV_clock_counter1\(22),
	combout => \inst|Equal1~1_combout\);

-- Location: FF_X34_Y47_N4
\inst|clock_counter1[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[1]~DUPLICATE_q\);

-- Location: FF_X34_Y47_N7
\inst|clock_counter1[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[2]~DUPLICATE_q\);

-- Location: FF_X34_Y47_N2
\inst|clock_counter1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[0]~DUPLICATE_q\);

-- Location: FF_X34_Y47_N11
\inst|clock_counter1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[3]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y46_N45
\inst|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = ( \inst|clock_counter1[0]~DUPLICATE_q\ & ( !\inst|clock_counter1[3]~DUPLICATE_q\ & ( (!\inst|clock_counter1[1]~DUPLICATE_q\ & (!\inst|clock_counter1\(28) & (!\inst|clock_counter1\(26) & !\inst|clock_counter1[2]~DUPLICATE_q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1[1]~DUPLICATE_q\,
	datab => \inst|ALT_INV_clock_counter1\(28),
	datac => \inst|ALT_INV_clock_counter1\(26),
	datad => \inst|ALT_INV_clock_counter1[2]~DUPLICATE_q\,
	datae => \inst|ALT_INV_clock_counter1[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_clock_counter1[3]~DUPLICATE_q\,
	combout => \inst|Equal1~4_combout\);

-- Location: LABCELL_X33_Y46_N51
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( !\inst|clock_counter1\(27) & ( !\inst|clock_counter1\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_clock_counter1\(27),
	dataf => \inst|ALT_INV_clock_counter1\(25),
	combout => \inst|Equal1~0_combout\);

-- Location: FF_X34_Y46_N56
\inst|clock_counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(18));

-- Location: FF_X34_Y47_N59
\inst|clock_counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(19));

-- Location: FF_X34_Y46_N41
\inst|clock_counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(16));

-- Location: MLABCELL_X34_Y46_N33
\inst|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~45_sumout\ = SUM(( \inst|clock_counter1\(31) ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(31),
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~45_sumout\);

-- Location: FF_X34_Y46_N35
\inst|clock_counter1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(31));

-- Location: MLABCELL_X34_Y46_N57
\inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = ( !\inst|clock_counter1\(17) & ( !\inst|clock_counter1\(31) & ( (!\inst|clock_counter1\(18) & (!\inst|clock_counter1\(19) & (!\inst|clock_counter1\(16) & !\inst|clock_counter1\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(18),
	datab => \inst|ALT_INV_clock_counter1\(19),
	datac => \inst|ALT_INV_clock_counter1\(16),
	datad => \inst|ALT_INV_clock_counter1\(20),
	datae => \inst|ALT_INV_clock_counter1\(17),
	dataf => \inst|ALT_INV_clock_counter1\(31),
	combout => \inst|Equal1~2_combout\);

-- Location: FF_X34_Y47_N37
\inst|clock_counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(12));

-- Location: FF_X34_Y47_N13
\inst|clock_counter1[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[4]~DUPLICATE_q\);

-- Location: FF_X34_Y47_N22
\inst|clock_counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(7));

-- Location: LABCELL_X35_Y47_N36
\inst|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = ( !\inst|clock_counter1\(7) & ( !\inst|clock_counter1\(5) & ( (!\inst|clock_counter1\(12) & (!\inst|clock_counter1\(8) & (!\inst|clock_counter1[4]~DUPLICATE_q\ & !\inst|clock_counter1\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(12),
	datab => \inst|ALT_INV_clock_counter1\(8),
	datac => \inst|ALT_INV_clock_counter1[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_clock_counter1\(6),
	datae => \inst|ALT_INV_clock_counter1\(7),
	dataf => \inst|ALT_INV_clock_counter1\(5),
	combout => \inst|Equal1~5_combout\);

-- Location: FF_X34_Y47_N44
\inst|clock_counter1[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[14]~DUPLICATE_q\);

-- Location: FF_X34_Y47_N32
\inst|clock_counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(10));

-- Location: FF_X34_Y47_N34
\inst|clock_counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1\(11));

-- Location: FF_X34_Y47_N41
\inst|clock_counter1[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|Add1~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \inst|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter1[13]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y47_N12
\inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = ( !\inst|clock_counter1\(9) & ( !\inst|clock_counter1[13]~DUPLICATE_q\ & ( (!\inst|clock_counter1\(15) & (!\inst|clock_counter1[14]~DUPLICATE_q\ & (!\inst|clock_counter1\(10) & !\inst|clock_counter1\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_clock_counter1\(15),
	datab => \inst|ALT_INV_clock_counter1[14]~DUPLICATE_q\,
	datac => \inst|ALT_INV_clock_counter1\(10),
	datad => \inst|ALT_INV_clock_counter1\(11),
	datae => \inst|ALT_INV_clock_counter1\(9),
	dataf => \inst|ALT_INV_clock_counter1[13]~DUPLICATE_q\,
	combout => \inst|Equal1~3_combout\);

-- Location: MLABCELL_X34_Y46_N36
\inst|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~6_combout\ = ( \inst|Equal1~5_combout\ & ( \inst|Equal1~3_combout\ & ( (\inst|Equal1~1_combout\ & (\inst|Equal1~4_combout\ & (\inst|Equal1~0_combout\ & \inst|Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~1_combout\,
	datab => \inst|ALT_INV_Equal1~4_combout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Equal1~2_combout\,
	datae => \inst|ALT_INV_Equal1~5_combout\,
	dataf => \inst|ALT_INV_Equal1~3_combout\,
	combout => \inst|Equal1~6_combout\);

-- Location: LABCELL_X33_Y48_N39
\inst|clk_i2c1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_i2c1~0_combout\ = ( !\inst|clk_i2c1~q\ & ( \inst|Equal1~6_combout\ ) ) # ( \inst|clk_i2c1~q\ & ( !\inst|Equal1~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_clk_i2c1~q\,
	dataf => \inst|ALT_INV_Equal1~6_combout\,
	combout => \inst|clk_i2c1~0_combout\);

-- Location: FF_X33_Y48_N41
\inst|clk_i2c1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \inst|clk_i2c1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_i2c1~q\);

-- Location: LABCELL_X27_Y46_N0
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


