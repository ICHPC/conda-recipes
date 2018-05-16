#!/bin/sh

export LD_LIBRARY_PATH=$PREFIX/lib

make
make install

ls ./bin

