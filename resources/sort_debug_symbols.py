#!/usr/bin/env python
import sys
import os

if sys.argv[1] == "":
	print("sort_debug_symbols.py <original_file> <new_file>")
	sys.exit()
else:
	original_name = sys.argv[1]
	new_name = sys.argv[2]

original_file = open(os.path.dirname(os.path.realpath(__file__)) + "/" + original_name, "r")
new_file = open(os.path.dirname(os.path.realpath(__file__)) + "/" + new_name, "w")

rows = original_file.readlines()
sorted_rows = sorted(rows[1:])

unnamed_symbol_found = False
new_file.write(rows[0])
for row in sorted_rows:
   new_file.write(row)
   if " :" in row:
      unnamed_symbol_found = True

original_file.close()
new_file.close()

if unnamed_symbol_found:
	print("sort_debug_symbols.py WARNING unnamed debug symbols detected")
	sys.exit()

