transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/som_1a.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/adder_4_bits.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/alu.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/modulo.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/mais.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/menos.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/maiorque.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/mima.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/produto.vhd}
vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/subtrai.vhd}

vcom -93 -work work {C:/Users/Mateus Batista/Desktop/FPGA006_WR_Files/testbench_ula.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench_ula

add wave *
view structure
view signals
run -all
