python setup.py build
python setup.py install --prefix=$PREFIX
mkdir -p $PREFIX/lib/python2.7/site-packages/parcels/include
cp include/* $PREFIX/lib/python2.7/site-packages/parcels/include/
