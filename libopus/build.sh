#!/bin/bash

set -euo pipefail

lazy_configure  \
    ac_cv_prog_cc_c23=no \
    --host="${HOST}" \
    --prefix="${ROOT_DIR}" \
    --disable-doc \
    --enable-static \
    --disable-shared \
    PKG_CONFIG_PATH="${ROOT_DIR}/lib/pkgconfig" \
    CPPFLAGS="-I${ROOT_DIR}/include" \
    CFLAGS="-arch ${ARCH} -mmacosx-version-min=${DEPLOY_TARGET} -Wno-implicit-function-declaration" \
    LDFLAGS="-L${ROOT_DIR}/lib -arch ${ARCH}"

make -j ${PROC_NUM}
make install
