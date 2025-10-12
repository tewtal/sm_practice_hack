#!/usr/bin/env python
import sys
import os
import re

all_presets_data_list = []
all_presets_name_list = []
combined_preset_data_list = []
combined_preset_last_index_list = []
combined_preset_names_lists = []
name_dict = {}

# Map completion sets the mapping addresses to zero by default,
# and not all of them are changed in map completion runs,
# so only fill in the ones we actually care about
default_map_addr_list = ["07FB", "07FD", "07FF",
                         "0801", "0803", "0805", "0807", "0809", "080B", "080D", "080F",
                         "0811", "0813", "0815", "0817", "0819", "081B", "081D", "081F",
                         "0821", "0823", "0825", "0827", "0829", "082B", "082D", "082F",
                         "0831", "0833", "0835", "0837", "0839", "083B", "083D", "083F",
                         "0841", "0843", "0845", "0847", "0849", "084B", "084D",
                         "0851",
                         "087B", "087F",
                         "0883", "0887", "088B", "088D", "088F",
                         "0891", "0893", "0895", "0897", "0899", "089B", "089D", "089F",
                         "08A1", "08A3", "08A5", "08A7", "08AB", "08AF",
                         "08B3", "08B7", "08BB", "08BF",
                         "08C3", "08C5", "08C7", "08C9",
                         "CD58", "CD5C", "CD5E",
                         "CD60", "CD62", "CD64", "CD66", "CD68", "CD6A", "CD6C", "CD6E",
                         "CD70", "CD72", "CD74", "CD76", "CD78", "CD7C",
                         "CD80", "CD84", "CD88", "CD8C",
                         "CD90", "CD94", "CD98", "CD9C",
                         "CDA0",
                         "CDD6", "CDDA", "CDDE",
                         "CDE2", "CDE6", "CDE8", "CDEA", "CDEC", "CDEE",
                         "CDF0", "CDF2", "CDF4", "CDF8", "CDFC",
                         "CE00",
                         "CE56", "CE5A", "CE5C", "CE5E",
                         "CE60", "CE62", "CE64", "CE66", "CE68", "CE6A", "CE6C", "CE6E",
                         "CE70", "CE72", "CE74", "CE76", "CE78", "CE7A", "CE7C", "CE7E",
                         "CE80", "CE82", "CE84", "CE86", "CE88", "CE8A", "CE8C",
                         "CE94", "CE98",
                         "CEE6", "CEEA", "CEEE",
                         "CEF2", "CEF6", "CEFA", "CEFE",
                         "CF02", "CF06", "CF0A", "CF0E",
                         "CF12", "CF16", "CF1A", "CF1E",
                         "CF20", "CF22", "CF24",
                         "CF56", "CF5A", "CF5C", "CF5E",
                         "CF60", "CF62", "CF64", "CF66", "CF68", "CF6A", "CF6C", "CF6E",
                         "CF70", "CF72", "CF74", "CF76", "CF78", "CF7A", "CF7C", "CF7E",
                         "CF80", "CF82", "CF84", "CF86", "CF88", "CF8A", "CF8C", "CF8E",
                         "CF90", "CF92", "CF94", "CF96", "CF98", "CF9A", "CF9C",
                         "CFDE",
                         "CFEA", "CFEE",
                         "CFF2", "CFF6", "CFFA", "CFFE",
                         "D002", "D006", "D00A", "D00E",
                         "D012", "D016",
                         "D07E",
                         "D080", "D082", "D084", "D086", "D088", "D08A", "D08C", "D08E",
                         "D090", "D094", "D096", "D098", "D09A", "D09C",
                         "D0A0", "D0A2", "D0A4",
                         "D158", "D15C",
                         "D160", "D164", "D166", "D168", "D16A", "D16C", "D16E",
                         "D170", "D172", "D174", "D176", "D178", "D17A", "D17C", "D17E",
                         "D180", "D182", "D184", "D186", "D188", "D18A", "D18C", "D18E",
                         "D190", "D192", "D194", "D196", "D198", "D19A", "D19C", "D19E",
                         "D1A2",
                         "D1D6", "D1DA", "D1DE",
                         "D1E2", "D1E6", "D1EA", "D1EE",
                         "D1F2", "D1F6", "D1FA", "D1FE",
                         "D212", "D216",
                         "D27C",
                         "D280", "D284", "D286", "D288", "D28A", "D28C",
                         "D290", "D292", "D294", "D296", "D298", "D29C", "D29E",
                         "D2A0", "D2A2", "D2A4", "D2A6", "D2A8", "D2AC"]

def compare_preset_data(current_index, rhs):
    global combined_preset_data_list
    differences = 0
    lhs = combined_preset_data_list[current_index]
    if len(lhs) != len(rhs):
        for addr in rhs.keys():
            if addr not in lhs:
                print(f'Preset data dictionaries have a different length, {addr} not found in both')
        for addr in lhs.keys():
            if addr not in rhs:
                print(f'Preset data dictionaries have a different length, {addr} not found in both')
        raise Exception("Preset data dictionaries have a different length")
    for addr, value in lhs.items():
        if rhs[addr] != value:
            differences = differences + 1
    return differences

def compute_distance(current_index, last_data_index):
    global combined_preset_data_list
    distance = 1
    for addr, value in combined_preset_data_list[current_index].items():
        if last_data_index < 0 or combined_preset_data_list[last_data_index][addr] != value:
            distance = distance + 1
    return distance

def load_preset_data(file_label):
    global all_presets_data_list
    global all_presets_name_list
    global name_dict
    data_dict = {}
    input_filepath = file_label + "_data.asm"
    last_data_index = -2
    preset_data_list = []
    preset_name = None
    preset_name_list = []
    with open(input_filepath, 'r') as file:
        for line in file:
            line = line.rstrip()
            if line.startswith("preset_"):
                preset_name = line[:-1]
            elif line == "    dw #$FFFF":
                if last_data_index >= 0:
                    for addr, value in preset_data_list[last_data_index].items():
                        if addr not in data_dict:
                            data_dict[addr] = value
                else:
                    for addr in default_map_addr_list:
                        data_dict[addr] = "0000"
                if len(preset_name_list) == (last_data_index + 1):
                    preset_data_list.append(data_dict)
                    preset_name_list.append(preset_name)
                else:
                    preset_data_list.insert(last_data_index + 2, data_dict)
                    preset_name_list.insert(last_data_index + 2, preset_name)
                data_dict = {}
                last_data_index = -2
                preset_name = None
            elif line.startswith("    dw #"):
                predecessor = line[8:].split()[0]
                if predecessor == "$0000":
                    last_data_index = -1
                else:
                    try:
                        last_data_index = preset_name_list.index(predecessor)
                    except:
                        raise Exception("Predecessor (dw #" + predecessor + ") not found for preset: " + preset_name)
            elif line.startswith("    dw $"):
                if last_data_index < -1:
                    raise Exception("Predecessor (dw #) not found for preset: " + preset_name)
                if not re.match(r'^    dw \$([0-9A-F]{4}), \$([0-9A-F]{4})  ; (.+)$', line):
                    raise Exception("Line doesn't match expected pattern: " + line)
                addr = line[8:12]
                value = line[15:19]
                name = line[23:]
                if addr not in name_dict:
                    name_dict[addr] = name
                elif name != name_dict[addr]:
                    raise Exception("Conflicting names for address: " + addr)
                data_dict[addr] = value
            elif line:
                raise Exception("Unrecognized line: " + line)
            elif preset_name:
                raise Exception("Empty line in preset: " + preset_name)
    if len(preset_data_list) <= 0:
        raise Exception("No preset data found in file: " + input_filepath)
    all_presets_data_list.append(preset_data_list)
    all_presets_name_list.append(preset_name_list)

def combine_preset_data():
    global all_presets_data_list
    global all_presets_name_list
    global combined_preset_data_list
    global combined_preset_distance_list
    global combined_preset_last_index_list
    global combined_preset_names_lists
    combined_preset_distance_list = []
    combined_preset_jump_list = []

    # Start with the first preset of the first file
    combined_preset_data_list.append(all_presets_data_list[0][0])
    combined_preset_last_index_list.append(-1)
    combined_preset_names_lists.append([all_presets_name_list[0][0]])
    difference_list = [0]
    distance_list = []
    jump_list = []
    last_index_list = []
    next_file_index = -1
    next_preset_index_list = [1 if len(all_presets_data_list[0]) > 1 else -1]
    if next_preset_index_list[0] >= 0:
        difference_list[0] = compare_preset_data(0, all_presets_data_list[0][next_preset_index_list[0]])
        next_file_index = 0

    # Check if the first preset in other files match the one we picked
    for f in range(1, len(all_presets_data_list)):
        difference_list.append(compare_preset_data(0, all_presets_data_list[f][0]))
        if 0 == difference_list[f]:
            combined_preset_names_lists[0].append(all_presets_name_list[f][0])
            next_preset_index_list.append(1 if len(all_presets_data_list[f]) > 1 else -1)
            if next_preset_index_list[f] >= 0:
                difference_list[f] = compare_preset_data(0, all_presets_data_list[f][next_preset_index_list[f]])
                if next_file_index < 0 or difference_list[f] < difference_list[next_file_index]:
                    next_file_index = f
        else:
            next_preset_index_list.append(0)
            if next_file_index < 0 or difference_list[f] < difference_list[next_file_index]:
                next_file_index = f

    # Initialize distances
    distance = 1 + len(combined_preset_data_list[0])
    largest_allowed_distance = 8191 - (distance * (len(all_presets_data_list) - 1))
    combined_preset_distance_list.append(distance)
    combined_preset_jump_list.append(1)
    for f in range(len(all_presets_data_list)):
        distance_list.append(distance if next_preset_index_list[0] >= 0 else -1)
        jump_list.append(1 if next_preset_index_list[0] >= 0 else -1)
        last_index_list.append(0 if next_preset_index_list[0] >= 0 else -1)

    current_index = 0
    while next_file_index >= 0:
        # Store next preset of currently selected file
        current_index = current_index + 1
        last_index = last_index_list[next_file_index]
        preset_index = next_preset_index_list[next_file_index]
        combined_preset_data_list.append(all_presets_data_list[next_file_index][preset_index])
        combined_preset_distance_list.append(compute_distance(current_index, last_index))
        combined_preset_jump_list.append(1 + combined_preset_jump_list[last_index])
        combined_preset_last_index_list.append(last_index)
        combined_preset_names_lists.append([all_presets_name_list[next_file_index][preset_index]])
        
        # Prepare next preset for this file
        next_preset_index = preset_index + 1
        difference = 0
        while 0 == difference and next_preset_index < len(all_presets_data_list[next_file_index]):
            distance = combined_preset_distance_list[current_index]
            difference_list[next_file_index] = compare_preset_data(current_index, all_presets_data_list[next_file_index][next_preset_index])
            distance_list[next_file_index] = distance
            jump_list[next_file_index] = combined_preset_jump_list[current_index]
            last_index_list[next_file_index] = current_index
            for i in reversed(range(current_index)):
                distance = distance + combined_preset_distance_list[i]
                difference = compare_preset_data(i, all_presets_data_list[next_file_index][next_preset_index])
                if 0 == difference:
                    combined_preset_names_lists[i].append(all_presets_name_list[next_file_index][next_preset_index])
                    next_preset_index = next_preset_index + 1
                    if len(all_presets_data_list[next_file_index]) <= next_preset_index:
                        next_preset_index = -1
                    break
                if distance > largest_allowed_distance:
                    break
                if ((difference < difference_list[next_file_index]) or
                    ((difference == difference_list[next_file_index]) and
                     (combined_preset_jump_list[i] < jump_list[next_file_index]))):
                    difference_list[next_file_index] = difference
                    distance_list[next_file_index] = distance
                    jump_list[next_file_index] = combined_preset_jump_list[i]
                    last_index_list[next_file_index] = i
        if 0 == difference:
            difference_list[next_file_index] = 0
            distance_list[next_file_index] = -1
            jump_list[next_file_index] = -1
            last_index_list[next_file_index] = -1
            next_preset_index = -1
        next_preset_index_list[next_file_index] = next_preset_index

        # Compare next preset of other files to the latest preset added
        for f in range(len(all_presets_data_list)):
            next_preset_index = next_preset_index_list[f]
            if f != next_file_index and next_preset_index >= 0:
                difference = compare_preset_data(current_index, all_presets_data_list[f][next_preset_index])
                if 0 != difference:
                    if ((difference < difference_list[f]) or
                        ((difference == difference_list[f]) and
                         (combined_preset_jump_list[current_index] <= jump_list[f]))):
                        difference_list[f] = difference
                        distance_list[f] = combined_preset_distance_list[current_index]
                        jump_list[f] = combined_preset_jump_list[current_index]
                        last_index_list[f] = current_index
                    else:
                        distance_list[f] = distance_list[f] + combined_preset_distance_list[current_index]
                else:
                    combined_preset_names_lists[current_index].append(all_presets_name_list[f][next_preset_index])
                    next_preset_index = next_preset_index + 1
                    while 0 == difference and next_preset_index < len(all_presets_data_list[f]):
                        distance = combined_preset_distance_list[current_index]
                        difference_list[f] = compare_preset_data(current_index, all_presets_data_list[f][next_preset_index])
                        distance_list[f] = distance
                        jump_list[f] = combined_preset_jump_list[current_index]
                        last_index_list[f] = current_index
                        for i in reversed(range(current_index)):
                            distance = distance + combined_preset_distance_list[i]
                            difference = compare_preset_data(i, all_presets_data_list[f][next_preset_index])
                            if 0 == difference:
                                combined_preset_names_lists[i].append(all_presets_name_list[f][next_preset_index])
                                next_preset_index = next_preset_index + 1
                                if len(all_presets_data_list[f]) <= next_preset_index:
                                    next_preset_index = -1
                                break
                            if distance > largest_allowed_distance:
                                break
                            if ((difference < difference_list[f]) or
                                ((difference == difference_list[f]) and
                                 (combined_preset_jump_list[i] < jump_list[f]))):
                                difference_list[f] = difference
                                distance_list[f] = distance
                                jump_list[f] = combined_preset_jump_list[i]
                                last_index_list[f] = i
                    if 0 == difference:
                        difference_list[f] = 0
                        distance_list[f] = -1
                        jump_list[f] = -1
                        last_index_list[f] = -1
                        next_preset_index = -1
                    next_preset_index_list[f] = next_preset_index

        # Select the next preset
        next_file_index = -1
        for f in range(len(all_presets_data_list)):
            if next_preset_index_list[f] >= 0:
                if ((next_file_index < 0) or
                    (distance_list[f] > distance_list[next_file_index]) or
                    ((distance_list[f] == distance_list[next_file_index]) and
                     (difference_list[f] < difference_list[next_file_index]) or
                     ((difference_list[f] == difference_list[next_file_index]) and
                      (jump_list[f] < jump_list[next_file_index])))):
                    next_file_index = f

def write_combined_preset_data():
    global combined_preset_data_list
    global combined_preset_last_index_list
    global combined_preset_names_lists
    global name_dict
    with open("combined_map_preset_data.asm", 'w') as file:
        for i in range(len(combined_preset_data_list)):
            print("", file=file)
            for name in combined_preset_names_lists[i]:
                print(f'{name}:', file=file)
            last_data_index = combined_preset_last_index_list[i]
            if last_data_index < 0:
                print("    dw #$0000", file=file)
            else:
                print(f"    dw #{combined_preset_names_lists[last_data_index][0]}", file=file)
            for addr, value in sorted(combined_preset_data_list[i].items()):
                if (((last_data_index < 0) and addr not in default_map_addr_list) or
                    ((last_data_index >= 0) and (combined_preset_data_list[last_data_index][addr] != value))):
                    print(f'    dw ${addr}, ${value}  ; {name_dict[addr]}', file=file)
            print("    dw #$FFFF", file=file)


load_preset_data("100map")
load_preset_data("spazermap")
combine_preset_data()
write_combined_preset_data()

