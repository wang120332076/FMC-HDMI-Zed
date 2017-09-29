# 
# Synthesis run script generated by Vivado
# 

set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.cache/wt [current_project]
set_property parent.project_path C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
add_files C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_v_tc_0_0/design_1_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_v_tc_0_0/design_1_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0/design_1_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_ila_1_0/design_1_ila_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/sources_1/bd/design_1/design_1.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/constrs_1/new/const.xdc
set_property used_in_implementation false [get_files C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.srcs/constrs_1/new/const.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
