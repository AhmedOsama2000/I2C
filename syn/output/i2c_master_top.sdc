###################################################################

# Created by write_sdc on Thu Aug  2 08:02:35 2018

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 50 [get_ports {wb_dat_o[7]}]
set_load -pin_load 50 [get_ports {wb_dat_o[6]}]
set_load -pin_load 50 [get_ports {wb_dat_o[5]}]
set_load -pin_load 50 [get_ports {wb_dat_o[4]}]
set_load -pin_load 50 [get_ports {wb_dat_o[3]}]
set_load -pin_load 50 [get_ports {wb_dat_o[2]}]
set_load -pin_load 50 [get_ports {wb_dat_o[1]}]
set_load -pin_load 50 [get_ports {wb_dat_o[0]}]
set_load -pin_load 50 [get_ports wb_ack_o]
set_load -pin_load 50 [get_ports wb_inta_o]
set_load -pin_load 50 [get_ports scl_pad_o]
set_load -pin_load 50 [get_ports scl_padoen_o]
set_load -pin_load 50 [get_ports sda_pad_o]
set_load -pin_load 50 [get_ports sda_padoen_o]
set_max_transition 0.1875 [get_ports {wb_adr_i[2]}]
set_max_transition 0.1875 [get_ports {wb_adr_i[1]}]
set_max_transition 0.1875 [get_ports {wb_adr_i[0]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[7]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[6]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[5]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[4]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[3]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[2]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[1]}]
set_max_transition 0.1875 [get_ports {wb_dat_i[0]}]
set_max_transition 0.1875 [get_ports wb_we_i]
set_max_transition 0.1875 [get_ports wb_stb_i]
set_max_transition 0.1875 [get_ports wb_cyc_i]
set_max_transition 0.1875 [get_ports scl_pad_i]
set_max_transition 0.1875 [get_ports sda_pad_i]
create_clock [get_ports wb_clk_i]  -period 1.25  -waveform {0 0.625}
set_clock_uncertainty 0.0625  [get_clocks wb_clk_i]
set_false_path   -through [list [get_ports arst_i]]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_adr_i[2]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_adr_i[1]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_adr_i[0]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[7]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[6]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[5]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[4]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[3]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[2]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[1]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_i[0]}]
set_input_delay -clock wb_clk_i  0.2  [get_ports wb_we_i]
set_input_delay -clock wb_clk_i  0.2  [get_ports wb_stb_i]
set_input_delay -clock wb_clk_i  0.2  [get_ports wb_cyc_i]
set_input_delay -clock wb_clk_i  0.2  [get_ports scl_pad_i]
set_input_delay -clock wb_clk_i  0.2  [get_ports sda_pad_i]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[7]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[6]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[5]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[4]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[3]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[2]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[1]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports {wb_dat_o[0]}]
set_output_delay -clock wb_clk_i  0.2  [get_ports wb_ack_o]
set_output_delay -clock wb_clk_i  0.2  [get_ports wb_inta_o]
set_output_delay -clock wb_clk_i  0.2  [get_ports scl_pad_o]
set_output_delay -clock wb_clk_i  0.2  [get_ports scl_padoen_o]
set_output_delay -clock wb_clk_i  0.2  [get_ports sda_pad_o]
set_output_delay -clock wb_clk_i  0.2  [get_ports sda_padoen_o]
set_input_transition -max 0.0375  [get_ports {wb_adr_i[2]}]
set_input_transition -min 0.0375  [get_ports {wb_adr_i[2]}]
set_input_transition -max 0.0375  [get_ports {wb_adr_i[1]}]
set_input_transition -min 0.0375  [get_ports {wb_adr_i[1]}]
set_input_transition -max 0.0375  [get_ports {wb_adr_i[0]}]
set_input_transition -min 0.0375  [get_ports {wb_adr_i[0]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[7]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[7]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[6]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[6]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[5]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[5]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[4]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[4]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[3]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[3]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[2]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[2]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[1]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[1]}]
set_input_transition -max 0.0375  [get_ports {wb_dat_i[0]}]
set_input_transition -min 0.0375  [get_ports {wb_dat_i[0]}]
set_input_transition -max 0.0375  [get_ports wb_we_i]
set_input_transition -min 0.0375  [get_ports wb_we_i]
set_input_transition -max 0.0375  [get_ports wb_stb_i]
set_input_transition -min 0.0375  [get_ports wb_stb_i]
set_input_transition -max 0.0375  [get_ports wb_cyc_i]
set_input_transition -min 0.0375  [get_ports wb_cyc_i]
set_input_transition -max 0.0375  [get_ports scl_pad_i]
set_input_transition -min 0.0375  [get_ports scl_pad_i]
set_input_transition -max 0.0375  [get_ports sda_pad_i]
set_input_transition -min 0.0375  [get_ports sda_pad_i]
