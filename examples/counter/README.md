
# Verilog, Spice and ngSpice Counter Demo

In this directory contains an example for generating a spice output using two
different spice modes, normal analog transient simulation and event-driven
digital simulation as supported by ngspice's xspice sub-module. One may observe 
tremendous increase in speed with the ngspice event-driven digital simulation.

Run as:

* counter_tb_spice.sh, to start analog simulation or
* counter_tb_ngspice.sh for mixed-signal digital simulation.

The later case also includes pure verilog simulation using the iverilog
and gtkwave for comparison.

This demo is ported from the yosys/examples/cmos to fit the mixedsim structure.
Refer to the http://www.clifford.at/yosys for original example.
