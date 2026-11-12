-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 29 10:59:54 2026
-- Host        : ENTA-NT-043 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode pin_planning -force -port_diff_buffers C:/Mi_Archivos_Locales/TP5/Practica05/uart_top.vhd
-- Design      : ios
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ios is
  Port (
    led_pins : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_pin : in STD_LOGIC;
    btn_pin : in STD_LOGIC;
    rst_pin : in STD_LOGIC;
    rxd_pin : in STD_LOGIC;
    txd_pin : out STD_LOGIC
  );

end ios;

architecture STRUCTURE of ios is

	component uart_led is
		generic(
			BAUD_RATE:  integer := 115200;
			CLOCK_RATE: integer := 100E6
		);
		port(
			clk_pin:  in  std_logic;
			rst_pin:  in  std_logic;
			btn_pin:  in  std_logic;
			rxd_pin:  in  std_logic;
			led_pins: out std_logic_vector(3 downto 0)
		);
	end component;

	signal loopback: std_logic;

begin

	loopback <= not rxd_pin;
	txd_pin  <= not loopback;

	U0: uart_led
		generic map(
			BAUD_RATE  => 115200,
			CLOCK_RATE => 100E6
		)
		port map(
			clk_pin  => clk_pin,
			rst_pin  => rst_pin,
			btn_pin  => btn_pin,
			rxd_pin  => rxd_pin,
			led_pins => led_pins
		);

end STRUCTURE;
