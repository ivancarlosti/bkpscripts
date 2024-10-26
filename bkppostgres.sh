#!/bin/bash

FILENAMEDATE=$(date +%Y-%m-%dT%H-%M-%S) # date/time formula to compose filename
DOCKERNAME=postgres                     # docker name to access it and send pg_all command
PGUSER=postroot                         # username with access to gather all databases using pg_dumpall, usually root
RELATPATH=/backups                      # relative path folder where the files will be stored
RETDAYS=3                               # number of days to retain files before deletion

docker exec -i $DOCKERNAME pg_dumpall -U $PGUSER > .$RELATPATH/$FILENAMEDATE.sql
tar -czf .$RELATPATH/$FILENAMEDATE-DB.tar.gz --remove-files .$RELATPATH/$FILENAMEDATE.sql
find .$RELATPATH -type f -mtime +$RETDAYS -exec rm {} \;
chmod 0600 .$RELATPATH/$FILENAMEDATE-DB.tar.gz
