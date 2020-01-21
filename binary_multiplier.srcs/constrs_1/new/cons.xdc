## Switches
set_property PACKAGE_PIN V17 [get_ports {x[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {x[0]}]
set_property PACKAGE_PIN V16 [get_ports {x[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {x[1]}]
set_property PACKAGE_PIN W16 [get_ports {x[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {x[2]}]
set_property PACKAGE_PIN W17 [get_ports {x[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {x[3]}]
set_property PACKAGE_PIN W15 [get_ports {y[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {y[0]}]
set_property PACKAGE_PIN V15 [get_ports {y[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {y[1]}]
set_property PACKAGE_PIN W14 [get_ports {y[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {y[2]}]
set_property PACKAGE_PIN W13 [get_ports {y[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {y[3]}]
set_property PACKAGE_PIN T2 [get_ports {load}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load}]


	
#buttons
set_property PACKAGE_PIN U18 [get_ports step]						
	set_property IOSTANDARD LVCMOS33 [get_ports step]
set_property PACKAGE_PIN W19 [get_ports reset]						
    set_property IOSTANDARD LVCMOS33 [get_ports reset]

	## Clock signal
 set_property PACKAGE_PIN W5 [get_ports clk]                            
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
        create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
        
 set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets step_IBUF] 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {outLeds[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[0]}]
set_property PACKAGE_PIN E19 [get_ports {outLeds[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[1]}]
set_property PACKAGE_PIN U19 [get_ports {outLeds[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[2]}]
set_property PACKAGE_PIN V19 [get_ports {outLeds[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[3]}]
set_property PACKAGE_PIN W18 [get_ports {outLeds[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[4]}]
set_property PACKAGE_PIN U15 [get_ports {outLeds[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[5]}]
set_property PACKAGE_PIN U14 [get_ports {outLeds[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[6]}]
set_property PACKAGE_PIN V14 [get_ports {outLeds[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {outLeds[7]}]
	
	
	set_property PACKAGE_PIN W7 [get_ports a1]
    set_property IOSTANDARD LVCMOS33 [get_ports a1]
    set_property PACKAGE_PIN W6 [get_ports b1]
    set_property IOSTANDARD LVCMOS33 [get_ports b1]
    set_property PACKAGE_PIN U8 [get_ports c1]
    set_property IOSTANDARD LVCMOS33 [get_ports c1]
    set_property PACKAGE_PIN V8 [get_ports d1]
    set_property IOSTANDARD LVCMOS33 [get_ports d1]
    set_property PACKAGE_PIN V7 [get_ports dp1]
    set_property IOSTANDARD LVCMOS33 [get_ports dp1]
    set_property PACKAGE_PIN U5 [get_ports e1]
    set_property IOSTANDARD LVCMOS33 [get_ports e1]
    set_property PACKAGE_PIN V5 [get_ports f1]
    set_property IOSTANDARD LVCMOS33 [get_ports f1]
    set_property PACKAGE_PIN U7 [get_ports g1]
    set_property IOSTANDARD LVCMOS33 [get_ports g1]
    
    
    set_property PACKAGE_PIN W4 [get_ports {an1[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an1[3]}]
    set_property PACKAGE_PIN V4 [get_ports {an1[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an1[2]}]
    set_property PACKAGE_PIN U4 [get_ports {an1[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an1[1]}]
    set_property PACKAGE_PIN U2 [get_ports {an1[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an1[0]}]