#!/bin/sh
DIR=`date +%m%d%y`
DEST=/home/ubuntu/mongo_backups/$DIR
mkdir $DEST
mongodump -h <your_database_host> -d <your_database_name> -u <username> -p <password> -o $DEST