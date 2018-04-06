
all: motor_tb.cir motorforce.mod psoc5/pwm.mod firmware/motorforce_ngut

motor_tb.cir: motor_tb.sch
	eagle -C "run ngspice; quit" motor_tb.sch

motorforce.mod: motorforce.sch
	eagle -C "run ngspice; quit" motorforce.sch

psoc5/pwm.mod: psoc5/pwm.ys psoc5/pwm.v
	cd psoc5; yosys pwm.ys

firmware/motorforce_ngut: firmware/motorforce_ngut.c firmware/motorforce_controller.c
	cd firmware; gcc -g -Wall -o motorforce_ngut motorforce_ngut.c motorforce_controller.c -I../../../../include

tran: all
	ngspice motor_tb.cir
