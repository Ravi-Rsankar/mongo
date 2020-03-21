
# MongoDB Commands

##### Convert Bson file to Json format
```
bsondump --outFile file.json dir/file.bson
```
##### Import a json array into mongo collection
```
mongoimport --db dbname --collection colname --file file.json --jsonArray
```
##### Export a collection as Json file
```
mongoexport --collection colName --db dbname --out file.json
```
##### Export the database
```
mongodump -d <database_name> -o <directory_backup>
```
##### Restore the database
```
mongorestore -d <database_name> <directory_backup>
mongorestore  -d dbname -u usr -p paswd <diroctory_backup>
```
##### Mongo Logging In with username/password
```
mongo -u admin -p mongoadmin#123 --authenticationDatabase admin
mongo -u user -p mongosuer#123 dbname
```
