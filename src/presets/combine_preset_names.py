#!/usr/bin/env python
import sys
import os
import re
import shutil

all_preset_names = {}
names_total_size = 0

def compute_label_from_name(name):
    return re.sub(r"\W", "", re.sub(r"[+\s]+", "_", name.lower()))

def load_preset_names(file_label):
    global all_preset_names
    global names_total_size
    category_presets = {}
    group_label = "---"
    group_name = "---"
    input_filepath = file_label + "_menu.asm"
    output_filepath = file_label + "_menu.out"
    with open(input_filepath, 'r') as infile:
        with open(output_filepath, 'w', newline='\n') as outfile:
            outline = None
            for line in infile:
                if line.startswith("; "):
                    if outline:
                        outfile.write(outline)
                    group_name = line.rstrip()[2:]
                    group_label = compute_label_from_name(group_name)
                    outline = f'; {group_name}\n'
                elif line.startswith("    %cm_preset(\""):
                    preset_name = line[16:].split("\"")[0]
                    preset_label = compute_label_from_name(preset_name)
                    if preset_label in all_preset_names:
                        if preset_name != all_preset_names[preset_label]:
                            raise Exception("Name conflict: " + preset_name + " and " + all_preset_names[preset_label] + " both resolve to " + preset_label)
                    else:
                        all_preset_names[preset_label] = preset_name
                        names_total_size += len(preset_name) + 1
                    category_preset_label = f'{file_label}_{group_label}_{preset_label}'
                    if category_preset_label in category_presets:
                        raise Exception("Category preset defined multiple times: preset_" + category_preset_label)
                    category_presets[category_preset_label] = f'{group_name}: {preset_name}'
                    outline = f'presets_{category_preset_label}:\n'
                    outfile.write(outline)
                    outline = f'    %cm_preset(\"{preset_name}\", #preset_names_{preset_label}, #preset_{category_preset_label})\n'
                else:
                    if outline:
                        outfile.write(outline)
                    outline = line
            if outline:
                outfile.write(outline)
    shutil.move(output_filepath, input_filepath)
    input_filepath = file_label + "_data.asm"
    output_filepath = file_label + "_data.out"
    with open(input_filepath, 'r') as infile:
        with open(output_filepath, 'w', newline='\n') as outfile:
            for line in infile:
                if line.startswith("preset_"):
                    category_preset_label = line[7:-2]
                    if category_preset_label not in category_presets:
                        raise Exception("Category preset not found: preset_" + category_preset_label)
                    outfile.write(line)
                elif line.startswith("    dw #preset_"):
                    category_preset_label = line[15:].split(";")[0].rstrip()
                    if category_preset_label not in category_presets:
                        raise Exception("Category preset not found: dw #preset_" + category_preset_label)
                    category_preset_name = category_presets[category_preset_label]
                    outline = f'    dw #preset_{category_preset_label} ; {category_preset_name}\n'
                    outfile.write(outline)
                else:
                    outfile.write(line)
    shutil.move(output_filepath, input_filepath)

def write_combined_preset_names():
    global all_preset_names
    global names_total_size
    if names_total_size > 32768:
        raise Exception("Names table exceeds one bank in size: " + str(names_total_size))
    starting_addr = 0xF00000 - names_total_size
    with open("combined_preset_names.asm", 'w') as file:
        print("", file=file)
        print(f'warnpc ${starting_addr:06X}', file=file)
        print(f'org ${starting_addr:06X}', file=file)
        print("print pc, \" preset names start\"", file=file)
        print("", file=file)
        print("preset_names:", file=file)
        print("", file=file)
        for preset_label in sorted(all_preset_names.keys()):
            preset_name = all_preset_names[preset_label]
            print(f'preset_names_{preset_label}:', file=file)
            print(f'    db \"{preset_name}\", #$FF', file=file)
            print("", file=file)
        print("print pc, \" preset names end\"", file=file)
        print("", file=file)


load_preset_names("kpdr20")
load_preset_names("kpdr21")
load_preset_names("kpdr22")
load_preset_names("kpdr23")
load_preset_names("kpdr25")
load_preset_names("prkd19")
load_preset_names("prkd20")
load_preset_names("pkrd")
load_preset_names("gtclassic")
load_preset_names("gtmax")
load_preset_names("100early")
load_preset_names("hundo")
load_preset_names("100map")
load_preset_names("spazermap")
load_preset_names("14ice")
load_preset_names("14speed")
load_preset_names("rbo")
load_preset_names("suitless")
load_preset_names("ngplasma")
load_preset_names("nghyper")
load_preset_names("nintendopower")
load_preset_names("allbosskpdr")
load_preset_names("allbosspkdr")
load_preset_names("allbossprkd")
load_preset_names("nodropskpdr")
write_combined_preset_names()

