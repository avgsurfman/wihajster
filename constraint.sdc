current_design greyhound_ihp_top
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA

# Set a higher limits than in lib
set_max_fanout 8 [current_design]
set_max_capacitance 0.5 [current_design]
set_max_transition 3 [current_design]
set_max_area 0

set_ideal_network [get_pins sg13g2_IOPad_io_clock/p2c]
create_clock [get_pins sg13g2_IOPad_io_clock/p2c] -name clk_core -period 20.0 -waveform {0 10}
set_clock_uncertainty 0.15 [get_clocks clk_core]
set_clock_transition 0.25 [get_clocks clk_core]

set clock_ports [get_ports { 
	io_clock_PAD 
}]
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clock_ports

set clk_core_inout_30mA_ports [get_ports { 
	io_flash_io_PAD[0]
	io_flash_io_PAD[1]
	io_flash_io_PAD[2]
	io_flash_io_PAD[3]
	io_psram_io_PAD[0]
	io_psram_io_PAD[1]
	io_psram_io_PAD[2]
	io_psram_io_PAD[3]
	io_fpga_sclk_PAD
	io_fpga_cs_n_PAD
	io_fpga_mosi_PAD
	io_fpga_miso_PAD
	io_gpio_PAD[0]
	io_gpio_PAD[1]
	io_gpio_PAD[2]
	io_gpio_PAD[3]
	io_gpio_PAD[4]
	io_gpio_PAD[5]
	io_gpio_PAD[6]
	io_gpio_PAD[7]
	io_gpio_PAD[8]
	io_gpio_PAD[9]
	io_gpio_PAD[10]
	io_gpio_PAD[11]
	io_gpio_PAD[12]
	io_gpio_PAD[13]
	io_gpio_PAD[14]
	io_gpio_PAD[15]
	io_gpio_PAD[16]
	io_gpio_PAD[17]
	io_gpio_PAD[18]
	io_gpio_PAD[19]
	io_gpio_PAD[20]
	io_gpio_PAD[21]
	io_gpio_PAD[22]
	io_gpio_PAD[23]
	io_gpio_PAD[24]
	io_gpio_PAD[25]
	io_gpio_PAD[26]
	io_gpio_PAD[27]
	io_gpio_PAD[28]
	io_gpio_PAD[29]
	io_gpio_PAD[30]
	io_gpio_PAD[31]
}] 
set_driving_cell -lib_cell sg13g2_IOPadInOut30mA -pin pad $clk_core_inout_30mA_ports
set_input_delay 8 -clock clk_core $clk_core_inout_30mA_ports
set_output_delay 8 -clock clk_core $clk_core_inout_30mA_ports

set clk_core_input_ports [get_ports { 
	io_reset_PAD 
	io_ser_rx_PAD
	io_fpga_mode_PAD
	io_fetch_enable_PAD
}] 
set_driving_cell -lib_cell sg13g2_IOPadIn -pin pad $clk_core_input_ports
set_input_delay 8 -clock clk_core $clk_core_input_ports

set clk_core_output_30mA_ports [get_ports { 
    io_flash_clk_PAD
    io_flash_cs_n_PAD
    io_psram_clk_PAD
    io_psram_cs_n_PAD
    io_ser_tx_PAD
    io_config_busy_PAD
    io_core_sleep_PAD
}] 
set_driving_cell -lib_cell sg13g2_IOPadOut30mA -pin pad $clk_core_output_30mA_ports
set_output_delay 8 -clock clk_core $clk_core_output_30mA_ports

set_load -pin_load 5 [all_inputs]
set_load -pin_load 5 [all_outputs]
