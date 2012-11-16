#!/usr/bin/env sh
set -e
export BUILDDIR=$( pwd )

source ./functions.sh
source ./config.sh

if [ ! -e "$BUILDDIR/openssl" ]; then
    cd "$BUILDDIR"
    git clone https://github.com/guardianproject/openssl-android.git openssl
    patch -p1 < "$BUILDDIR/patch/openssl_fix_build.diff"
fi

if [ ! -e "$BUILDDIR/Python-2.7.2.tgz" ]; then
    set_downloader
    downloader http://www.python.org/ftp/python/2.7.2/Python-2.7.2.tgz
fi

if [ ! -e "$BUILDDIR/Python-host" ]; then
    tar zxvf Python-2.7.2.tgz
    mv Python-2.7.2 Python-host
fi

if [ ! -e "$BUILDDIR/hostpython" -a ! -e "$BUILDDIR/hostpgen" ]; then
    cd "$BUILDDIR/Python-host"
    ./configure --prefix="$BUILDDIR/prebuilt"
    make -j4
    make install
    mv python "$BUILDDIR/hostpython"
    mv Parser/pgen "$BUILDDIR/hostpgen"
    make distclean
fi

export HOSTPYTHON=$BUILDDIR/hostpython
export HOSTPGEN=$BUILDDIR/hostpgen

cd $BUILDDIR

export PYTHONSRC=$BUILDDIR/Python-arm

if [ ! -e "$PYTHONSRC" ]; then
    tar zxvf Python-2.7.2.tgz
    mv $BUILDDIR/Python-2.7.2 $PYTHONSRC
    cd "$PYTHONSRC"

    patch -p1 < "$BUILDDIR/patch/Python-2.7.2-xcompile.patch"
    patch -p1 < "$BUILDDIR/patch/Python-2.7.2-android.patch"
    #patch -p1 -i "$BUILDDIR/patch/Python-2.7.2-getplatform.patch"
    patch -p1 -i "$BUILDDIR/patch/Python-2.7.2-site-relax-include-config.patch"
    patch -p1 -i "$BUILDDIR/patch/Python-2.7.2-enable_ipv6.patch"
    patch -p1 -i "$BUILDDIR/patch/Python-2.7.2-filesystemdefaultencoding.patch"

    ./configure --host=arm-eabi --build=i386-linux-gnu --enable-ipv6 --enable-shared
    cat pyconfig.h \
    | sed -e '/HAVE_FDATASYNC/ c#undef HAVE_FDATASYNC' \
    | sed -e '/HAVE_KILLPG/ c#undef HAVE_KILLPG' \
    | sed -e '/HAVE_GETHOSTBYNAME_R/ c#undef HAVE_GETHOSTBYNAME_R' \
    | sed -e '/HAVE_DECL_ISFINITE/ c#undef HAVE_DECL_ISFINITE' \
    > temp
    mv temp pyconfig.h
    
    $HOSTPGEN $PYTHONSRC/Grammar/Grammar $PYTHONSRC/Include/graminit.h $PYTHONSRC/Python/graminit.c
fi

rm -rf $BUILDDIR/output*
mkdir -p $BUILDDIR/output
export OUT=$BUILDDIR/output

mkdir -p ${OUT}/usr/bin
mkdir -p ${OUT}/usr/lib/python2.7
mkdir -p ${OUT}/usr/lib/python2.7/lib-dynload
mkdir -p ${OUT}/usr/include/python2.7

export PYTHON_LIBS='site-packages encodings compiler hotshot email email/mime json sqlite3 logging bsddb wsgiref ctypes ctypes/macholib idlelib idlelib/Icons distutils distutils/command multiprocessing multiprocessing/dummy plat-linux2 xml xml/dom xml/etree xml/parsers xml/sax'

for lib in $PYTHON_LIBS; do
    if [ -n "$(find ${PYTHONSRC}/Lib/${lib} -maxdepth 1 -type f)" ]; then
	mkdir -p ${OUT}/usr/lib/python2.7/${lib}
	cp $(find ${PYTHONSRC}/Lib/${lib} -maxdepth 1 -type f) ${OUT}/usr/lib/python2.7/${lib}
    fi
done

cp $(find ${PYTHONSRC}/Lib/ -maxdepth 1 -type f) ${OUT}/usr/lib/python2.7/
cp -r ${PYTHONSRC}/Include/* ${OUT}/usr/include/python2.7/
cp ${PYTHONSRC}/pyconfig.h ${OUT}/usr/include/python2.7/
