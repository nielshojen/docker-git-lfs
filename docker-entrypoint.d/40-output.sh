#!/bin/sh

if [ ! -z "${CRONTAB}" ]; then
  tail -f $HOME/running.log
fi