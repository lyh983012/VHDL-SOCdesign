
# (C) 2001-2018 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0 156 win32 2018.11.17.21:31:39

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "cpu"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/13.0/quartus/"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_CPU_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/cpu_EPCS_boot_rom.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib              ./libraries/altera      
vmap       altera       ./libraries/altera      
ensure_lib              ./libraries/lpm         
vmap       lpm          ./libraries/lpm         
ensure_lib              ./libraries/sgate       
vmap       sgate        ./libraries/sgate       
ensure_lib              ./libraries/altera_mf   
vmap       altera_mf    ./libraries/altera_mf   
ensure_lib              ./libraries/altera_lnsim
vmap       altera_lnsim ./libraries/altera_lnsim
ensure_lib              ./libraries/cycloneii   
vmap       cycloneii    ./libraries/cycloneii   
ensure_lib       ./libraries/CPU  
vmap       CPU   ./libraries/CPU  
ensure_lib       ./libraries/SYSID
vmap       SYSID ./libraries/SYSID
ensure_lib       ./libraries/EPCS 
vmap       EPCS  ./libraries/EPCS 
ensure_lib       ./libraries/SDRAM
vmap       SDRAM ./libraries/SDRAM

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera      
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm         
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm         
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate       
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_atoms.vhd"              -work cycloneii   
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneii_components.vhd"         -work cycloneii   
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_jtag_debug_module_sysclk.vhd"                         -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_jtag_debug_module_tck.vhd"                            -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_jtag_debug_module_wrapper.vhd"                        -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_mult_cell.vhd"                                        -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_oci_test_bench.vhd"                                   -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_CPU_test_bench.vhd"                                       -work CPU  
  vcom "$QSYS_SIMDIR/submodules/cpu_SYSID.vho"                                                -work SYSID
  vcom "$QSYS_SIMDIR/submodules/cpu_EPCS.vhd"                                                 -work EPCS 
  vcom "$QSYS_SIMDIR/submodules/cpu_SDRAM.vhd"                                                -work SDRAM
  vcom "$QSYS_SIMDIR/cpu.vhd"                                                                            
  vcom "$QSYS_SIMDIR/cpu_cpu_jtag_debug_module_translator_avalon_universal_slave_0_agent.vhd"            
  vcom "$QSYS_SIMDIR/cpu_sdram_s1_translator_avalon_universal_slave_0_agent.vhd"                         
  vcom "$QSYS_SIMDIR/cpu_width_adapter.vhd"                                                              
  vcom "$QSYS_SIMDIR/cpu_width_adapter_001.vhd"                                                          
  vcom "$QSYS_SIMDIR/cpu_cpu_instruction_master_translator.vhd"                                          
  vcom "$QSYS_SIMDIR/cpu_cpu_data_master_translator.vhd"                                                 
  vcom "$QSYS_SIMDIR/cpu_cpu_jtag_debug_module_translator.vhd"                                           
  vcom "$QSYS_SIMDIR/cpu_sdram_s1_translator.vhd"                                                        
  vcom "$QSYS_SIMDIR/cpu_epcs_epcs_control_port_translator.vhd"                                          
  vcom "$QSYS_SIMDIR/cpu_jtag_avalon_jtag_slave_translator.vhd"                                          
  vcom "$QSYS_SIMDIR/cpu_sysid_control_slave_translator.vhd"                                             
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L CPU -L SYSID -L EPCS -L SDRAM -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L CPU -L SYSID -L EPCS -L SDRAM -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
