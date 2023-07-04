#!/bin/bash

docker build --tag sm_practice_hack --build-arg now="$(date +%s)" --output build .

