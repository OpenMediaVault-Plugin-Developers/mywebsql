#!/bin/sh

cd "$(dirname "$0")"

# Download the source.
debian/rules get-orig-source

# Get current version.
version=$(dpkg-parsechangelog | grep Version: | cut -d' ' -f2- | cut -d'-' -f1)

# Extract files.
tar xvfz ../mywebsql_$version.orig.tar.gz
