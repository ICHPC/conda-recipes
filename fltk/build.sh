#!/bin/bash

./configure --prefix=$PREFIX
make -j2
make test
make install
