wget 'https://downloads.sourceforge.net/project/svdetect/SVDetect/0.70/SVDetect_r0.7m.tar.gz'
tar -zxvf *gz
cd SVDetect_r0.7m
mkdir -p $PREFIX/bin
chmod a+rx bin/* scripts/*
cp bin/* scripts/* $PREFIX/bin
sed -i 's/#!\/usr\/bin\/perl/#!\/usr\/bin\/env perl/g' $PREFIX/bin/*


