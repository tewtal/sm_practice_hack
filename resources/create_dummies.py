#!/usr/bin/env python
import sys
import os

if len(sys.argv) != 3:
   print("create_dummies.py <00_file> <ff_file>")
   sys.exit()
else:
   zero_name = sys.argv[1]
   ff_name = sys.argv[2]

fo_z = open(os.path.join(os.path.dirname(os.path.realpath(__file__)), zero_name), "wb")
fo_f = open(os.path.join(os.path.dirname(os.path.realpath(__file__)), ff_name), "wb")

fo_z.write(bytearray([0x00] * 1024 * 1024 * 4))
fo_f.write(bytearray([0xff] * 1024 * 1024 * 4))

fo_z.close()
fo_f.close()
