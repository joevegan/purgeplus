#!/bin/bash

log="/var/log/PurgePlus"
echo $(date)" Starting PrugePlus" >> $log
while true
        do
        echo $(date) >> $log
        q=`mysql -s -u purgeu -ppurgepass purgePlus -e "select * from ..."`
        # finds all modify to use query result in find, and exception
        # find . ! -name 'file.txt' -type f -exec rm -f {} +
        echo $q >> $log
        sleep 5
done
