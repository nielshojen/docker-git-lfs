#!/bin/sh

if [ ! -z "${CRONTAB}" ] && [ ! -z "${SOURCE}" ] && [ ! -z "${TARGET}" ]; then
  crontab -e ${USER}
  echo "#!/bin/sh" > $HOME/cronjob.sh
  echo "git -C ${TARGET} pull" >> $HOME/cronjob.sh
  echo "git -C ${TARGET} lfs prune" >> $HOME/cronjob.sh
  echo "echo \"Pull completed - \$(date)\" >> $HOME/running.log" >> $HOME/cronjob.sh
  echo "exit 0" >> $HOME/cronjob.sh
  chmod +x $HOME/cronjob.sh
  (crontab -l 2>/dev/null; echo "${CRONTAB} $HOME/cronjob.sh >/dev/null 2>&1") | crontab -
  echo "Crontab job added" >> $HOME/running.log
fi