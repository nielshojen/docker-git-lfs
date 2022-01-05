#!/bin/sh

if [ ${SSH_KNOWN_HOSTS} ]; then
  mkdir -p $HOME/.ssh
  echo "${SSH_KNOWN_HOSTS}" >> $HOME/.ssh/known_hosts
  echo "SSH known host added" >> $HOME/running.log
fi