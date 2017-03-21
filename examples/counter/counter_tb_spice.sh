#!/bin/bash

set -ex

yosys counter_spice.ys
ngspice counter_tb_spice.cir

