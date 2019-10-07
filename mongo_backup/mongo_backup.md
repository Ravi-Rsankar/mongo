# Backup mongo db nightly

#### Mongo backup script 
The backup script takes the backup of mongo db database and dumps in a folder created with the date  

#### Crontab
```
45 1 * * * <path to the mongo_bkup.sh file>
```
This script runs at 1:45 every night
