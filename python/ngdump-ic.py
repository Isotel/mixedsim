
# coding: utf-8

# # Extract Initial Conditions from ngspice raw file
# 
# 18/5/2019, uros@isotel.eu
# 
# Purpose of this document is to freeze the ngspice states (namely voltages) to be able to restore simulation from a specific point. The conditions to be frozen are read from a raw file and converted to an include ready file, to be directly included in the test bench.

# In[60]:


import sys
import re
sys.path.append('/home/uros/Repos/Isotel/mixedsim.git/python')
import ngspice_read


# In[84]:


search = ''
if 'ngdump-ic' in sys.argv[0]:
    if len(sys.argv)>=2:
        filename = sys.argv[1]
        if len(sys.argv)==3:
            search = sys.argv[2]
    else:
        print(sys.argv[0], 'filename.raw [regex pattern]\n(c) Copyright by Uros Platise, http://isotel.eu/mixedsim')
        exit(0)
else:
    filename = 'test.raw'


# In[85]:


plot = ngspice_read.ngspice_read(filename).get_plots()[0]


# In[88]:


print('* Voltages extracted from: %s  at end time: %f s by http://isotel.eu/mixedsim' % (filename, plot.get_scalevector().get_data()[-1]) )

for vec in plot.list_datavectors():
    if re.match(search, vec):
        if 'i(' not in vec and '+' not in vec and '-' not in vec:
            print('.ic v(%s)=%f' % (vec, plot.get_datavector(vec).get_data()[-1]))

