../libstdc++-v3/configure \
  --host=$LFS_TGT \
  --build=$(../config.guess) \
  --prefix=/usr \
  --disable-multilib \
  --disable-nls \
  --disable-libstdcxx-pch \
  --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/14.2.0
