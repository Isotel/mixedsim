* Extremely Simplified Inaccurate DC Motor Model for Demo Purposes of Firmware Development only
* Uros Platise <uros@isotel.eu>

.subckt dcmotor A B W K=418 Tau=0.15 ku=0.229 R=10

.model SimpleMotor s_xfer(num_coeff=[{K}] den_coeff=[{Tau} 1] int_ic=[0])
Amotor %vd(emfV B) W SimpleMotor

B2 A emfV V=V(W)*{ku}
R1 emfV B {R}

.ends
