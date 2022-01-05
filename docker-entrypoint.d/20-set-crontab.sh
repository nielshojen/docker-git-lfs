#!/bin/sh

if [ ! -z "${CRONTAB}" ] && [ ! -z "${SOURCE}" ] && [ ! -z "${TARGET}" ]; then
  crontab -e ${USER}
  echo "#!/bin/sh" > $HOME/scheduled_fetch.sh
  echo "git -C ${TARGET} pull" >> $HOME/scheduled_fetch.sh
  echo "git -C ${TARGET} lfs prune" >> $HOME/scheduled_fetch.sh
  echo "Pull completed - $(date) >> $HOME/running.log" >> $HOME/scheduled_fetch.sh
  echo "exit 0" >> $HOME/scheduled_fetch.sh
  (crontab -l 2>/dev/null; echo "${CRONTAB} $HOME/scheduled_fetch.sh >/dev/null 2>&1") | crontab -
  echo "Crontab job added" >> $HOME/running.log
fi