#!/usr/bin/env python
import io
import os
import sys

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

frame_number = 0
if len(sys.argv) == 3:
   frame_number = int(sys.argv[2])
elif len(sys.argv) != 2:
   print("extract_sideB_tas_record_from_sram.py <sram_file> <optional_frame_number>")
   sys.exit()
sram_name = sys.argv[1]

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

custom_lines = []
custom_filepath = os.path.join(os.path.dirname(os.path.realpath(__file__)), "../names/custom_names.txt")
if os.path.isfile(custom_filepath):
   f_custom = io.open(custom_filepath, "r")
   custom_lines = f_custom.readlines()
   f_custom.close()
for line in custom_lines:
   parts = line.split('=')
   if len(parts) == 2:
      room_id = parts[0].strip()
      if room_id in room_names:
         room_names[room_id] = parts[1].strip()

sram_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), sram_name), "rb")
sram_file.seek(131072)
other_side_ctrl_data = sram_file.read(32768)
sram_file.seek(196608)
ctrl_data = sram_file.read(32768)
rng_data = sram_file.read(32768)
sram_file.close()

ctrl_line_number = 0
previous_full_time = 0
previous_input = "............"
verify_value = 0
for i in range(32766, -2, -2):
   if 0x0F != (other_side_ctrl_data[i + 1] & 0x0F):
      verify_value = other_side_ctrl_data[i + 1]
      verify_value <<= 8
      verify_value |= other_side_ctrl_data[i] & 0xF0
      if 0x6010 == verify_value:
         previous_input = "....s......r"
      elif 0x6020 == verify_value:
         previous_input = "....s.....l."
      else:
         previous_input = 'U' if other_side_ctrl_data[i + 1] & 0x08 else '.'
         previous_input += 'D' if other_side_ctrl_data[i + 1] & 0x04 else '.'
         previous_input += 'L' if other_side_ctrl_data[i + 1] & 0x02 else '.'
         previous_input += 'R' if other_side_ctrl_data[i + 1] & 0x01 else '.'
         previous_input += 's' if other_side_ctrl_data[i + 1] & 0x20 else '.'
         previous_input += 'S' if other_side_ctrl_data[i + 1] & 0x10 else '.'
         previous_input += 'Y' if other_side_ctrl_data[i + 1] & 0x40 else '.'
         previous_input += 'B' if other_side_ctrl_data[i + 1] & 0x80 else '.'
         previous_input += 'X' if other_side_ctrl_data[i] & 0x40 else '.'
         previous_input += 'A' if other_side_ctrl_data[i] & 0x80 else '.'
         previous_input += 'l' if other_side_ctrl_data[i] & 0x20 else '.'
         previous_input += 'r' if other_side_ctrl_data[i] & 0x10 else '.'
      break
for i in range(32766, -2, -2):
   full_time = other_side_ctrl_data[i]
   if 0xFF == other_side_ctrl_data[i + 1]:
      previous_full_time = full_time - 1
      break
   elif 0x0F == other_side_ctrl_data[i + 1]:
      previous_full_time = full_time
      break

all_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "sideB_" + sram_name + "_all.txt"), "w", newline='\n')
ctrl_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "sideB_" + sram_name + "_ctrl.txt"), "w", newline='\n')
rng_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "sideB_" + sram_name + "_rng.txt"), "w", newline='\n')
time_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "sideB_" + sram_name + "_time.txt"), "w", newline='\n')
verify_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), "sideB_" + sram_name + "_verify.txt"), "w", newline='\n')
for i in range(0, 32768, 2):
   full_time = ctrl_data[i]
   if 0xFF == ctrl_data[i + 1]:
      ctrl_file.write(f"|..|{previous_input}|\n")
      ctrl_line_number += 1
      if 0x6010 == verify_value or 0x6020 == verify_value:
         all_file.write(f"{frame_number:06} ---- |..|{previous_input}|{full_time:02X} ctrl line {ctrl_line_number:5} [removed Y]\n")
      else:
         all_file.write(f"{frame_number:06} ---- |..|{previous_input}|{full_time:02X} ctrl line {ctrl_line_number:5}\n")
      previous_full_time = full_time - 1
   elif 0x0F == ctrl_data[i + 1]:
      rng_value = rng_data[i + 1]
      rng_value <<= 8
      rng_value |= rng_data[i]
      if 0x6010 == verify_value:
         verify_file.write(f"    dw $2010 ; |..|{previous_input}| [removed Y]\n")
      elif 0x6020 == verify_value:
         verify_file.write(f"    dw $2020 ; |..|{previous_input}| [removed Y]\n")
      else:
         verify_file.write(f"    dw ${verify_value:04X} ; |..|{previous_input}|\n")
      time_file.write(f"    db ${full_time:02X}\n")
      rng_file.write(f"    dw ${rng_value:04X}\n")
      ctrl_file.write(f"|..|{previous_input}|\n")
      ctrl_line_number += 1
      if 0x6010 == verify_value or 0x6020 == verify_value:
         all_file.write(f"{frame_number:06} {rng_value:04X} |..|{previous_input}|{full_time:02X} ctrl line {ctrl_line_number:5} [removed Y]\n")
      else:
         all_file.write(f"{frame_number:06} {rng_value:04X} |..|{previous_input}|{full_time:02X} ctrl line {ctrl_line_number:5}\n")
      previous_full_time = full_time
   elif 0x1F == ctrl_data[i + 1]:
      rng_value = rng_data[i + 1]
      rng_value <<= 8
      rng_value |= rng_data[i]
      room_id = f"{rng_value:04X}"
      room_name = room_names[room_id]
      all_file.write(f"------ {room_id} |..|    ROOM    |{room_name}\n")
      verify_file.write(f"; {room_name}\n")
      time_file.write(f"; {room_name}\n")
      rng_file.write(f"; {room_name}\n")
      frame_number -= 1
   elif 0x2F == ctrl_data[i + 1]:
      rng_value = rng_data[i + 1]
      rng_value <<= 8
      rng_value |= rng_data[i]
      for j in range(0, 328):
         ctrl_file.write(f"|..|{previous_input}|\n")
      ctrl_line_number += 328
      fanfare_name = fanfare_names[rng_value]
      all_file.write(f"------ {rng_value:04X} |..|  FANFARE   |{fanfare_name}\n")
      verify_file.write(f"; {fanfare_name}\n")
      time_file.write(f"; {fanfare_name}\n")
      rng_file.write(f"; {fanfare_name}\n")
      frame_number += 327
   else:
      rng_value = rng_data[i + 1]
      rng_value <<= 8
      rng_value |= rng_data[i]
      verify_value = ctrl_data[i + 1]
      verify_value <<= 8
      verify_value |= ctrl_data[i] & 0xF0
      if 0x6010 == verify_value:
         previous_input = "....s......r"
         verify_file.write(f"    dw $2010 ; |..|{previous_input}| [removed Y]\n")
      elif 0x6020 == verify_value:
         previous_input = "....s.....l."
         verify_file.write(f"    dw $2020 ; |..|{previous_input}| [removed Y]\n")
      else:
         previous_input = 'U' if ctrl_data[i + 1] & 0x08 else '.'
         previous_input += 'D' if ctrl_data[i + 1] & 0x04 else '.'
         previous_input += 'L' if ctrl_data[i + 1] & 0x02 else '.'
         previous_input += 'R' if ctrl_data[i + 1] & 0x01 else '.'
         previous_input += 's' if ctrl_data[i + 1] & 0x20 else '.'
         previous_input += 'S' if ctrl_data[i + 1] & 0x10 else '.'
         previous_input += 'Y' if ctrl_data[i + 1] & 0x40 else '.'
         previous_input += 'B' if ctrl_data[i + 1] & 0x80 else '.'
         previous_input += 'X' if ctrl_data[i] & 0x40 else '.'
         previous_input += 'A' if ctrl_data[i] & 0x80 else '.'
         previous_input += 'l' if ctrl_data[i] & 0x20 else '.'
         previous_input += 'r' if ctrl_data[i] & 0x10 else '.'
         verify_file.write(f"    dw ${verify_value:04X} ; |..|{previous_input}|\n")
      partial_time = full_time & 0x0F
      full_time = ((previous_full_time + 1) & 0xF0) | partial_time
      time_file.write(f"    db ${full_time:02X}\n")
      rng_file.write(f"    dw ${rng_value:04X}\n")
      ctrl_file.write(f"|..|{previous_input}|\n")
      ctrl_line_number += 1
      if 0x6010 == verify_value or 0x6020 == verify_value:
         all_file.write(f"{frame_number:06} {rng_value:04X} |..|{previous_input}|{full_time:02X} ({partial_time:01X})  line {ctrl_line_number:5} [removed Y]\n")
      else:
         all_file.write(f"{frame_number:06} {rng_value:04X} |..|{previous_input}|{full_time:02X} ({partial_time:01X})  line {ctrl_line_number:5}\n")
      previous_full_time = full_time
   frame_number += 1
verify_file.close()
time_file.close()
rng_file.close()
ctrl_file.close()
all_file.close()

