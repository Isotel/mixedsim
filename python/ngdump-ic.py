# Extract Initial Conditions from ngspice raw file
# 18/5/2019, uros@isotel.eu
# 
# Purpose of this utility is to freeze the ngspice states (namely voltages) 
# to be able to restore simulation from a specific point. The conditions to 
# be frozen are read from a raw file and converted to an include ready file, 
# to be directly included in the test bench.

from __future__ import print_function
import sys
import re
import ngspice_read

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

search = ''
if len(sys.argv)>=2:
    filename = sys.argv[1]
    if len(sys.argv)==3:
        search = sys.argv[2]
else:
    print(sys.argv[0], 'filename.raw [regex pattern]\n(c) Copyright by Uros Platise, http://isotel.eu/mixedsim')
    exit(0)
    
plot = ngspice_read.ngspice_read(filename).get_plots()[0]

print('* IC conditions extracted from the %s at end time: %f s, by http://isotel.eu/mixedsim' % (filename, plot.get_scalevector().get_data()[-1]) )

ignored_nets = []

for vec in plot.list_datavectors():
    if re.match(search, vec):        
        if '+' not in vec and '-' not in vec:
            if 'I(' in vec or 'V(' in vec:  # LTspice format
                print('.ic %s=%f' % (vec, plot.get_datavector(vec).get_data()[-1]))
            elif 'i(' not in vec:           # ngspice format, does not support currents yet
                print('.ic v(%s)=%f' % (vec, plot.get_datavector(vec).get_data()[-1]))
            else:
                ignored_nets.append(vec)
        else:
            ignored_nets.append(vec)

if len(ignored_nets):
    eprint('Warning: the following nodes were excluded:')
    for n in ignored_nets:
        eprint('\t', n)
