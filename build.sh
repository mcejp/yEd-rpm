#!/bin/sh

set -e

VERSION=3.24

sed -i "s/^Version: .*/Version: $VERSION/g" SPECS/yed.spec
tar cfa SOURCES/yed-$VERSION.tar --exclude='.gitkeep' yed-$VERSION
rpmbuild -ba SPECS/yed.spec
