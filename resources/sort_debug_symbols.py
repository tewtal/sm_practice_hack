#!/usr/bin/env python
import io
import os
import re
import sys

if len(sys.argv) != 4:
   print("sort_debug_symbols.py <original_file> <new_file> <combined_file>")
   sys.exit()

original_name = sys.argv[1]
new_name = sys.argv[2]
combined_name = sys.argv[3]

original_file = None
new_file = None
combined_file = None

try:
   original_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), original_name), "r")
except OSError as e:
   print(f"Unable to open {original_name}: {e}", file=sys.stderr)
   sys.exit()

if len(new_name) > 1:
   try:
      new_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), new_name), "w", newline='\n')
   except OSError as e:
      print(f"Unable to open {new_name}: {e}", file=sys.stderr)
      sys.exit()

if len(combined_name) > 1:
   try:
      combined_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), combined_name), "w", newline='\n')
   except OSError as e:
      print(f"Unable to open {combined_name}: {e}", file=sys.stderr)
      sys.exit()

longest_label = ""
rows = original_file.readlines()
rows_to_sort = []
combined_rows_to_sort = []
sources_dict = {}
in_addr_to_line = False
in_labels = False
in_source_files = False
unnamed_symbol_found = False
for row in rows:
   if len(row) <= 2:
      if 0 != len(rows_to_sort):
         sorted_rows = sorted(rows_to_sort)
         last_addr = None
         for sorted_row in sorted_rows:
            if new_file:
               new_file.write(sorted_row)
            if in_addr_to_line:
               addr = sorted_row.split(' ')[0]
               if last_addr and last_addr == addr:
                  print("sort_debug_symbols.py WARNING duplicate addr-to-line mapping %s" % addr)
                  sys.exit()
               last_addr = addr
      in_addr_to_line = False
      in_source_files = False
      in_labels = False
      rows_to_sort = []
      if new_file:
         new_file.write(row)
   elif in_addr_to_line:
      parts = re.split(" |:|\n", row)
      if len(parts) != 5:
         rows_to_sort.append(row.upper())
         combined_rows_to_sort.append(row.upper())
      else:
         named_source = parts[2]
         if named_source in sources_dict:
            named_source = sources_dict[named_source]
         named_line = "%s:%s %s:%d\n" % (parts[0].upper(), parts[1].upper(), named_source, int(parts[3], 16))
         rows_to_sort.append(named_line)
         named_line = "%s:%s_%s:%d\n" % (parts[0].upper(), parts[1].upper(), named_source, int(parts[3], 16))
         combined_rows_to_sort.append(named_line)
   elif in_labels:
      rows_to_sort.append(row)
      combined_rows_to_sort.append(row)
      if " :" in row:
         unnamed_symbol_found = True
      if len(row) > 8:
         # for longest label, ignore presets and tile table names
         if row[0] < 'E' or row[1] == '0' or row[1] == '4':
            label = row[8:-1]
            if len(label) > len(longest_label):
               longest_label = label
   elif in_source_files:
      if new_file:
         new_file.write(row)
      parts = re.split(" |\.|\/", row)
      if len(parts) > 3:
         named_source = parts[len(parts) - 2]
         if named_source in sources_dict.values():
            print("sort_debug_symbols.py WARNING multiple source files have same name: " + named_source)
            sys.exit()
         sources_dict[parts[0]] = named_source
   else:
      if new_file:
         new_file.write(row)
      if "[addr-to-line mapping]" in row:
         in_addr_to_line = True
      elif "[labels]" in row:
         in_labels = True
      elif "[source files]" in row:
         in_source_files = True

if 0 != len(rows_to_sort):
   sorted_rows = sorted(rows_to_sort)
   last_addr = None
   for sorted_row in sorted_rows:
      if new_file:
         new_file.write(sorted_row)
      if in_addr_to_line:
         addr = sorted_row.split(' ')[0]
         if last_addr and last_addr == addr:
            print("sort_debug_symbols.py WARNING duplicate addr-to-line mapping %s" % addr)
            sys.exit()
         last_addr = addr

original_file.close()

if new_file:
   new_file.close()

if combined_file:
   sorted_rows = sorted(combined_rows_to_sort)
   for sorted_row in sorted_rows:
      if len(sorted_row) > 8:
         bank = int(sorted_row[:2], 16)
         addr = int(sorted_row[3:7], 16)
         pc_addr = (bank - 129) * 32768 + addr
         pc_rom_addr = "        " if pc_addr < 0 else f'{pc_addr:08x}'
         combined_file.write("%s  %s  %s" % (pc_rom_addr, sorted_row[:7], sorted_row[8:]))
      else:
         combined_file.write(sorted_row)
   combined_file.close()

if unnamed_symbol_found:
   print("sort_debug_symbols.py WARNING unnamed debug symbols detected")
   sys.exit()

recommended_max_label_length = 48
if len(longest_label) >= recommended_max_label_length:
   print("sort_debug_symbols.py WARNING labels at or exceeding recommended length of %d detected" % recommended_max_label_length)
   print("longest label (length %d) = %s" % (len(longest_label), longest_label))
   sys.exit()

