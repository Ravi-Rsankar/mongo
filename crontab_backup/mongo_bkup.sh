#!/bin/sh
currentTime=datetime.datetime.now().strftime("%Y%m%d")
DIR=currentTime
DEST=/home/ubuntu/mongo_backups/$DIR
mkdir $DEST
mongodump -d exspv2 -u exactspaceapi -p exactapi123 -o $DEST
