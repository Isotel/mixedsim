* USB DC Motor Controller by Uros Platise

* The motorforce ngspice netlist was auto-generated on 02/04/2018 13:06
* with ngspice.ulp V1.3 for Eagle 6.5.0 - 7.7 by Uros Platise, http://www.isotel.eu/mixedsim
*
* Pin Description:
*	PIN1.	   motor_s	
*	PIN2.	   motor_d	
*	PIN3.	       vcc	
*	PIN4.	       gnd	
*
.subckt motorforce motor_s motor_d vcc gnd

* List of Ignored and Modified Components:
*
* - IC1: SPICE_VALUE = motorfw1
* - IC2: SPICE_IGNORE
* - JP3: SPICE_IGNORE
* - LED1: SPICE_IGNORE
* - R7: SPICE_IGNORE
* - R8: SPICE_IGNORE
* - R9: SPICE_IGNORE
* - R10: SPICE_IGNORE
* - T1: SPICE_VALUE = 2n7002k

C1 isenp isenm 1nF
C2 pe gnd 10nF
C3 vddio gnd 100nF
C4 vddio gnd 100nF
C5 vddio gnd 100nF
C6 vddio gnd 100nF
C7 vdda gnd 100nF
C8 vdda gnd 1uF
C9 vdda gnd 100nF
C10 vdda gnd 1uF
C11 vddd gnd 100nF
C12 vddd gnd 1uF
C13 vddd gnd 100nF
C14 vddd gnd 1uF
C15 vccd gnd 100nF
C16 vccd gnd 1uF
C17 vccd gnd 100nF
C18 vccd gnd 1uF

.model D1N5817 D(Is=2.835u Rs=47.12m Ikf=.3227 N=1 Xti=0 Eg=1.11 Cjo=472.4p M=.6215 Vj=.75 Fc=.5)
D1 motor_d vcc D1N5817

.include psoc5/motorfw.mod
XIC1 pwm isenp isenm vddio motorfw1
R1 motor_s vcc 1  $ 1%
R2 isenp vcc 10k
R3 isenm motor_s 10k
R4 pwm gate 120 
R5 gate gnd 1Meg
R6 pe gnd 100k
R11 vddio vcc 1 
R12 vdda vcc 1 
R13 vddd vcc 1 
R14 vccd vcc 1 

.include 2n7002k.mod
XT1 motor_d gate gnd 2n7002k

.ends
