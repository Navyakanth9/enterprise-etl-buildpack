#!/usr/bin/env bash
set -e

DIST=dist
rm -rf $DIST
mkdir -p $DIST

echo "Creating ZIP artifact..."
zip -r $DIST/etl.zip /tmp/etl-build

echo "Creating TAR artifact..."
tar -cvf $DIST/etl.tar -C /tmp etl-build

echo "Creating JAR artifact..."
mkdir -p jar/META-INF
echo "Main-Class: Launcher" > jar/META-INF/MANIFEST.MF
jar cfm $DIST/etl.jar jar/META-INF/MANIFEST.MF -C /tmp/etl-build .

echo "Packaging complete"
