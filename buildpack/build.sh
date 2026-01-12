#!/usr/bin/env bash
set -e

WORK_DIR=/tmp/etl-build
rm -rf $WORK_DIR
mkdir -p $WORK_DIR

echo "Copying ETL files..."

[ -d ksh ] && cp -r ksh $WORK_DIR/
[ -d mp ] && cp -r mp $WORK_DIR/
[ -d dml ] && cp -r dml $WORK_DIR/

echo "Build phase complete"
