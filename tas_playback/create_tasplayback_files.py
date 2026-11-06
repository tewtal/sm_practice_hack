#!/usr/bin/env python
import io
import os
import sys

rng_out_list    = ["E1","E3","E7","E9","EC","EE","F2","F4","F7","F9","FC","FE","F8","FA","FF","E2","E8","EA","EF","F3"]
time_out_list   = ["E0",     "E6",     "EB",     "F1",     "F6",     "FB",     "F5",     "FD",     "E5",     "ED"]
verify_out_list = ["E2","E5","E8","EA","ED","EF","F3","F5","F8","FA","FD","FF","E2","E5","E8","EA","ED","EF","F3","F5"]
overall_out_set = set(rng_out_list + time_out_list + verify_out_list)

fanfare_names = {
    1: "Fanfare Energy Tank",
    2: "Fanfare Missiles",
    3: "Fanfare Super Missiles",
    4: "Fanfare Power Bombs",
    5: "Fanfare Grapple Beam",
    6: "Fanfare X-Ray",
    7: "Fanfare Varia Suit",
    8: "Fanfare Springball",
    9: "Fanfare Morph Ball",
    10: "Fanfare Screw Attack",
    11: "Fanfare Hi-Jump Boots",
    12: "Fanfare Space Jump",
    13: "Fanfare Speed Booster",
    14: "Fanfare Charge Beam",
    15: "Fanfare Ice Beam",
    16: "Fanfare Wave Beam",
    17: "Fanfare Spazer",
    18: "Fanfare Plasma Beam",
    19: "Fanfare Bombs",
    25: "Fanfare Reserve Tank",
    26: "Fanfare Gravity Suit"
}

f_default = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "../names/default_names.txt"), "r")
default_lines = f_default.readlines()
f_default.close()
room_names = {}
for line in default_lines:
   parts = line.split('=')
   if len(parts) == 2:
      room_id = parts[0].strip()
      if len(room_id) == 4:
         room_names[room_id] = parts[1].strip()

f_rng_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_rng.asm"), "r")
rng_lines = f_rng_file.readlines()
f_rng_file.close()
f_time_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_time.asm"), "r")
time_lines = f_time_file.readlines()
f_time_file.close()
f_verify_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_verify.asm"), "r")
verify_lines = f_verify_file.readlines()
f_verify_file.close()

file_out_index = 0
file_out_bank = rng_out_list[file_out_index]
overall_out_set.remove(file_out_bank)
file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
file_out.write(f"\n%startfree({file_out_bank})\n")
line_count = 0
for line in rng_lines:
   if line.startswith("    dw "):
      file_out.write(line)
      line_count += 1
      if line_count == 16384:
         file_out.write(f"%endfree({file_out_bank})\n\n")
         file_out.close()
         file_out_index += 1
         file_out_bank = rng_out_list[file_out_index]
         overall_out_set.remove(file_out_bank)
         file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
         file_out.write(f"\n%startfree({file_out_bank})\n")
         line_count = 0
   elif len(line) > 1:
      file_out.write(line)
file_out.write(f"%endfree({file_out_bank})\n\n")
if file_out_bank == "FF":
   file_out.write("org $FFFFFF : db $FF\n\n")
file_out.close()

file_out_index = 0
file_out_bank = time_out_list[file_out_index]
overall_out_set.remove(file_out_bank)
file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
file_out.write(f"\n%startfree({file_out_bank})\n")
line_count = 0
for line in time_lines:
   if line.startswith("    db "):
      file_out.write(line)
      line_count += 1
      if line_count == 32768:
         file_out.write(f"%endfree({file_out_bank})\n\n")
         file_out.close()
         file_out_index += 1
         file_out_bank = time_out_list[file_out_index]
         overall_out_set.remove(file_out_bank)
         file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
         file_out.write(f"\n%startfree({file_out_bank})\n")
         line_count = 0
   elif len(line) > 1:
      file_out.write(line)
file_out.write(f"%endfree({file_out_bank})\n\n")
file_out.close()

verify_out_set = set()
file_open = False
file_out_index = 0
file_out_bank = verify_out_list[file_out_index]
line_count = 0
for line in verify_lines:
   if line_count == 0 and file_out_bank in overall_out_set:
      overall_out_set.remove(file_out_bank)
      verify_out_set.add(file_out_bank)
      file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
      file_out.write(f"\n%startfree({file_out_bank})\n")
      file_open = True
   if line.startswith("    dw "):
      if file_open:
         file_out.write(line)
      elif line_count == 0 and file_out_bank in verify_out_set:
         file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + file_out_bank + ".asm"), "w", newline='\n')
         file_out.write(f"\n%startfree({file_out_bank})\n")
         file_open = True
         file_out.write(line)
      line_count += 1
      if line_count == 16384:
         if file_open:
            file_out.write(f"%endfree({file_out_bank})\n\n")
            file_out.close()
            file_open = False
         file_out_index += 1
         file_out_bank = verify_out_list[file_out_index]
         line_count = 0
   elif len(line) > 1:
      if file_open:
         file_out.write(line)
if file_open:
   file_out.write(f"%endfree({file_out_bank})\n\n")
   if file_out_bank == "FF":
      file_out.write("org $FFFFFF : db $FF\n\n")
   file_out.close()

for bank in overall_out_set:
   file_out = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "tasplayback_" + bank + ".asm"), "w", newline='\n')
   file_out.write(f"\n%startfree({bank})\n")
   file_out.write(f"%endfree({bank})\n\n")
   if bank == "FF":
      file_out.write("org $FFFFFF : db $FF\n\n")
   file_out.close()

