# Mixed Signal Model Library for ngSpice

It is the first draft of the idea of building a common mixed signal
simulation library of verified to work models for ngspice, with either
examples or test cases.

To use the library in your projects simply set the environment variable:

```
  export NGSPICE_INPUT_DIR=<pointing to this directory>
```
  
Or append this path (as relative) to the .spiceinit as in the motorforce 
example:

```
  set sourcepath = ( . models ../../../models )
```

Note that NGSPICE_INPUT_DIR is appended to your's or default's sourcepath.
To add multiple directory to the NGSPICE_INPUT_DIR list it within double 
quotes and separate with spaces, like this:

```
  export NGSPICE_INPUT_DIR=".. mylib ../someotherlib"
```
