#!/usr/bin/python
#
#     Copyright (C) 2007,2011 Werner Hoch, 
#                   2019 Uros Platise
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Changes:
# - Original code http://www.h-renrew.de/h/python_spice/spicedata.html
# - Ported to python3
# - Added list_datavectors() to return node names
# - Added search by name to get_datavector(self,n) to be able to retrieve
#   by node name
# - Added support for LTspice ASCII format and Offset keyword

from __future__ import print_function
import numpy
import string
import sys

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


class spice_vector(object):
    """
    Contains a single spice vector with it's data and it's attributes.
    The vector is numpy.array, either real or complex.
    The attributes are:
      * name: vector name
      * type: frequency, voltage or current
    """
    
    def __init__(self, vector=numpy.array([]), **kwargs):
        self.data = vector
        self.name = ""
        self.type = ""
        self.set_attributes(**kwargs)
        
    def set_attributes(self, **kwargs):
        """
        Set the attribues of the vector "name" and "type"
        """
        for k,v in kwargs.items():
            if hasattr(self,k):
                if type(getattr(self,k)) == type(v):
                    setattr(self,k,v)
                else:
                    eprint("Warning: attribute has wrong type: {} ignored!".format(type(v)))
            else:
                eprint("Warning: unknown attribute" + k + " Ignored!")
                    
    def set_data(self, data_array):
        """
        set a new numpy.array as data vector
        """
        self.data = data_array

    def get_data(self):
        """
        returns the data vector as numpy.array
        """
        return self.data
    

class spice_plot(object):
    """
    This class holds a single spice plot
    It contains one scale vector and a list of several data vectors.
    The plot may have some attributes like "title", "date", ...
    """

    def __init__(self, scale=None ,data=None, **kwargs):
        """
        Initialize a new spice plot.
        Scale may be an spice_vector and data may be a list of spice_vectors.
        The attributes are provided by **kwargs.
        """
        self.title = "title undefined"
        self.date = "date undefined"
        self.plotname = "plotname undefined"
        self.plottype = "plottype undefined"
        self.dimensions = []

        ## a single scale vector
        if scale == None:
            scale=numpy.array([])
        else:
            self.scale_vector = scale

        ## init the list of spice_vector
        if data == None:
            self.data_vectors = []
        else:
            self.data_vectors = data     

        self.set_attributes(**kwargs)

    def set_attributes(self, **kwargs):
        """
        Set the attributes of a plot. 
        """
        for k,v in kwargs.items():
            if hasattr(self, k):
                if type(getattr(self,k)) == type(v):
                    setattr(self,k,v)
                else:
                    eprint("Warning: attribute has wrong type: " \
                          + type(v) + " ignored!")
            else:
                eprint("Warning: unknown attribute \"" + k + "\". Ignored!")

    def set_scalevector(self, spice_vector):
        """
        Set a spice_vector as the scale_vektor.
        """
        self.scale_vector = spice_vector

    def set_datavectors(self, spice_vector_list):
        """
        Set a list of spice_vector as data of spice_plot
        """
        self.data_vectors = spice_vector_list

    def append_datavector(self, spice_vector):
        """
        Append a single spice_vector to the data section
        """
        self.data_vectors.append(spice_vector)

    def get_scalevector(self):
        """
        returns the scale vector as a spice_vector
        """
        return self.scale_vector

    def list_datavectors(self):
        """
        returns list of nodes (vectors)
        """
        return [v.name for v in self.get_datavectors()]

    def get_datavector(self,n):
        """
        returns the n-th data vector or by name if n is string as a spice_vector
        """
        if type(n)==str:
            for v in self.data_vectors:
                if n == v.name:
                    return v
            return None

        return self.data_vectors[n]

    def get_datavectors(self):
        """
        return a list of all spice_vectors of the plot
        """
        return self.data_vectors        


class ngspice_read(object):
    """
    This class is reads a spice data file and returns a list of spice_plot
    objects.

    The file syntax is mostly taken from the function raw_write() from
    ngspice-rework-17 file ./src/frontend/rawfile.c
    """

    def __init__(self, filename):
        self.plots = []
        self.set_default_values()
        error = self.readfile(filename)
        if error:
            ## FIXME create an assertion
            eprint("error in reading the file")

    def set_default_values(self):
        ## Set the default values for some options
        self.current_plot = spice_plot()
        self.nvars = 0
        self.npoints = 0
        self.numdims = 0
        self.padded = True
        self.real = True
        self.vectors = []

    def readfile(self,filename):
        f = open(filename, "rb")
        t_offset = 0.0
        #with open(filename, "rb") as infile:
        #ab = f.read()
        #inf = ab.decode('ISO-8859-1')
        while (1):
            line = f.readline().decode('ISO-8859-1')
            if line == "":   ## EOF
                return

            tok = [t.strip() for t in line.split(":",1)]
            keyword = tok[0].lower()  ## don't care the case of the keyword entry

            if keyword == "title":
                self.current_plot.set_attributes(title=tok[1])
            elif keyword == "date":
                self.current_plot.set_attributes(date=tok[1])
            elif keyword == "plotname":  ## FIXME: incomplete??
                self.current_plot.set_attributes(plotname=tok[1])
            elif keyword == "flags":
                ftok= [t.strip().lower() for t in tok[1].split()]
                for flag in ftok:
                    if flag == "real":
                        self.real = True
                    elif flag == "complex":
                        self.real = False
                    elif flag == "unpadded":
                        self.padded = False
                    elif flag == "padded":
                        self.padded = True
                    else:
                        eprint('Warning: unknown flag: "' + flag + '"')
            elif keyword == "no. variables":
                self.nvars = int(tok[1])
            elif keyword == "no. points":
                self.npoints = int(tok[1])
            elif keyword == "dimensions":
                if self.npoints == 0:
                    eprint('Error: misplaced "Dimensions:" lineprint')
                    continue
                eprint('Warning: "Dimensions" not supported yet')
                # FIXME: How can I create such simulation files?
                # numdims = string.atoi(tok[1])
            elif keyword == "offset":
                t_offset = float(tok[1])
                eprint('Recordings start at', t_offset, 's')
            elif keyword == "command":
                eprint('Warning: "command" option not implemented yet')
                eprint('\t' + line)
                # FIXME: what is this command good for
            elif keyword == "option":
                eprint('Warning: "command" option not implemented yet')
                eprint('\t' + line)
                # FIXME: what is this command good for
            elif keyword == "variables":
                for i in range(self.nvars):
                    line = f.readline().strip().split()
                    if len(line) >= 3:
                        number = int(line[0])
                        curr_vector = spice_vector(name=line[1].decode("utf-8"),
                                                   type=line[2].decode("utf-8"))
                        self.vectors.append(curr_vector)
                        if len(line) > 3:
                            # eprint("Attributes: ", line[3:])
                            dummy =1
                            ## min=, max, color, grid, plot, dim
                            ## I think only dim is useful and neccesary
                    else:
                        eprint("list of variables is to short")

            elif keyword in ["values","binary"]:
                # read the data
                if self.real:
                    if keyword == "values":
                        i = 0
                        a = numpy.zeros(self.npoints*self.nvars, dtype="float64")
                        while (i < self.npoints*self.nvars):
                            t = str( f.readline().decode("utf-8") ).split('\t')
                            if len(t) < 2:
                                continue
                            else:
                                a[i] = float(t[-1])
                            i += 1
                    else: ## keyword = "binary"
                        a = numpy.frombuffer(f.read(self.nvars*self.npoints*8),
                                             dtype="float64")
                                             
                    aa = a.reshape(self.npoints,self.nvars)
                    self.vectors[0].set_data(aa[:,0] + t_offset)
                    self.current_plot.set_scalevector(self.vectors[0])
                    for n in range(1,self.nvars):
                        self.vectors[n].set_data(aa[:,n])
                        self.current_plot.append_datavector(self.vectors[n])
                        
                else: # complex data
                    if keyword == "values":
                        i = 0
                        a = numpy.zeros(self.npoints*self.nvars*2, dtype="float64")
                        while (i < self.npoints*self.nvars*2):
                            t = str( f.readline().decode("utf-8") ).split('\t')
                            if len(t) < 2:  ## empty lines
                                continue
                            else:
                                t = t[-1].split(",")
                                a[i] = float(t[0])
                                i += 1
                                a[i] = float(t[1])
                                i += 1
                    else: ## keyword = "binary"
                        a = numpy.frombuffer(f.read(self.nvars*self.npoints*8*2),
                                             dtype="float64")
                    aa = a.reshape(self.npoints, self.nvars*2)
                    self.vectors[0].set_data(aa[:,0]) ## only the real part!
                    self.current_plot.set_scalevector(self.vectors[0])
                    for n in range(1,self.nvars):
                        self.vectors[n].set_data(numpy.array(aa[:,2*n]+
                                                             1j*aa[:,2*n+1]))
                        self.current_plot.append_datavector(self.vectors[n])
                        
                # create new plot after the data
                self.plots.append(self.current_plot)
                self.set_default_values()

            elif str.strip(keyword) == "": ## ignore empty lines
                continue

            else:
                eprint('Unsupported line in the rawfile:\n\t"'  \
                      +line + '"\n')
                #return 0

    def get_plots(self):
        return self.plots


if __name__ == "__main__":
    ## plot out some informations about the ngspice files given by commandline
    for f in sys.argv[1:]:
        print('The file: "' + f + '" contains the following plots:' )
        for i,p in enumerate(ngspice_read(f).get_plots()):
            print('  Plot', i, 'with the attributes')
            print('    Title: ' , p.title)
            print('    Date: ', p.date)
            print('    Plotname: ', p.plotname)
            print('    Plottype: ' , p.plottype)

            s = p.get_scalevector()
            print('    The Scale vector has the following properties:')
            print('      Name: ', s.name)
            print('      Type: ', s.type)
            v = s.get_data()
            print('      Vector-Length: ', len(v))
            print('      Vector-Type: ', v.dtype)

            for j,d in enumerate(p.get_datavectors()):
                print('    Data vector', j, 'has the following properties:')
                print('      Name: ', d.name)
                print('      Type: ', d.type)
                v = d.get_data()
                print('      Vector-Length: ', len(v))
                print('      Vector-Type: ', v.dtype)
        
