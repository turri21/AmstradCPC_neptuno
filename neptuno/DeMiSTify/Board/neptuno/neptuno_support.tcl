set_global_assignment -name SDC_FILE ${boardpath}/neptuno/constraints.sdc
set_global_assignment -name VERILOG_FILE rtl/joydecoder.v
# Audio and Jostick support
set_global_assignment -name VHDL_FILE ${boardpath}/neptuno/audio_i2s.vhd
set_global_assignment -name VERILOG_FILE ${boardpath}/neptuno/joydecoder.v

