# Set DSA project properties
set_property dsa.vendor               "xilinx"             [current_project]
set_property dsa.board_id             "xil-accel-rd-ku115" [current_project]
set_property dsa.name                 "4ddr-xpr"           [current_project]
set_property dsa.version              "3.2"                [current_project]
set_property dsa.flash_interface_type "spix8"              [current_project]
set_property dsa.flash_offset_address "0x4000000"          [current_project]
set_property dsa.description          "This platform targets the Xilinx Development Board for Acceleration with Kintex UltraScale KU115 FPGA. This high-performance acceleration platform features four channels of DDR4-2400 SDRAM, the expanded partial reconfiguration flow for high fabric resource availability, and Xilinx DMA Subsystem for PCI Express with PCIe Gen3 x8 connectivity." [current_project]

# Set any other project properties
set_property STEPS.OPT_DESIGN.TCL.PRE C:/Sim/V64Vx1/scripts/xpr_preopt.tcl [get_runs impl_1]
set_property STEPS.OPT_DESIGN.TCL.POST C:/Sim/V64Vx1/scripts/xpr_postopt.tcl [get_runs impl_1]
set_property STEPS.ROUTE_DESIGN.TCL.POST C:/Sim/V64Vx1/scripts/xpr_postroute.tcl [get_runs impl_1]