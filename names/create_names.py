#!/usr/bin/env python
import sys
import os

if len(sys.argv) < 3 or len(sys.argv) > 4:
	print("create_names.py <output> <default names> <optional custom names>")
	sys.exit()

output_asm = sys.argv[1]
default_txt = sys.argv[2]
custom_txt = ""
if len(sys.argv) > 3:
	custom_txt = sys.argv[3]

f_default = open(os.path.join(os.path.dirname(os.path.realpath(__file__)), default_txt), "r")
default_lines = f_default.readlines()
f_default.close()

custom_lines = []
if custom_txt != "":
   custom_filepath = os.path.join(os.path.dirname(os.path.realpath(__file__)), custom_txt)
   if os.path.isfile(custom_filepath):
      f_custom = open(custom_filepath, "r")
      custom_lines = f_custom.readlines()
      f_custom.close()

names = {}

for line in default_lines:
   parts = line.split('=')
   if len(parts) == 2:
      room_id = parts[0].strip()
      if len(room_id) == 4:
         names[room_id] = parts[1].strip()

for line in custom_lines:
   parts = line.split('=')
   if len(parts) == 2:
      room_id = parts[0].strip()
      if room_id in names:
         names[room_id] = parts[1].strip()

f_output = open(os.path.join(os.path.dirname(os.path.realpath(__file__)), output_asm), "w")
f_output.write("org $E78000\n")
f_output.write("print pc, \" roomnames start\"\n")
f_output.write("RoomNameTextTable:\n\n")

first_room = True
for room_id in sorted(names):
   if first_room:
      first_room = False
   else:
      f_output.write("warnpc $E7" + room_id + "\n\n")
   f_output.write("org $E7" + room_id + "\n")
   f_output.write("db $28, \"" + names[room_id] + "\", $FF\n")

f_output.write("\nprint pc, \" roomnames end\"\n\n")
f_output.close()

