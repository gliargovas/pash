#!/bin/bash
# fetch hit count for each ip ?
set -e
IN=${PASH_TOP}/evaluation/benchmarks/aliases/meta
# 405 original
# cat ${IN}/apache.log | grep  "\->" | grep -o "from [^ ]*" | cut -d ' ' -f2 | sort | uniq -c | sort -nr | less
# FIXME need apache error logs ..
cat ${IN}/apache.log  | grep -o "from [^ ]*" | cut -d ' ' -f2 | sort | uniq -c | sort -nr
