################################    Design Constraints   ################################
#########################################################################################
################################ 1- Define Paramaters    ################################
#########################################################################################

## Define Master Clock
set MASTER_CLK "wb_clk_i"

## Define Clock Period (start with 5ns)
set CLK_PER 	       1.25

## Define I/O Delay Ratios
set MAX_IN_DELAY       0.2
set MAX_OUT_DELAY    0.2

set MIN_IN_DELAY        0.2
set MIN_OUT_DELAY     0.2

## Define I/O Delay
set max_in_delay   [expr $CLK_PER * $MAX_IN_DELAY]
set min_in_delay    [expr $CLK_PER * $MIN_IN_DELAY]

set max_out_delay [expr $CLK_PER * $MAX_OUT_DELAY]
set min_out_delay  [expr $CLK_PER * $MIN_OUT_DELAY]

## Define Clock uncertainties , Assume 5% of CLK period
set CLK_JITTER   [expr $CLK_PER * 0.05]

## Define Environment Parameters (e.g. Load Cap 50ps)
## Assume Maximum Transition is 15% of CLK period
## Assume Input Transistion is 3% of CLK period (Both rise and Fall)
set CAP_LOAD 		 50
set MAX_TRANSITION 	 [expr $CLK_PER * 0.15]
set INPUT_TRANSITION	 [expr $CLK_PER * 0.03]

set MAX_FANOUT 	 10
#########################################################################################
################################ 2- Define Constraints   ################################
#########################################################################################

## Create Master Clock
create_clock -name $MASTER_CLK -period $CLK_PER [get_ports wb_clk_i]

## Create Clock Uncertainities
set_clock_uncertainty  -setup  $CLK_JITTER [get_clocks $MASTER_CLK]
set_clock_uncertainty  -hold   $CLK_JITTER [get_clocks $MASTER_CLK]

## I/O Delays
set_input_delay -max $MAX_IN_DELAY \
		-clock $MASTER_CLK \
 		[remove_from_collection [all_inputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]

set_input_delay -min $MIN_IN_DELAY \
		-clock $MASTER_CLK \
		[remove_from_collection [all_inputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]
		
set_output_delay -max $MAX_OUT_DELAY \
		-clock $MASTER_CLK \
 		[remove_from_collection [all_outputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]

set_output_delay -min $MIN_OUT_DELAY \
		-clock $MASTER_CLK \
		[remove_from_collection [all_outputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]
		

## Load Constraints
set_load   $CAP_LOAD [all_outputs]

## Signals Transitions
set_input_transition $INPUT_TRANSITION \
		     [remove_from_collection [all_inputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]
		     
set_max_transition $MAX_TRANSITION \
		     [remove_from_collection [all_inputs] [get_ports {wb_clk_i wb_rst_i arst_i}]]		

# False path on the async reset signal
set_false_path -through [get_ports arst_i]		

## Prevent the tool from optimizing Clock/reset signals
set_dont_touch_network [get_ports {wb_clk_i wb_rst_i arst_i}]
