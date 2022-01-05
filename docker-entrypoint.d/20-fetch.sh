#!/bin/sh

if [ ! -z "${SOURCE}" ] && [ ! -z "${TARGET}" ]; then
    mkdir -p ${TARGET}
    if [ ! "$(ls -A ${TARGET})" ]; then
        git clone ${CLONE_OPTS} ${SOURCE} ${TARGET}
    fi
    git -C ${TARGET} pull
    git -C ${TARGET} lfs pull
else
    echo "No Source and/or Target supplied"
fi