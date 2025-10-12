#!/bin/bash

echo "Building Combined Preset Data"
cd src/presets
rm -f combined_preset_names.asm
rm -f combined_map_preset_data.asm
rm -f combined_preset_data.asm
python3 combine_preset_names.py
python3 combine_map_preset_data.py
python3 combine_preset_data.py
cd ../..

