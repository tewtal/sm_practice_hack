#!/usr/bin/env python
import io
import os
import sys

if len(sys.argv) != 5:
   print("create_layout.py <input> <menu_template> <menu_output> <table_output>")
   sys.exit()

input_txt = sys.argv[1]
menu_template_asm = sys.argv[2]
menu_output_asm = sys.argv[3]
table_output_asm = sys.argv[4]

try:
   f_input = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), input_txt), "r")
except OSError as e:
   print(f"Unable to open {input_txt}: {e}", file=sys.stderr)
   sys.exit()

input_lines = f_input.readlines()
f_input.close()

menus = {}
wip_menu = []
wip_menu_key = None
wip_menu_comment = ""
portal_tables = {}
wip_table = {}
wip_table_key = None
wip_table_comment = ""
extra_table = {}

for line in input_lines:
   if len(line) < 2:
      if wip_menu_key:
         menus[wip_menu_key] = wip_menu
         wip_menu = []
         wip_menu_key = None
      wip_menu_comment = ""
      if wip_table_key:
         portal_tables[wip_table_key] = wip_table
         wip_table = {}
         wip_table_key = None
      wip_table_comment = ""
   elif line.startswith("portals_") and line.endswith("_vanilla_table:\n"):
      if wip_table_key:
         portal_tables[wip_table_key] = wip_table
         wip_table = {}
      wip_table_key = line[8:-16]
      wip_table_comment = ""
   elif line.startswith("Layout"):
      if wip_menu_key:
         menus[wip_menu_key] = wip_menu
         wip_menu = []
      wip_menu_key = line[0:-2]
      wip_menu_comment = ""
   elif line.startswith("    ;"):
      if wip_menu_key:
         wip_menu_comment = line[4:-1]
      if wip_table_key:
         wip_table_comment = line[4:-1]
   else:
      parts = line.split(',')
      if len(parts) != 4:
         print(f"Unable to parse {input_txt} line: {line}")
         sys.exit()
      addr = parts[0].strip()
      if wip_menu_key:
         menu_entry = (addr, parts[2].strip(), wip_menu_comment)
         wip_menu.append(menu_entry)
         wip_menu_comment = ""
      portal_entry = (parts[1].strip(), parts[3].strip(), wip_table_comment)
      if wip_table_key:
         wip_table[addr] = portal_entry
         wip_table_comment = ""
      else:
         extra_table[addr] = portal_entry

try:
   f_menu_template = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), menu_template_asm), "r")
except OSError as e:
   print(f"Unable to open {menu_template_asm}: {e}", file=sys.stderr)
   sys.exit()

template_lines = f_menu_template.readlines()
f_menu_template.close()

try:
   f_menu_output = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), menu_output_asm), "w", newline='\n')
except OSError as e:
   print(f"Unable to open {menu_output_asm}: {e}", file=sys.stderr)
   sys.exit()

menu_keys = menus.keys()
portal_keys = portal_tables.keys()
goto_prefix = ""
door_prefix = ""
door_count = 0
for line in template_lines:
   if len(line) < 3:
      f_menu_output.write(line)
   elif line == "LayoutMenu:\n":
      areaboss_door_count = len(portal_tables["area_boss"])
      left_door_count = len(portal_tables["left"])
      right_door_count = len(portal_tables["right"])
      up_door_count = len(portal_tables["up"])
      down_door_count = len(portal_tables["down"])
      f_menu_output.write("!layout_areaboss_door_count = #$%s\n" % f'{areaboss_door_count:04X}')
      f_menu_output.write("!layout_left_door_count = #$%s\n" % f'{left_door_count:04X}')
      f_menu_output.write("!layout_right_door_count = #$%s\n" % f'{right_door_count:04X}')
      f_menu_output.write("!layout_up_door_count = #$%s\n" % f'{up_door_count:04X}')
      f_menu_output.write("!layout_down_door_count = #$%s\n\n" % f'{down_door_count:04X}')
      f_menu_output.write(line)
   elif line.startswith("portals_") and line.endswith("_vanilla_table:\n"):
      key = line[8:-16]
      if key not in portal_keys:
         f_menu_output.write(line)
      else:
         portal_prefix = key.replace('_', '').lower()
         for addr, data in portal_tables[key].items():
            door_menu_label = "%s_%s" % (portal_prefix, addr)
            if len(data[2]) > 0:
               f_menu_output.write("    dw #doormenu_%s %s\n" % (f'{door_menu_label:14}', data[2]))
            else:
               f_menu_output.write("    dw #doormenu_%s\n" % door_menu_label)
         f_menu_output.write("    dw #$0000\n")
   else:
      key = line[0:-2]
      if key not in menu_keys:
         f_menu_output.write(line)
      elif key[0:-1] not in menu_keys:
         f_menu_output.write(line)
         door_index = key.index("DoorMenu")
         if door_index > 6:
            goto_prefix = ""
            new_door_prefix = key[6:door_index]
            if new_door_prefix.endswith("Left"):
               goto_prefix = "%s_" % new_door_prefix[:-4]
               new_door_prefix = "left"
            elif new_door_prefix.endswith("Right"):
               goto_prefix = "%s_" % new_door_prefix[:-5]
               new_door_prefix = "right"
            elif new_door_prefix.endswith("Up"):
               goto_prefix = "%s_" % new_door_prefix[:-2]
               new_door_prefix = "up"
            elif new_door_prefix.endswith("Down"):
               goto_prefix = "%s_" % new_door_prefix[:-4]
               new_door_prefix = "down"
            else:
               new_door_prefix = new_door_prefix.lower()
            i = 1
            while i < len(goto_prefix):
               if goto_prefix[i].isupper():
                  goto_prefix = goto_prefix[:i] + '_' + goto_prefix[i:]
                  i += 1
               i += 1
            goto_prefix = goto_prefix.lower()
            if door_prefix != new_door_prefix:
               door_prefix = new_door_prefix
               door_count = 0
            for data in menus[key]:
               door_menu_label = "%s_%s" % (door_prefix, data[0])
               if door_prefix == "areaboss" and len(data[2]) > 0:
                  f_menu_output.write("    dw #doormenu_%s %s\n" % (f'{door_menu_label:14}', data[2]))
               else:
                  f_menu_output.write("    dw #doormenu_%s\n" % door_menu_label)
            has_page2 = False
            key2 = key + "2"
            if key2 in menus:
               has_page2 = True
               if door_prefix != "areaboss":
                  f_menu_output.write("    dw #$FFFF\n")
               f_menu_output.write("    dw #doormenu_%s%s_goto_page2\n" % (goto_prefix, door_prefix))
            has_page3 = False
            key3 = key + "3"
            if key3 in menus:
               has_page3 = True
               f_menu_output.write("    dw #doormenu_%s%s_goto_page3\n" % (goto_prefix, door_prefix))
            f_menu_output.write("    dw #$0000\n")
            if door_prefix == "areaboss":
               door_select_text = "SELECT DOOR"
               door_menu_select = "doormenu_select"
            else:
               door_select_text = "SELECT %s DOOR" % door_prefix.upper()
               door_menu_select = "doorsubmenu_select"
            f_menu_output.write("    %ccm_header(\"%s\")\n" % ('%', door_select_text))
            if has_page2:
               f_menu_output.write("\n%s:\n" % key2)
               for data in menus[key2]:
                  door_menu_label = "%s_%s" % (door_prefix, data[0])
                  if len(data[2]) > 0:
                     f_menu_output.write("    dw #doormenu_%s %s\n" % (f'{door_menu_label:14}', data[2]))
                  else:
                     f_menu_output.write("    dw #doormenu_%s\n" % door_menu_label)
               if door_prefix != "areaboss":
                  f_menu_output.write("    dw #$FFFF\n")
               f_menu_output.write("    dw #doormenu_%s%s_goto_page1\n" % (goto_prefix, door_prefix))
               if has_page3:
                  f_menu_output.write("    dw #doormenu_%s%s_goto_page3\n" % (goto_prefix, door_prefix))
                  f_menu_output.write("    dw #$0000\n")
                  f_menu_output.write("    %ccm_header(\"%s\")\n" % ('%', door_select_text))
                  f_menu_output.write("\n%s:\n" % key3)
                  for data in menus[key3]:
                     door_menu_label = "%s_%s" % (door_prefix, data[0])
                     if len(data[2]) > 0:
                        f_menu_output.write("    dw #doormenu_%s %s\n" % (f'{door_menu_label:14}', data[2]))
                     else:
                        f_menu_output.write("    dw #doormenu_%s\n" % door_menu_label)
                  f_menu_output.write("    dw #$FFFF\n")
                  f_menu_output.write("    dw #doormenu_%s%s_goto_page1\n" % (goto_prefix, door_prefix))
                  f_menu_output.write("    dw #doormenu_%s%s_goto_page2\n" % (goto_prefix, door_prefix))
               f_menu_output.write("    dw #$0000\n")
               f_menu_output.write("    %ccm_header(\"%s\")\n" % ('%', door_select_text))
               f_menu_output.write("\ndoormenu_%s%s_goto_page1:\n" % (goto_prefix, door_prefix))
               f_menu_output.write("    %ccm_adjacent_submenu(\"GOTO PAGE ONE\", #%s)\n" % ('%', key))
               f_menu_output.write("\ndoormenu_%s%s_goto_page2:\n" % (goto_prefix, door_prefix))
               f_menu_output.write("    %ccm_adjacent_submenu(\"GOTO PAGE TWO\", #%s)\n" % ('%', key2))
               if has_page3:
                  f_menu_output.write("\ndoormenu_%s%s_goto_page3:\n" % (goto_prefix, door_prefix))
                  f_menu_output.write("    %ccm_adjacent_submenu(\"GOTO PAGE THREE\", #%s)\n" % ('%', key3))
            for data in menus[key]:
               f_menu_output.write("\ndoormenu_%s_%s:\n" % (door_prefix, data[0]))
               f_menu_output.write("    %ccm_jsl(\"%s\", #%s, #$%s)\n" % ('%', data[1], door_menu_select, f'{door_count:04X}'))
               door_count += 1
            if has_page2:
               for data in menus[key2]:
                  f_menu_output.write("\ndoormenu_%s_%s:\n" % (door_prefix, data[0]))
                  f_menu_output.write("    %ccm_jsl(\"%s\", #%s, #$%s)\n" % ('%', data[1], door_menu_select, f'{door_count:04X}'))
                  door_count += 1
               if has_page3:
                  for data in menus[key3]:
                     f_menu_output.write("\ndoormenu_%s_%s:\n" % (door_prefix, data[0]))
                     f_menu_output.write("    %ccm_jsl(\"%s\", #%s, #$%s)\n" % ('%', data[1], door_menu_select, f'{door_count:04X}'))
                     door_count += 1

f_menu_output.close()

try:
   f_table_output = io.open(os.path.join(os.path.dirname(os.path.realpath(__file__)), table_output_asm), "w", newline='\n')
except OSError as e:
   print(f"Unable to open {table_output_asm}: {e}", file=sys.stderr)
   sys.exit()

f_table_output.write("\n; --------------------")
f_table_output.write("\n; Layout Portal Tables")
f_table_output.write("\n; (autogenerated)")
f_table_output.write("\n; --------------------")

all_door_addrs = []
all_door_descs = []
for addr, data in extra_table.items():
   all_door_addrs.append(addr)
   i = data[1].index(" --> ")
   desc = data[1][:i].strip('(')
   all_door_descs.append(desc)
for key, table in portal_tables.items():
   f_table_output.write("\n\n; List of vanilla %s doors" % key.replace('_', '/'))
   f_table_output.write("\nportals_%s_vanilla_table:" % key.replace('_', ''))
   for addr, data in table.items():
      inconsistencies = ""
      if key != "area_boss":
         if addr in all_door_addrs:
            inconsistencies += "(dup addr?) "
         else:
            all_door_addrs.append(addr)
         if " --> " not in data[1]:
            inconsistencies += "(-->?)"
         else:
            i = data[1].index(" --> ")
            desc = data[1][:i].strip('(')
            if desc in all_door_descs:
               inconsistencies += "(dup door?) "
            else:
               all_door_descs.append(desc)
      f_table_output.write("\n    dw $%s %s   ; %s" % (addr, inconsistencies, data[1]))
   f_table_output.write("\n\n; Above table with portals inverted")
   f_table_output.write("\nportals_%s_vanilla_inverted_table:" % key.replace('_', ''))
   if key == "left" and "right" in portal_tables:
      inverted_table = portal_tables["right"]
   elif key == "right" and "left" in portal_tables:
      inverted_table = portal_tables["left"]
   elif key == "up" and "down" in portal_tables:
      inverted_table = portal_tables["down"]
   elif key == "down" and "up" in portal_tables:
      inverted_table = portal_tables["up"]
   else:
      inverted_table = table
   for addr, data in table.items():
      inverted_addr = data[0]
      if inverted_addr in inverted_table:
         inconsistencies = ""
         if inverted_table[inverted_addr][0] != addr:
            inconsistencies += "(%s?) " % inverted_table[inverted_addr][0]
         desc = table[addr][1]
         inverted_desc = inverted_table[inverted_addr][1]
         if " --> " not in desc or " --> " not in inverted_desc:
            inconsistencies += "(-->?)"
         else:
            j = desc.index(" --> ")
            if " door " in desc:
               i = desc.index(" door ")
            else:
               inconsistencies += "(door? -->) "
               i = j
            j += 5
            src_desc = desc[:i].strip('(')
            dest_desc = desc[j:].strip(')')
            j = inverted_desc.index(" --> ")
            if " door " in inverted_desc:
               i = inverted_desc.index(" door ")
            else:
               inconsistencies += "(--> door?) "
               i = j
            j += 5
            inverted_src_desc = inverted_desc[:i].strip('(')
            inverted_dest_desc = inverted_desc[j:].strip(')')
            if inverted_src_desc != dest_desc:
               inconsistencies += "(%s door?) " % dest_desc
            if inverted_dest_desc != src_desc:
               inconsistencies += "(--> %s?) " % src_desc
         f_table_output.write("\n    dw $%s %s   ; %s" % (inverted_addr, inconsistencies, inverted_table[inverted_addr][1]))
      elif inverted_addr in extra_table:
         inconsistencies = ""
         if extra_table[inverted_addr][0] != addr:
            inconsistencies += "(%s?) " % extra_table[inverted_addr][0]
         f_table_output.write("\n    dw $%s %s   ; %s" % (inverted_addr, inconsistencies, extra_table[inverted_addr][1]))
      else:
         f_table_output.write("\n    dw $%s" % inverted_addr)
   if key == "area_boss":
      f_table_output.write("\n\n; Above table with custom portals")
      f_table_output.write("\nportals_%s_custom_inverted_table:" % key.replace('_', ''))
      for addr, data in table.items():
         door_name = table[data[0]][1].split('-')[0].strip().replace(' ','_').replace("_door_","_door").lower()
         if len(data[2]) > 0:
            f_table_output.write("\n    dw #door_custom_%s_%s %s" % (data[0], f'{door_name:34}', data[2]))
         else:
            f_table_output.write("\n    dw #door_custom_%s_%s" % (data[0], door_name))

f_table_output.write("\n\n")
f_table_output.close()

