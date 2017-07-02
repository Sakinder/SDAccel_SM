
set_property dont_touch false [get_cells -hierarchical -filter {NAME =~ xcl_design_i/expanded_region/u_ocl_region}]
add_cells_to_pblock [get_pblocks pblock_expanded_region] [get_cells [list xcl_design_i/expanded_region/u_ocl_region]]

set_clock_uncertainty -setup 0 [get_clocks mmcm_clkout0*]
set_clock_uncertainty -setup 0 [get_clocks pll_clk*]
