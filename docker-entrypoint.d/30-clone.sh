#!/bin/sh

if [ ${SOURCE} ] && [ ${TARGET} ]; then
    git clone ${CLONE_OPTS} ${SOURCE} ${TARGET} 
else
    echo "No Source and/or Target supplied"
fi