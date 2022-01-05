#!/bin/sh

if [ ${CRONTAB} ]; then
  tail -f $HOME/running.log
fi