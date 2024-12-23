
export CPPFLAGS="--sysroot=$CONDA_BUILD_SYSROOT -I$CONDA_BUILD_SYSROOT/include"
export LDFLAGS="--sysroot=$CONDA_BUILD_SYSROOT -L$CONDA_BUILD_SYSROOT/lib64"

make prefix=$PREFIX
make install prefix=$PREFIX
# remove static library
rm $PREFIX/lib/libaio.a
