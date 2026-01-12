#!/usr/bin/env bash
set -e

echo "Detecting ETL component structure..."

if [ -d "ksh" ] || [ -d "mp" ] || [ -d "dml" ]; then
  echo "ETL component detected"
  exit 0
else
  echo "No ETL structure found. Exiting."
  exit 1
fi
