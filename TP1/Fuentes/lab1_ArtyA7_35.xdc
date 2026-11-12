# Arty A7-35 Pin Assignments
############################
# On-board Switches        #
############################
set_property -dict { PACKAGE_PIN A8     IOSTANDARD LVCMOS33 } [get_ports { swt[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11    IOSTANDARD LVCMOS33 } [get_ports { swt[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN C10    IOSTANDARD LVCMOS33 } [get_ports { swt[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
set_property -dict { PACKAGE_PIN A10    IOSTANDARD LVCMOS33 } [get_ports { swt[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]

############################
# On-board led             #
############################
set_property -dict { PACKAGE_PIN H5     IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5     IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9     IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
