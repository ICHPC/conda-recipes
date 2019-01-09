#!/bin/bash
  $R CMD INSTALL --build --configure-args="--with-Rmpi-include=/apps/mpi/intel/2018.1.163/include --with-Rmpi-libpath=/apps/mpi/intel/2018.1.163/lib --with-Rmpi-type=INTELMPI" .

