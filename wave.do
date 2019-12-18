onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_latch/df_int/clk
add wave -noupdate /tb_latch/df_int/rst
add wave -noupdate /tb_latch/df_int/input1
add wave -noupdate /tb_latch/df_int/input2
add wave -noupdate /tb_latch/df_int/lad1
add wave -noupdate /tb_latch/df_int/lad2
add wave -noupdate /tb_latch/df_int/lad3
add wave -noupdate /tb_latch/df_int/lad4
add wave -noupdate /tb_latch/df_int/output
add wave -noupdate /tb_latch/df_int/input1lad1
add wave -noupdate /tb_latch/df_int/input1lad2
add wave -noupdate /tb_latch/df_int/input1lad3
add wave -noupdate /tb_latch/df_int/input1lad41
add wave -noupdate /tb_latch/df_int/input1lad42
add wave -noupdate /tb_latch/df_int/input1lad43
add wave -noupdate /tb_latch/df_int/input2reg1
add wave -noupdate /tb_latch/df_int/input2reg2
add wave -noupdate /tb_latch/df_int/input2reg3
add wave -noupdate /tb_latch/df_int/mul1
add wave -noupdate /tb_latch/df_int/mul2
add wave -noupdate /tb_latch/df_int/mul3
add wave -noupdate /tb_latch/df_int/add1
add wave -noupdate /tb_latch/df_int/add2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {50 ns} {1050 ns}
