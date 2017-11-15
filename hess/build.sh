printenv
find . -name "*.pyc" -exec rm {} \; 
mkdir -p $PREFIX/bin $SP_DIR
cp hess.py $PREFIX/bin
chmod +x $PREFIX/bin/hess.py
cp -r src $SP_DIR/

