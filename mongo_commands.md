
# MongoDB Commands

##### Convert Bson file to Json format
```
bsondump --outFile equipment1.json exspv2/equipment.bson
```
##### Import a json array into mongo collection
```
mongoimport --db exspv2 --collection equipment --file equipment.json --jsonArray
```
##### Export a collection as Json file
```
mongoexport --collection equipment --db exspv3 --out equipment.json
```
##### Export the database
```
mongodump -d <database_name> -o <directory_backup>
```
##### Restore the database
```
mongorestore -d <database_name> <directory_backup>
```