########## Set Top Module
set TOP_MODULE 	i2c_master_top

# Formal Verification File
set_svf $TOP_MODULE.svf

########## Define Search path for the tool
lappend search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"
lappend search_path "/home/ahesham/ASIC_Course/I2C/rtl"
lappend search_path "/home/ahesham/ASIC_Course/I2C/syn"

########## Add link + Target libraries
set_app_var link_library     "* NangateOpenCellLibrary_ss0p95vn40c.db"
set_app_var target_library "NangateOpenCellLibrary_ss0p95vn40c.db"

########## Add work directory
define_design_lib work -path ./work

analyze -library work -format verilog "timescale.v"
analyze -library work -format verilog "i2c_master_defines.v"
analyze -library work -format verilog "i2c_master_bit_ctrl.v"
analyze -library work -format verilog "i2c_master_byte_ctrl.v"
analyze -library work -format verilog "i2c_master_top.v"

elaborate  i2c_master_top -lib work

########## Set Current Design to top module
current_design $TOP_MODULE

########## Link the design + Libraries ====> Liniking All The Design Parts
link

########## Check Design
check_design > chech_design.txt

########## Add Constraints
source ../cons/constr.tcl

########## Begin Synthesis operation
compile -map_effort medium > compile_log
# #compile_ultra

# ########## Reports 
report_area 	 			                > ../reports/synth_area.rpt
report_cell 	 			                > ../reports/synth_cells.rpt
report_qor  	 			                > ../reports/synth_qor.rpt
report_resources 			                > ../reports/synth_resources.rpt

report_timing -delay_type min -max_paths 10 > ../reports/hold.rpt
report_timing -delay_type max -max_paths 10 > ../reports/setup.rpt

report_clock -attributes                    	  > ../reports/clocks.rpt
report_constraint -all_violators -nosplit   > ../reports/Constraint.rpt

# ########## Write SDC File
write_sdc  ../output/i2c_master_top.sdc 

# ########## Write DDC File
write -f ddc -hierarchy -output ../output/i2c_master_top.ddc   

## Write SDF File
write_sdf   ../sdf/$TOP_MODULE.sdf

# change_names -rule verilog 
write -hierarchy -format verilog -output ../output/i2c_master_top.v 

########## Start_gui
start_gui

########## Finish
# exit
