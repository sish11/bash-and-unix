#!/bin/bash

start=$(date +%s)
#
# do something
sleep 10
#
#
end=$(date +%s)

seconds=$(echo "$end - $start" | bc)
echo $seconds' sec'

echo 'Formatted:'
awk -v t=$seconds 'BEGIN{t=int(t*1000); printf "%d:%02d:%02d\n", t/3600000, t/60000%60, t/1000%60}'