#!/usr/bin/env python
import io
import os
import sys

if sys.argv[1] == "":
	print("sort_debug_symbols.py <original_file> <new_file>")
	sys.exit()
else:
	original_name = sys.argv[1]
	new_name = sys.argv[2]

original_file = io.open(os.path.dirname(os.path.realpath(__file__)) + "/" + original_name, "r")
new_file = io.open(os.path.dirname(os.path.realpath(__file__)) + "/" + new_name, "w", newline='\n')

rows = original_file.readlines()
rows_to_sort = []
in_addr_to_line = False
in_labels = False
unnamed_symbol_found = False
for row in rows:
   if len(row) <= 2:
      if 0 != len(rows_to_sort):
         sorted_rows = sorted(rows_to_sort)
         for sorted_row in sorted_rows:
            new_file.write(sorted_row)
      in_addr_to_line = False
      in_labels = False
      rows_to_sort = []
      new_file.write(row)
   elif in_addr_to_line:
      rows_to_sort.append(row.upper())
   elif in_labels:
      rows_to_sort.append(row)
      if " :" in row:
         unnamed_symbol_found = True
   else:
      new_file.write(row)
      if "[addr-to-line mapping]" in row:
         in_addr_to_line = True
      elif "[labels]" in row:
         in_labels = True

if 0 != len(rows_to_sort):
   sorted_rows = sorted(rows_to_sort)
   for sorted_row in sorted_rows:
      new_file.write(sorted_row)

original_file.close()
new_file.close()

#if unnamed_symbol_found:
#	print("sort_debug_symbols.py WARNING unnamed debug symbols detected")
#	sys.exit()

