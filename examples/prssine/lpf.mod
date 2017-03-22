* Simple 2nd Order RLC Low-Pass Filter with settable corner frequency, zeta and inductor value

.func cval(fc,lval) {1/(lval*(6.28*fc)^2)}

.subckt lpf in out fc=10e3 zeta=1 lval=100uH

R in lin  {2*zeta/sqrt(cval(fc,lval)/lval)}
L lin out {lval}
C out 0   {cval(fc,lval)}

.ends
