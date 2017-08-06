* PRS Sine Generator Sheet 1  by Uros Platise

* The prssine ngspice netlist was auto-generated on 06/08/2017 17:04
* with ngspice.ulp V1.3 for Eagle 6.5.0 - 7.7 by Uros Platise, http://www.isotel.eu/mixedsim
*
* Pin Description:
*	LPF1.	     lpfin	
*	LPF2.	    lpfout	
*
.subckt lpf lpfin lpfout lval=10mH zeta=1.05 fc=1e3

* List of Ignored and Modified Components:
*
* - C1: SPICE_VALUE = {cval(fc,lval)}
* - L1: SPICE_VALUE = {lval}
* - R1: SPICE_VALUE = {2*zeta/sqrt(cval(fc,lval)/lval)}

* Spice Initialization Directives from Sheet
.func cval(fc,lval) {1/(lval*(6.28*fc)^2)}
C1 lpfout 0 {cval(fc,lval)}
L1 1 lpfout {lval}
R1 lpfin 1 {2*zeta/sqrt(cval(fc,lval)/lval)}

* Spice Control Directives from Sheet
.ends
