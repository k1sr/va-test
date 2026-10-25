#!/bin/sh
# Fails if the page no longer shows "Hello World" as its heading.
cd "$(dirname "$0")/.." || exit 1
grep -q '<h1>Hello World</h1>' index.html || { echo "FAIL: index.html has no Hello World heading"; exit 1; }
echo "PASS"
