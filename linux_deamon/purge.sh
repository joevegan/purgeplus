#!/bin/bash

log="/var/log/PurgePlus"
echo $(date)" Starting PrugePlus" >> $log
while true
  do
  # for each purge/exception
  mysql -s -u purgeu -ppurgepass purgePlus -e "select p.dir as dir, \
                                              group_concat(distinct '-name ', pf.fileName separator ' -o ') as files, \
                                              group_concat(distinct pe.fileName separator '\|') as exceptions, \
                                              retentionDays as days \
                                                from purges p \
                                                left join purgeFiles pf on pf.purgeId = p.id \
                                                left join purgeExceptions pe on pe.purgeId = p.id \
                                                  where systemId = 1 \
                                                  and enabled = 1 \
                                                    group by p.id" | while IFS="$( echo -e '\t' )" read dir files exceptions days; do
  echo "[PurgePlus][exec][$(date)] find $dir -type f $files -mtime +$days | egrep -v $exceptions | xargs rm -f" >> $log
  find $dir -type f $files -mtime +$days | egrep -v $exceptions | xargs rm -f
  done
  sleep 200
done
