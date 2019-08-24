#!/bin/sh

sh -c "$JEST_CMD $* --ci --testLocationInResults --json --outputFile=${OUT_PATH}report.json" &> /dev/null
set -e
sh -c "cat ${OUT_PATH}report.json | /usr/bin/jest-action"
