#!/bin/sh

if [ ! -z "${SOURCE}" ] && [ ! -z "${TARGET}" ]; then
    mkdir -p ${TARGET}
    if [ "$(ls -A ${TARGET})" ]; then
        git -C ${TARGET} pull
    else
        git clone ${CLONE_OPTS} ${SOURCE} ${TARGET}
    fi
else
    echo "No Source and/or Target supplied"
fi