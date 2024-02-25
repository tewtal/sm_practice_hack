@echo off
for /f "tokens=2-4 delims=/ " %%a in ('DATE /T') do (set mydate=%%c-%%a-%%b)
if exist build\smhack20.ips del build\smhack20.ips
if exist build\smhack20_sd2snes.ips del build\smhack20_sd2snes.ips
if exist build\smhack20_tinystates.ips del build\smhack20_tinystates.ips
if exist build\smhack20_tinystates_dev.ips del build\smhack20_tinystates_dev.ips
if exist build\smpalhack20.ips del build\smpalhack20.ips
if exist build\smpalhack20_sd2snes.ips del build\smpalhack20_sd2snes.ips
if exist build\smpalhack20_tinystates.ips del build\smpalhack20_tinystates.ips
docker build --tag sm_practice_hack --build-arg now="%mydate%_%TIME%" --output build .
