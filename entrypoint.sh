#!/bin/sh

sh -c "$JEST_CMD $* --ci --testLocationInResults --json --outputFile=report.json" &> /dev/null
set -e
sh -c "$OUTPUT_CMD cat report.json | /usr/bin/jest-action"
