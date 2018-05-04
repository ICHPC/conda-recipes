#!/bin/bash

mkdir -p "$PREFIX/libexec" "$PREFIX/bin"

# Build Canu into libexec dir
( cd src; make TARGET_DIR=$PREFIX/libexec )

# Link all executable files to bin
find $PREFIX/libexec -type f -perm +111 -exec ln -s {} $PREFIX/bin \;
#Added permission bits set with new syntax, as above is now deprecated.
find $PREFIX/libexec -type f -perm /111 -exec ln -s {} $PREFIX/bin \;

