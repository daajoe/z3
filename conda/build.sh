#!/usr/bin/env bash
if [ `uname` == Darwin ]; then
    CXX=clang++ CC=clang python scripts/mk_make.py --python --prefix=$PREFIX --pypkgdir=$SP_DIR
else
    python scripts/mk_make.py --python --prefix=$PREFIX --pypkgdir=$SP_DIR
fi
cd build
make -j7
make install

# https://github.com/Z3Prover/z3/issues/99
#mv python/z3  $SP_DIR/
#$STDLIB_DIR/dist-packages/* $SP_DIR/


#python scripts/mk_make.py --python
#--prefix=$HOME --pypkgdir=$HOME/lib/python-2.7/site-packages
#cd build
#make -j3
#make install
