* An Ideal 12-bit A/D Converter with Synced Output
* (c) 2018 Uros Platise <uros@isotel.eu>

* Single Cell A/D conversion, which takes as input signal and ref voltage
.subckt ad1bit in ref comp out ref_out vcc
B1 ref_out 0 V = v(ref)/2
B2 comp    0 V = (v(in) > v(ref_out)) ? v(vcc) : 0
B3 out     0 V = (v(in) > v(ref_out)) ? v(in)-v(ref_out) : v(in)
.ends

* Ideal 12-bit A/D converter
.subckt ad12ideal in ref vcc ad11 ad10 ad9 ad8 ad7 ad6 ad5 ad4 ad3 ad2 ad1 ad0
Xad11 in   ref   ad11 in11 ref11 vcc ad1bit
Xad10 in11 ref11 ad10 in10 ref10 vcc ad1bit
Xad9  in10 ref10 ad9  in9  ref9  vcc ad1bit
Xad8  in9  ref9  ad8  in8  ref8  vcc ad1bit
Xad7  in8  ref8  ad7  in7  ref7  vcc ad1bit
Xad6  in7  ref7  ad6  in6  ref6  vcc ad1bit
Xad5  in6  ref6  ad5  in5  ref5  vcc ad1bit
Xad4  in5  ref5  ad4  in4  ref4  vcc ad1bit
Xad3  in4  ref4  ad3  in3  ref3  vcc ad1bit
Xad2  in3  ref3  ad2  in2  ref2  vcc ad1bit
Xad1  in2  ref2  ad1  in1  ref1  vcc ad1bit
Xad0  in1  ref1  ad0  in0  ref0  vcc ad1bit
.ends

* Digital A/D
.subckt ad12 in ref vcc dclk d11 d10 d9 d8 d7 d6 d5 d4 d3 d2 d1 d0
.model adc_buff adc_bridge(in_low = 1 in_high = 1)
.model flop1 d_dff

Xad in ref vcc ad11 ad10 ad9 ad8 ad7 ad6 ad5 ad4 ad3 ad2 ad1 ad0 ad12ideal
Abridge [ad11 ad10 ad9 ad8 ad7 ad6 ad5 ad4 ad3 ad2 ad1 ad0] [do11 do10 do9 do8 do7 do6 do5 do4 do3 do2 do1 do0] adc_buff
Aff11 do11 dclk null null d11 null flop1
Aff10 do10 dclk null null d10 null flop1
Aff9  do9  dclk null null d9  null flop1
Aff8  do8  dclk null null d8  null flop1
Aff7  do7  dclk null null d7  null flop1
Aff6  do6  dclk null null d6  null flop1
Aff5  do5  dclk null null d5  null flop1
Aff4  do4  dclk null null d4  null flop1
Aff3  do3  dclk null null d3  null flop1
Aff2  do2  dclk null null d2  null flop1
Aff1  do1  dclk null null d1  null flop1
Aff0  do0  dclk null null d0  null flop1
.ends
