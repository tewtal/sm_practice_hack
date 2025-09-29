@echo off

echo Building Combined Preset Data
cd src\presets
if exist combined_preset_names.asm del combined_preset_names.asm
if exist combined_map_preset_data.asm del combined_map_preset_data.asm
if exist combined_preset_data.asm del combined_preset_data.asm
python combine_preset_names.py
python combine_map_preset_data.py
python combine_preset_data.py
cd ..\..

