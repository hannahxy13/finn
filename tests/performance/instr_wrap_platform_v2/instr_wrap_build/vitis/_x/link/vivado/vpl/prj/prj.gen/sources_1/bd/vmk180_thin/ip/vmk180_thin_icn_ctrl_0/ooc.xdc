# aclk {FREQ_HZ 151515625 CLK_DOMAIN bd_4ac6_pspmc_0_0_pl0_ref_clk PHASE 0.0} aclk1 {FREQ_HZ 303031250 CLK_DOMAIN bd_4ac6_pspmc_0_0_pl0_ref_clk PHASE 0.0}
# Clock Domain: bd_4ac6_pspmc_0_0_pl0_ref_clk
create_clock -name aclk -period 6.600 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -multiply_by 2 -divide_by 1 [get_ports aclk1]
