set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_pin]

set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports rst_pin]

set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports btn_pin]

set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports rxd_pin]

set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports {led_pins[0]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {led_pins[1]}]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {led_pins[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {led_pins[3]}]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports txd_pin]
