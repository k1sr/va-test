#!/bin/sh
# Fails if the page no longer shows "The new Claude Threads Suck" as its heading.
cd "$(dirname "$0")/.." || exit 1
grep -q '<h1>The new Claude Threads Suck</h1>' index.html || { echo "FAIL: index.html has no "The new Claude Threads Suck" heading"; exit 1; }
echo "PASS"
