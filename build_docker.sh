#!/bin/bash
rm -f build/smhack20.ips
rm -f build/smhack20_sd2snes.ips
rm -f build/smhack20_tinystates.ips
rm -f build/smhack20_tinystates_dev.ips
rm -f build/smpalhack20.ips
rm -f build/smpalhack20_sd2snes.ips
rm -f build/smpalhack20_tinystates.ips
docker build --tag sm_practice_hack --build-arg now="$(date +%s)" --output build .
