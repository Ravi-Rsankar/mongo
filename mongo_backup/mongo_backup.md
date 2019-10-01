# Backup mongo db nightly

#### Mongo backup script 
The backup script takes the backup of mongo db database and dumps in a folder created with the date  

#### Crontab
```
45 1 * * * ../../scripts/db_backup.sh
```
This script runs at 1:45 every night