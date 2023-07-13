@echo off
for /f "tokens=2-4 delims=/ " %%a in ('DATE /T') do (set mydate=%%c-%%a-%%b)
docker build --tag sm_practice_hack --build-arg now="%mydate%_%TIME%" --output build .

