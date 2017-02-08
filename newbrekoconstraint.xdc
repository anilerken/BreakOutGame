# Clock signal 
set_property PACKAGE_PIN W5 [get_ports clk ]  	 	 	 	  
 	set_property IOSTANDARD LVCMOS33 [get_ports clk ] 



##VGA Connector 
     set_property PACKAGE_PIN G19 [get_ports {red[0]}]                     
          set_property IOSTANDARD LVCMOS33 [get_ports {red[0]}] 
     set_property PACKAGE_PIN H19 [get_ports {red[1]}]                     
          set_property IOSTANDARD LVCMOS33 [get_ports {red[1]}] 
     set_property PACKAGE_PIN J19 [get_ports {red[2]}]                     
          set_property IOSTANDARD LVCMOS33 [get_ports {red[2]}] 
      
     set_property PACKAGE_PIN N18 [get_ports {blue[0]}]                     
          set_property IOSTANDARD LVCMOS33 [get_ports {blue[0]}] 
     set_property PACKAGE_PIN L18 [get_ports {blue[1]}] 
                                  set_property IOSTANDARD LVCMOS33 [get_ports {blue[1]}] 
     set_property PACKAGE_PIN K18 [get_ports {blue[2]}]                     
          set_property IOSTANDARD LVCMOS33 [get_ports {blue[2]}]                   
           
     set_property PACKAGE_PIN J17 [get_ports {green[0]}]                 
          set_property IOSTANDARD LVCMOS33 [get_ports {green[0]}] 
     set_property PACKAGE_PIN H17 [get_ports {green[1]}]                 
          set_property IOSTANDARD LVCMOS33 [get_ports {green[1]}] 
     set_property PACKAGE_PIN G17 [get_ports {green[2]}]                 
          set_property IOSTANDARD LVCMOS33 [get_ports {green[2]}]
            
     set_property PACKAGE_PIN P19 [get_ports hsync]                          
          set_property IOSTANDARD LVCMOS33 [get_ports hsync] 
     set_property PACKAGE_PIN R19 [get_ports vsync]                          
          set_property IOSTANDARD LVCMOS33 [get_ports vsync] 

## Buttons
set_property PACKAGE_PIN T17 [get_ports right]  	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports right] 
set_property PACKAGE_PIN W19 [get_ports left ]  	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports left] 
set_property PACKAGE_PIN U18 [get_ports reset]                        
             set_property IOSTANDARD LVCMOS33 [get_ports reset] 	