#!/bin/sh

touch $HOME/running.log

if [ ! -z "${SSH_KEY}" ]; then
  mkdir -p $HOME/.ssh
  echo "${SSH_KEY}" > $HOME/.ssh/id_rsa
  chmod 0600 $HOME/.ssh/id_rsa
  echo "SSH Private key added" >> $HOME/running.log
fi