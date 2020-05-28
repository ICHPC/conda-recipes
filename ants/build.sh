mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ../
make -j 4
cp ../Scripts/* bin
cp -r bin/ $PREFIX
cp -r lib/ $PREFIX
