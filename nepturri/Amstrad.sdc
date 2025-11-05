# Clock constraints

create_clock -name "CLOCK_50" -period 20.000 [get_ports {CLOCK_50}]
#create_clock -name {SPI_SCK}  -period 41.666 [get_ports {SPI_SCK}]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

set_multicycle_path -to [get_ports {VGA_*}] -setup 3
set_multicycle_path -to [get_ports {VGA_*}] -hold 2

# False paths

set_false_path -to [get_ports {SDRAM_CLK}]
set_false_path -to [get_ports {AUDIO_L}]
set_false_path -to [get_ports {AUDIO_R}]
set_false_path -to [get_ports {LED}]
