onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /main_tb/clk
add wave -noupdate /main_tb/we
add wave -noupdate -radix hexadecimal -radixshowbase 0 /main_tb/addr
add wave -noupdate -radix hexadecimal -radixshowbase 0 /main_tb/din
add wave -noupdate -radix hexadecimal -radixshowbase 0 /main_tb/dout_rf
add wave -noupdate -radix hexadecimal -radixshowbase 0 /main_tb/dout_wf
add wave -noupdate -radix hexadecimal -radixshowbase 0 /main_tb/dout_nch
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {84 ns}
