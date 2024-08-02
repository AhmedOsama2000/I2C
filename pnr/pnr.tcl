##############################################

########### 1. DESIGN SETUP ##################

##############################################



set design i2c_master_top

sh rm -rf $design

set sc_dir "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12"

lappend search_path  "/home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM"
lappend search_path  "/home/ahesham/ASIC_Course/I2C"
lappend search_path  "/home/ahesham/ASIC_Course/I2C/rtl"

set_app_var link_library "* NangateOpenCellLibrary_ss0p95vn40c.db"

set_app_var target_library "NangateOpenCellLibrary_ss0p95vn40c.db"



create_mw_lib   ./${design} \
                -technology $sc_dir/tech/techfile/milkyway/FreePDK45_10m.tf \
		-mw_reference_library $sc_dir/lib/Back_End/mdb \
		-open
		
############### insert the files for parasitic exctraction ############### 
set tlupmax "$sc_dir/tech/rcxt/FreePDK45_10m_Cmax.tlup"
set tlupmin "$sc_dir/tech/rcxt/FreePDK45_10m_Cmin.tlup"
set tech2itf "$sc_dir/tech/rcxt/FreePDK45_10m.map"

set_tlu_plus_files  -max_tluplus $tlupmax \
                   -min_tluplus $tlupmin \
     		   -tech2itf_map $tech2itf

import_designs  ../syn/output/${design}.v \
                -format verilog \
		-top ${design} \
		-cel ${design}

	
	
source  ../syn/cons/constr.tcl

save_mw_cel -as ${design}_1_imported	


################## start the floorplan ################### 
create_floorplan -core_utilization 0.6 \
	-start_first_row -flip_first_row \
	-left_io2core 3 -bottom_io2core 3 -right_io2core 3 -top_io2core 3


save_mw_cel -as ${design}_2_fp


################## POWER NETWORK #####################
## Defining Logical POWER/GROUND Connections ==> Connect the power nets with the power pins (Just a logical connection)
derive_pg_connection 	 -power_net VDD \
			 -ground_net VSS \
			 -power_pin VDD \
			 -ground_pin VSS
			 
			 
# Define Power Ring 

###################

set_fp_rail_constraints   -set_ring -nets  {VDD VSS}  \
                         -horizontal_ring_layer { metal5 metal7 } \
                         -vertical_ring_layer { metal6 metal8 } \
			 -ring_spacing 0.8 \
			 -ring_offset 0.8 \
			 -extend_strap core_ring


## Define Power Mesh 

####################
set_fp_rail_constraints -add_layer  -layer metal8   -direction vertical      -max_strap  20  -min_strap 10  -min_width  0.5   -spacing minimum
set_fp_rail_constraints -add_layer  -layer metal7   -direction horizontal  -max_strap  20  -min_strap 10  -min_width  0.5   -spacing minimum
set_fp_rail_constraints -add_layer  -layer metal6   -direction vertical      -max_strap  20  -min_strap 10  -min_width  0.5   -spacing minimum
set_fp_rail_constraints -add_layer  -layer metal5   -direction horizontal  -max_strap  20  -min_strap 10  -min_width  0.5   -spacing minimum
set_fp_rail_constraints -add_layer  -layer metal4   -direction vertical   	 -max_strap  20  -min_strap 10  -min_width  0.5  -spacing minimum
set_fp_rail_constraints -set_global

## Creating virtual PG pads
####################
set die_llx [lindex [lindex [ get_attribute [get_die_area] bbox] 0] 0]
set die_lly [lindex [lindex [ get_attribute [get_die_area] bbox] 0] 1]
set die_urx [lindex [lindex [ get_attribute [get_die_area] bbox] 1] 0]
set die_ury [lindex [lindex [ get_attribute [get_die_area] bbox] 1] 1]


for {set i "[expr $die_llx + 2]"} {$i < "[expr $die_urx - 4]"} {set i [expr $i + 8]} { 
	create_fp_virtual_pad -net VSS -point "{$i $die_lly}" 
	create_fp_virtual_pad -net VDD -point "{[expr $i + 4] $die_lly}"
	create_fp_virtual_pad -net VSS -point "{$i $die_ury}"
	create_fp_virtual_pad -net VDD -point "{[expr $i + 4] $die_ury}"
}



for {set i "[expr $die_lly + 2]"} {$i < "[expr $die_ury - 4]"} {set i [expr $i + 8]} { 
	create_fp_virtual_pad -net VSS -point "{$die_llx $i}" 
	create_fp_virtual_pad -net VDD -point "{$die_llx [expr $i + 4]}" 
	create_fp_virtual_pad -net VSS -point "{$die_urx $i}" 
	create_fp_virtual_pad -net VDD -point "{$die_urx [expr $i + 4] }" 
}	
	
	
synthesize_fp_rail  -nets {VDD VSS} -synthesize_power_plan -target_voltage_drop 22 -voltage_supply 1.1 -power_budget 500

## Analyze IR-drop; Modify power network constraints and re-synthesize, as needed.

## Max IR is 2% of Nominal Supply. In our case, 0.02 x 1.1v= 22mv



commit_fp_rail



## Drop VIAS from last layer (Tap layer) to the power mesh 

set_preroute_drc_strategy -max_layer metal6

preroute_standard_cells -fill_empty_rows -remove_floating_pieces



## If you want to remove power and recreate it

#remove_net_shape  [get_net_shapes -of_objects [get_nets -all "VSS VDD"]]

#remove_via  [get_vias -of_objects [get_nets -all "VSS VDD"]]

## MAy need => remove_fp_virtual_pad -all



## Analyze IR-drop; Modify power network constraints and re-synthesize, as needed.

analyze_fp_rail  -nets {VDD VSS} -power_budget 500 -voltage_supply 1.1



## Final Floorplan Assessment
## Add Well Tap Cells ==> Which used to avoid latch-up violations
## ==> Don't stack the Tie cells near to each others to avoid DRCs

#####################
add_tap_cell_array -master   TAP \
     		   -distance 20 \
     		   -pattern  stagger_every_other_row 



save_mw_cel -as ${design}_3_power		

##############################################
########### 4. Placement #####################
##############################################
puts "start_place"

## CHECKS
#########
 ## ==> Routing until metal 4 , remaining layers are not used for routing
  # To Make sure they are as wanted.
set_ignored_layers -max_routing_layer metal4
report_ignored_layers ;                       

## Check the design if it's ready for routing
check_physical_design -stage pre_place_opt
check_physical_constraints	


## INITIAL PLACEMENT
####################
## Initial Placement can be done using the following command using any of its target options 
#place_opt -area_recovery |-power |-congestion|
place_opt 	


## OPTIMIZATION ==> Timing Optimization
###############
# psynopt -area_recovery |-power| |-congestion| 
psynopt


## FINAL ASSESSMENT
###################
check_legality
## If no legalized cells => legalize_placement -effort high -incremental 
# Check Congestion
# Check Timing 
# report_design_physical -utilization

# DEFINING POWER/GROUND NETS AND PINS ==> Logical Connection		 
derive_pg_connection  -power_net  VDD  \
			-ground_net VSS   \
			-power_pin   VDD  \
			-ground_pin  VSS	

## Tie fixed values
## Search for pins that needs logic 0 or logic 1
set tie_pins [get_pins -all -filter "constant_value == 0 || constant_value == 1 && name !~ V* && is_hierarchical == false "]

derive_pg_connection -power_net VDD \
			 -ground_net VSS \
			 -tie


connect_tie_cells -objects $tie_pins \
                  -obj_type port_inst \
		  -tie_low_lib_cell  LOGIC0_X1 \
		  -tie_high_lib_cell LOGIC1_X1

puts "finish_place"
save_mw_cel -as ${design}_4_placed

########### 5. CTS       #####################
##############################################

puts "start_cts"
## CHECKS
#########
check_physical_design -stage pre_clock_opt 
check_clock_tree 
report_clock_tree


## CONSTRAINTS 
##############
## Here, We define more constraints on your design that are related to CTS stage.

set_driving_cell -lib_cell BUF_X16 -pin Z [get_ports wb_clk_i]
###OR
# set_input_transition -rise 0.3 [get_ports clk]
# set_input_transition -fall 0.2 [get_ports clk]


#### Set Clock Exceptions


### Set Clock Control/Targets
set_clock_tree_options \
                -clock_trees wb_clk_i \
		-target_early_delay 0.1 \
		-target_skew 0.5 \
		-max_capacitance 300 \
		-max_fanout 10 \
		-max_transition 0.150

set_clock_tree_options -clock_trees wb_clk_i  -buffer_relocation true  -buffer_sizing true -gate_relocation true  -gate_sizing true 

## Selection of CTS cells
set_clock_tree_references -references [get_lib_cells */CLKBUF*] 
## Change Routing layers width and spacing

### Set Clock Physical Constraints
## Clock Non-Default Ruls (NDR) - Set it to be double width and double spacing 
define_routing_rule my_route_rule \ 
	-widths {metal3 0.2  metal4 0.3 metal5  0.35} \
	-spacings  {metal3 0.2   metal4 0.3  metal5 0.35} 

set_clock_tree_options -clock_trees wb_clk_i \
                       -routing_rule my_route_rule \
		       -layer_list "metal3 metal4 metal5"

## To avoid NDR at clock sinks
set_clock_tree_options -use_default_routing_for_sinks 1

report_clock_tree -settings


## Clock Tree : Synhtesis, Optimization, and Routing
####################################################
## The 3 steps can be done with the combo command clock_opt. But below, we do them individually.

## 1- CTS 
clock_opt -only_cts -no_clock_route
## analyze
    report_design_physical -utilization
    report_clock_tree -summary ; # reports for the clock tree, regardless of relation between FFs
    report_clock_tree
    report_clock_timing -type summary ; # reports for the clock tree, considering relation between FFs
    report_timing
    report_timing -delay_type min
    report_constraints -all_violators -max_delay -min_delay
    # Check Congestion
    # Check Timing


## 2- CTO ==> Post CTS optimization
## To Consider Hold Fix -- Design Dependent
set_fix_hold [all_clocks]
set_fix_hold_options -prioritize_tns
set_propagated_clock [all_clocks]
clock_opt -only_psyn -no_clock_route
#analyze


## 3- Clock Tree Routing
route_group -all_clock_nets
#analyze


## If any issue at analysis, update CT constraints 
##################################################

# DEFINING POWER/GROUND NETS AND PINS			 
derive_pg_connection    -power_net   VDD \
			 -ground_net VSS \
			 -power_pin   VDD \
			 -ground_pin VSS	
			 
save_mw_cel -as ${design}_5_cts

puts "finish_cts"

##############################################
########### 6. Routing   #####################
##############################################

## Before starting to route, you should add spare cells
insert_spare_cells -lib_cell {NOR2_X4 NAND2_X4} \
		   -num_instances 20 \
		   -cell_name SPARE_PREFIX_NAME \
		   -tie

set_dont_touch  [all_spare_cells]  true
set_attribute      [all_spare_cells]  is_soft_fixed true

##############################################

puts "start_route"

check_physical_design -stage pre_route_opt; # dump check_physical_design result to file ./cpd_pre_route_opt_*/index.html
all_ideal_nets
all_high_fanout -nets -threshold 100
check_routeability


set_delay_calculation_options -arnoldi_effort low

set_route_options -groute_timing_driven true \
	          -groute_incremental true \
	          -track_assign_timing_driven true \
	          -same_net_notch check_and_fix 


## Related to crosstalk
set_si_options -route_xtalk_prevention true \
	       -delta_delay true \
	       -min_delta_delay true \
	       -static_noise true \
	       -timing_window true 

## To Consider Hold Fix
#   set_fix_hold_options -prioritize_tns
set_fix_hold [all_clocks]
set_prefer -min  [get_lib_cells "*/BUF_X2 */BUF_X1"]
set_fix_hold_options -preferred_buffer

set_propagated_clock [all_clocks]
# signal routing + timing optimization.
route_opt -incremental

psynopt  -only_hold_time -congestion
route_zrt_eco -open_net_driven true
verify_zrt_route
route_zrt_detail -incremental true -initial_drc_from_input true

derive_pg_connection    -power_net    VDD \
			 -ground_net  VSS  \
			 -power_pin    VDD \
			 -ground_pin  VSS	

report_noise
report_timing -crosstalk_delta
save_mw_cel -as ${design}_6_routed

puts "finish_route"

##############################################
########### 7. Finishing #####################
##############################################
insert_stdcell_filler -cell_without_metal {FILLCELL_X32 FILLCELL_X16 FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1} \
					-connect_to_power VDD -connect_to_ground VSS

insert_zrt_redundant_vias 

derive_pg_connection    -power_net VDD \
			 -ground_net VSS \
			 -power_pin VDD  \
			 -ground_pin VSS	

save_mw_cel -as ${design}_7_finished

save_mw_cel -as ${design}

##############################################
########### 8. Checks and Outputs ############
##############################################
verify_zrt_route
verify_lvs -ignore_floating_port -ignore_floating_net \
           -check_open_locator -check_short_locator
           
           
start_gui

set_write_stream_options -map_layer $sc_dir/tech/strmout/FreePDK45_10m_gdsout.map \
                        -output_filling fill \
			 -child_depth 20 \
			 -output_outdated_fill  \
			 -output_pin  {text geometry}

write_stream -lib $design \
                 -format gds \
		  -cells $design \
		  ./output/${design}.gds


define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false


write_verilog -pg -no_physical_only_cells ./output/${design}_icc.v
write_verilog -no_physical_only_cells ./output/${design}_icc_nopg.v

extract_rc
write_parasitics -output {./output/i2c_master_top.spef}

###################### Post PnR Formal Verification #####################
set_svf $design.svf

#close_mw_cel
#close_mw_lib

################ start star_rc ##############
sh icwbev ./output/i2c_master_top.gds &

######################## exit ###################
close_mw_cel
close_mw_lib
#exit

