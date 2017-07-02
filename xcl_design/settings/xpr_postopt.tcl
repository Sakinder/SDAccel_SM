
# pll_clk[{0,1,2}] pll_clk[{0,1,2}]_{1,2,3}_DIV clocks (12 total)
set_property HIGH_PRIORITY true [get_nets -of [get_pins {xcl_design_i/expanded_region/memc/ddrmem_*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/mmcm_pll_loop[*].PLLE3_BASE_INST_OTHER/CLKOUTPHY}]]

# pll_clk[0]_DIV pll_clk[0]_1_DIV pll_clk[0]_2_DIV pll_clk[0]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins xcl_design_i/expanded_region/memc/ddrmem_*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]]

# pll_clk[1]_DIV pll_clk[1]_1_DIV pll_clk[1]_2_DIV pll_clk[1]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins xcl_design_i/expanded_region/memc/ddrmem_*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[5].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]]

# pll_clk[2]_DIV pll_clk[2]_1_DIV pll_clk[2]_2_DIV pll_clk[2]_3_DIV clocks
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins xcl_design_i/expanded_region/memc/ddrmem_*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[9].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]]

set_clock_uncertainty -setup 0.15 [get_clocks mmcm_clkout0*]
set_clock_uncertainty -setup 0.15 [get_clocks pll_clk*]
