#!/bin/sh

CMD_DUMP=/usr/local/mysql/bin/mysqldump
MYSQLDIR=/usr/local/mysql/data
BACKUPDIR=/Users/.../bkp_bancos

MYSQLUSER=""
MYSQLPASS=""

ls -1 $MYSQLDIR | while read db;
do
  if [ -d $MYSQLDIR/$db ]; then
    echo -n dumping MySQL database $db ...
    $CMD_DUMP -u $MYSQLUSER --password=$MYSQLPASS $db > $BACKUPDIR/$db.sql;
    echo done.
  fi
done
