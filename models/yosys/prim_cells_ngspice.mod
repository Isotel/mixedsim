* ngspice digital cells, Uros Platise, http://http://www.clifford.at/yosys

.global d_low d_high

.model digital_pulldown d_pulldown
.model digital_pullup   d_pullup

Ad_pulldown d_low digital_pulldown
Ad_pullup   d_high digital_pullup

.SUBCKT BUF A Y
.model buffer1 d_buffer
Abuf A Y buffer1
.ENDS NOT

.SUBCKT NOT A Y
.model not1 d_inverter
Anot A Y not1
.ENDS NOT

.SUBCKT NAND A B Y
.model nand1 d_nand
Anand [A B] Y nand1
.ENDS NAND

.SUBCKT NOR A B Y
.model nor1 d_nor
Anand [A B] Y nor1
.ENDS NOR

.SUBCKT DLATCH E D Q
.model latch1 d_latch
Alatch D E null null Q nQ latch1
.ENDS DLATCH

.SUBCKT DFF C D Q
.model dff1 d_dff
Adff D C null null Q nQ dff1
.ENDS DFF
