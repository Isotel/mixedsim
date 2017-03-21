# Generate 8-bit space separate values with sine stimulus for use with 
# ngspice digital source as:
#
#   .model sine_stimulus d_source(input_file = "sine.ssv")
#   Asine [s7 s6 s5 s4 s3 s2 s1 s0] sine_stimulus

import numpy as np

def digi(value):
    if value > 0:
        return "1s"
    else:
        return "0s"

print("0 Uu Uu Uu Uu Uu Uu Uu Uu")
    
for i in range(0,256*50 - 1):
    val = np.sin(i/255*2*np.pi)
    val8 = np.uint8(128+val*128)
    print((i+1)*4e-6, digi(val8 & 128), digi(val8 & 64), digi(val8 & 32), digi(val8 & 16), digi(val8 & 8), digi(val8 & 4), digi(val8 & 2), digi(val8 & 1))
