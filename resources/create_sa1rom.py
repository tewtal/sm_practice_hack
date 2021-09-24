#!/usr/bin/env python
import sys
import os
name = ""
base_name = ""

if sys.argv[1] == "":
	print("create_sa1rom.py <super metroid rom> <output filename>")
	sys.exit()
else:
	sm_name = sys.argv[1]
	output_name = sys.argv[2]
	
print("SA-1:ifying SM ROM...")
	
f_sm = open(os.path.dirname(os.path.realpath(__file__)) + "\\" + sm_name, "rb")
fo = open(os.path.dirname(os.path.realpath(__file__)) + "\\" + output_name, "wb")

data = f_sm.read()
lorom_banks = data[:0x40 * 0x8000]
hirom_banks = data[0x40 * 0x8000:]

fo.write(lorom_banks)

for i in range(0, 0x20, 1):	
    hi_bank = hirom_banks[0x8000 * i: 0x8000 * (i + 1)]
    blank_bank = bytes([0x00] * 0x8000)
    
    fo.write(blank_bank)
    fo.write(hi_bank)
	
f_sm.close()
fo.close()
