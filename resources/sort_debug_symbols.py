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

original_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), original_name), "r")
new_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), new_name), "w", newline='\n')
combined_file = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), combined_name), "w", newline='\n')

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
            new_file.write(sorted_row)
            if in_addr_to_line:
               addr = sorted_row.split(' ')[0]
               if last_addr and last_addr == addr:
                  print("sort_debug_symbols.py WARNING duplicate addr-to-line mapping %s" % addr)
               last_addr = addr
      in_addr_to_line = False
      in_source_files = False
      in_labels = False
      rows_to_sort = []
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
         combined_rows_to_sort.append(named_line)
   elif in_labels:
      rows_to_sort.append(row)
      combined_rows_to_sort.append(row)
      if " :" in row:
         unnamed_symbol_found = True
   elif in_source_files:
      new_file.write(row)
      parts = re.split(" |\.|\/", row)
      if len(parts) > 3:
         named_source = parts[len(parts) - 2]
         if named_source in sources_dict.values():
            print("sort_debug_symbols.py WARNING multiple source files have same name: " + named_source)
            sys.exit()
         sources_dict[parts[0]] = named_source
   else:
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
      new_file.write(sorted_row)
      if in_addr_to_line:
         addr = sorted_row.split(' ')[0]
         if last_addr and last_addr == addr:
            print("sort_debug_symbols.py WARNING duplicate addr-to-line mapping %s" % addr)
         last_addr = addr

sorted_rows = sorted(combined_rows_to_sort)
for sorted_row in sorted_rows:
   combined_file.write(sorted_row)

original_file.close()
new_file.close()
combined_file.close()

#if unnamed_symbol_found:
#   print("sort_debug_symbols.py WARNING unnamed debug symbols detected")
#   sys.exit()

