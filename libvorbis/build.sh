#!/bin/bash

set -euo pipefail

sed -i '' 's/-force_cpusubtype_ALL//g' configure

lazy_configure  \
    ac_cv_prog_cc_c23=no \
    --host="${HOST}" \
    --prefix="${ROOT_DIR}" \
    --enable-static \
    --disable-shared \
    --disable-oggtest \
    PKG_CONFIG_PATH="${ROOT_DIR}/lib/pkgconfig" \
    CPPFLAGS="-I${ROOT_DIR}/include" \
    CFLAGS="-arch ${ARCH} -mmacosx-version-min=${DEPLOY_TARGET} -Wno-implicit-function-declaration" \
    LDFLAGS="-L${ROOT_DIR}/lib -arch ${ARCH}"

make -j ${PROC_NUM}
make install
