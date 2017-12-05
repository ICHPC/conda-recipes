wget http://lilab.research.bcm.edu/dldcc-web/lilab/kaifuc/danpos/release/danpos-2.2.2.tgz
tar -zxvf danpos-2.2.2.tgz
mkdir -p $PREFIX/bin
chmod danpos-2.2.2/bin/*py
cp danpos-2.2.2/* $PREFIX/bin

