* PSoC5 Simplified Chip design to Emulate HW for Development of Firmware in C
* (c) 2018 Uros Platise <uros@isotel.eu>

.include "yosys/prim_cells_ngspice.mod"
.include "pwm.mod"
.include "ad12.mod"

.subckt motorfw1 pwm isenp isenm vddio

*----------------------------------------------------------------------
* PSoC Internals
*----------------------------------------------------------------------
Vrst rst 0 DC(0) PULSE(0 5 0.5us 10ns 10ns 2us)
.model adc_buff adc_bridge(in_low = 1 in_high = 1)
Aabridge [rst] [drst] adc_buff

.model ad_clk_m d_osc(cntl_array=[0 1] freq_array=[512e3 512e3])
Aadclk 0 adclk ad_clk_m
.model pwm_clk_m d_osc(cntl_array=[0 1] freq_array=[4.096e6 4.096e6])
Apwmclk 0 pwmclk pwm_clk_m

Vref ref 0 DC( 1.024 ) // AD Internal Voltage Reference

*----------------------------------------------------------------------
* Differential A/D Senses directly on 1R Sense Resistor
* At gain 1. Inside the PSoC5 we could use two inverting PGA to form
* an instrumentational amplifier and so increase the gain to sense
* current on lower valued resistors.
*----------------------------------------------------------------------
Bsense uin 0 V=v(isenp, isenm) * 1
Xad uin ref vddio adclk d11 d10 d9 d8 d7 d6 d5 d4 d3 d2 d1 d0 ad12

*----------------------------------------------------------------------
* Interface to Firmware with optional parameters Kp and Ki
*----------------------------------------------------------------------
.model firmware d_process (process_file="firmware/motorforce_ngut" process_params=["Kp=10", "Ki=2"])
Acontrol [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11] 
+ adclk drst [w0 w1 w2 w3 w4 w5 w6 w7] firmware

*----------------------------------------------------------------------
* Output PWM
*----------------------------------------------------------------------
Xpwm pwmclk drst w0 w1 w2 w3 w4 w5 w6 w7 dpwm PWM

.model dac_buff dac_bridge
Adbridge [dpwm] [pwma] dac_buff
Bpwmo pwm 0 V=v(pwma)*v(vddio)

.ends
