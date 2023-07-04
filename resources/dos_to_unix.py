#!/usr/bin/env python
import sys

if len(sys.argv) != 2:
   print("dos_to_unix.py <filename>")
   sys.exit()

file_path = sys.argv[1]

with open(file_path, 'rb') as open_file:
   content = open_file.read()

content = content.replace(b'\r\n', b'\n')

with open(file_path, 'wb') as open_file:
   open_file.write(content)

