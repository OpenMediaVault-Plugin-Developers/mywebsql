#!/bin/sh

cd "$(dirname "$0")"

# Get current version.
version=$(dpkg-parsechangelog --show-field Version | cut -d- -f-1)

# Change directory.
cd mywebsql/

# Package.
debuild -us -uc
#debuild clean
