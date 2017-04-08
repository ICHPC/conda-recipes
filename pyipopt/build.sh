#!/bin/bash

cp $RECIPE_DIR/setup.patch .
patch < setup.patch
$PYTHON setup.py build
$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# https://github.com/ContinuumIO/conda/blob/master/conda/builder/README.txt
# for a list of environment variables that are set during the build process.
