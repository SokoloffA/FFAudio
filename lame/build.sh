#!/bin/bash

set -euo pipefail

lazy_configure  \
    ac_cv_prog_cc_c23=no \
    --host="${HOST}" \
    --prefix="${ROOT_DIR}" \
    --enable-static \
    --disable-shared \
    --disable-gtktest \
    --disable-decoder \
    --enable-nasm \
    CPPFLAGS="-include locale.h" \
    CFLAGS="-arch ${ARCH} -mmacosx-version-min=${DEPLOY_TARGET} -Wno-implicit-function-declaration" \
    LDFLAGS="-arch ${ARCH}"

make -j ${PROC_NUM}
make install
