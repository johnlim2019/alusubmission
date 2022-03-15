set projDir "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/vivado"
set projName "manual"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/au_top_0.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/reset_conditioner_1.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/button_conditioner_2.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/multi_seven_seg_3.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/alu_manual_4.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/alu_auto_5.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/pipeline_6.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/counter_7.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/seven_seg_8.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/decoder_9.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/alu_10.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/edge_detector_11.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/counter_12.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/sixteen_bit_full_adder_13.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/shifter16_14.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/boolean_15.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/comp_16.v" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/verilog/sixteen_bit_multiplier_17.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/constraint/alchitry.xdc" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/constraint/custom.xdc" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/constraint/au.xdc" "C:/Users/cajhm/OneDrive\ -\ Singapore\ University\ of\ Technology\ and\ Design/Y2T4/comp\ struct\ 50.002/alusubmission/manual/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
