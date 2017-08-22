# coding: utf-8
#
# Reading a Space Separated Values from ngspice to be loaded into a blender
# (Code to be run in Blender only).
# Uros Platise <uros@isotel.eu>
#
# Script extracts samples at 50 fps, other frames are skipped and not imported.
#
# You may need to invoke in python console: sys.path.append('.')
# to be able to load the module.
# 
# Robot trajectory from ngspice was obtained using:
# 
# - tran 4ms 10s
# - wrdata robot.ssv x y p
#
# References:
#  - https://docs.blender.org/api/blender_python_api_2_77_1/ for general blender API doc
#  - http://merwanachibet.net/blog/blender-long-running-python-scripts/ example of modal operator

import bpy
import re

def loadssv(filename):

    numeric_const_pattern = r"""
    [-+]? # optional sign
    (?:
        (?: \d* \. \d+ ) # .1 .12 .123 etc 9.1 etc 98.1 etc
        |
        (?: \d+ \.? ) # 1. 12. 123. etc 1 12 123 etc
    )
    # followed by optional exponent part if desired
    (?: [Ee] [+-]? \d+ ) ?
    """

    floats = re.compile(numeric_const_pattern, re.VERBOSE)

    with open(filename, 'r', newline='') as ssvfile:
        last_frame = -1;

        for line in ssvfile:
            values = floats.findall( line )
            
            # Let's convert time into 50 fps and make it integer
            frame = int(float(values[0])*50)
            
            # Sample at 50 fps only and skip rest of the frames            
            if frame > last_frame:
                last_frame = frame
                
                bpy.context.scene.frame_set(frame)
                bpy.data.objects["Cube"].location[0]       = float(values[1])
                bpy.data.objects["Cube"].location[1]       = float(values[3])
                bpy.data.objects["Cube"].rotation_euler[2] = float(values[5])
                bpy.data.objects["Cube"].keyframe_insert(data_path="location", index=-1)
                bpy.data.objects["Cube"].keyframe_insert(data_path="rotation_euler", index=-1)
