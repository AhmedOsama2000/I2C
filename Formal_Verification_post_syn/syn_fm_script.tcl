
############################  Search PATH ################################

lappend search_path "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"
lappend search_path "/home/ahesham/ASIC_Course/I2C/rtl"
lappend search_path "/home/ahesham/ASIC_Course/I2C/syn/scripts"

########################### Define Top Module ############################
                                                   
set TOP_MODULE i2c_master_top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf  "/home/ahesham/ASIC_Course/I2C/syn/scripts/i2c_master_top.svf"

####################### Read Reference tech libs ########################
 
read_db -container Ref "NangateOpenCellLibrary_ss0p95vn40c.db"

###################  Read Reference Design Files ######################## 

read_verilog -container Ref "timescale.v"
read_verilog -container Ref "i2c_master_defines.v"
read_verilog -container Ref "i2c_master_bit_ctrl.v"
read_verilog -container Ref "i2c_master_byte_ctrl.v"
read_verilog -container Ref "i2c_master_top.v"

######################## set the top Reference Design ######################## 

set_reference_design i2c_master_top
set_top i2c_master_top

####################### Read Implementation tech libs ######################## 

read_db -container Imp "NangateOpenCellLibrary_ss0p95vn40c.db"

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/ahesham/ASIC_Course/I2C/syn/output/i2c_master_top.v"

####################  set the top Implementation Design ######################

set_implementation_design i2c_master_top
set_top i2c_master_top


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "./reports/passing_points.rpt"
report_failing_points > "./reports/failing_points.rpt"
report_aborted_points > "./reports/aborted_points.rpt"
report_unverified_points > "./reports/unverified_points.rpt"


start_gui
