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
set_param xicom.use_bs_reader 1
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /root/COD_Lab/Lab4/Lab4/Lab4.cache/wt [current_project]
set_property parent.project_path /root/COD_Lab/Lab4/Lab4/Lab4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /root/COD_Lab/Lab4/Lab4/Lab4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /root/COD_Lab/Lab4/lab4_files/lab4_files/Testcase/test.coe
add_files /root/COD_Lab/Lab4/lab4_files/lab4_files/Testcase/fib.coe
add_files /root/COD_Lab/Lab4/lab4_files/lab4_files/Testcase/test_ext.coe
read_verilog -library xil_defaultlib {
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/ALU.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/AND_jal.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/Branch.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/CPU.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/CPU_DATA_CHECK.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/CTRL.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Ded.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Hex2ASC.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/IMM.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/MEM.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/MUX.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/MUX_PC.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/MUX_RF.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Memory_Map.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/PC.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/PC_ADD_4.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/PDU.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/PDU_ctrl.v
  /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/new/RF.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Receive.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Segment.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Send.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Shift_reg.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Uout.v
  /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/源文件/Top.v
}
read_ip -quiet /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/ip/DATA_MEM/DATA_MEM.xci
set_property used_in_implementation false [get_files -all /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/ip/DATA_MEM/DATA_MEM_ooc.xdc]

read_ip -quiet /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/ip/INST_MEM/INST_MEM.xci
set_property used_in_implementation false [get_files -all /root/COD_Lab/Lab4/Lab4/Lab4.srcs/sources_1/ip/INST_MEM/INST_MEM_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/约束/constrains.xdc
set_property used_in_implementation false [get_files /root/COD_Lab/Lab4/lab4_files/lab4_files/PDU_src/约束/constrains.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Top -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
