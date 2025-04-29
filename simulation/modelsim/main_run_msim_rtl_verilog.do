transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/test/Test/Quartus_projects/single_port_ram {D:/test/Test/Quartus_projects/single_port_ram/main.v}
vlog -vlog01compat -work work +incdir+D:/test/Test/Quartus_projects/single_port_ram/src {D:/test/Test/Quartus_projects/single_port_ram/src/single_port_ram_no_change_mode.v}
vlog -vlog01compat -work work +incdir+D:/test/Test/Quartus_projects/single_port_ram/src {D:/test/Test/Quartus_projects/single_port_ram/src/single_port_ram_read_first_mode.v}
vlog -vlog01compat -work work +incdir+D:/test/Test/Quartus_projects/single_port_ram/src {D:/test/Test/Quartus_projects/single_port_ram/src/single_port_ram_write_first_mode.v}

