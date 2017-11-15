printenv
find . -name "*.pyc" -exec rm {} \; 
cp hess.py $PREFIX/bin
chmod +x $PREFIX/bin/hess.py
cp -r src $SP_DIR/

