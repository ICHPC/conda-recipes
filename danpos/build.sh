wget http://lilab.research.bcm.edu/dldcc-web/lilab/kaifuc/danpos/release/danpos-2.2.2.tgz
tar -zxvf danpos-2.2.2.tgz
mkdir -p $PREFIX/bin
chmod a+x danpos-2.2.2/*py
cp danpos-2.2.2/* $PREFIX/bin

