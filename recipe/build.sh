make prefix=$PREFIX
make install prefix=$PREFIX
# remove static library
rm $PREFIX/lib/libaio.a
