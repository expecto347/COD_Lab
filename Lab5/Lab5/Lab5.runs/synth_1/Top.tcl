# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /root/COD_Lab/Lab5/Lab5/Lab5.cache/wt [current_project]
set_property parent.project_path /root/COD_Lab/Lab5/Lab5/Lab5.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /root/COD_Lab/Lab5/Lab5/Lab5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/Testcase/simple_test.coe
add_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/Testcase/pipeline_test.coe
add_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/Testcase/control_test.coe
add_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/Testcase/data_test.coe
add_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/Testcase/ebreak_test.coe
read_verilog -library xil_defaultlib {
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/ALU.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/Branch.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/CPU.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/CTRL.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/CPU_src/模块文件/Check_Data_SEG_SEL.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/CPU_src/模块文件/Check_Data_SEL.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/CPU_src/模块文件/Check_Data_SEL_HZD.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Ded.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/Hazard.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Hex2ASC.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/IMM.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/MEM.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/MUX.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/MUX_PC.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/MUX_RFwrite.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Memory_Map.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/PC.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/PDU.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/PDU_ctrl.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/RF.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Receive.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/myCPU/SEG_REG.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Segment.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Send.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Shift_reg.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Uout.v
  /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/Top.v
}
read_ip -quiet /root/COD_Lab/Lab5/Lab5/Lab5.srcs/sources_1/ip/DATA_MEM/DATA_MEM.xci
set_property used_in_implementation false [get_files -all /root/COD_Lab/Lab5/Lab5/Lab5.srcs/sources_1/ip/DATA_MEM/DATA_MEM_ooc.xdc]

read_ip -quiet /root/COD_Lab/Lab5/Lab5/Lab5.srcs/sources_1/ip/INST_MEM/INST_MEM.xci
set_property used_in_implementation false [get_files -all /root/COD_Lab/Lab5/Lab5/Lab5.srcs/sources_1/ip/INST_MEM/INST_MEM_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/约束/constrains.xdc
set_property used_in_implementation false [get_files /root/COD_Lab/Lab5/Lab5_files/Lab5_files/TOP/约束/constrains.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]