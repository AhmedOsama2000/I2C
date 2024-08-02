# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer metal8 -direction vertical -max_strap 20 -min_strap 10 -max_width 5.000000 -min_width 0.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal7 -direction horizontal -max_strap 20 -min_strap 10 -max_width 5.000000 -min_width 0.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal6 -direction vertical -max_strap 20 -min_strap 10 -max_width 5.000000 -min_width 0.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal5 -direction horizontal -max_strap 20 -min_strap 10 -max_width 5.000000 -min_width 0.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal4 -direction vertical -max_strap 20 -min_strap 10 -max_width 5.000000 -min_width 0.500000 -spacing minimum 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { metal5,metal7 } -vertical_ring_layer { metal6,metal8 } -ring_spacing 0.800000 -ring_offset 0.800000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VSS -point { 2.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 6.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 2.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 6.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 10.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 14.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 10.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 14.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 18.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 22.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 18.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 22.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 26.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 30.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 26.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 30.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 34.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 38.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 34.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 38.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 42.000000 0.000000 }
create_fp_virtual_pad -net VDD -point { 46.000000 0.000000 }
create_fp_virtual_pad -net VSS -point { 42.000000 52.200001 }
create_fp_virtual_pad -net VDD -point { 46.000000 52.200001 }
create_fp_virtual_pad -net VSS -point { 0.000000 2.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 6.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 2.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 6.000000 }
create_fp_virtual_pad -net VSS -point { 0.000000 10.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 14.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 10.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 14.000000 }
create_fp_virtual_pad -net VSS -point { 0.000000 18.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 22.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 18.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 22.000000 }
create_fp_virtual_pad -net VSS -point { 0.000000 26.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 30.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 26.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 30.000000 }
create_fp_virtual_pad -net VSS -point { 0.000000 34.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 38.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 34.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 38.000000 }
create_fp_virtual_pad -net VSS -point { 0.000000 42.000000 }
create_fp_virtual_pad -net VDD -point { 0.000000 46.000000 }
create_fp_virtual_pad -net VSS -point { 53.500000 42.000000 }
create_fp_virtual_pad -net VDD -point { 53.500000 46.000000 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.100000 -power_budget 500.000000  -target_voltage_drop 22.000000  
