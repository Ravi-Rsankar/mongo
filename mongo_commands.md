
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
##### Export a collection as Json file as Json array
```
mongoexport --collection colName --db dbname --out file.json --jsonArray
```
##### Export a collection as Json file without _id
```
mongoexport --db dbname --collection col | sed '/"_id":/s/"_id":[^,]*,//' > file.json
```
##### Export the database with query
```
mongoexport --collection colname --db dbname --out file.json -q='{"_id": ObjectId("44676545eger565")}'
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
##### Get all duplicates in a collection
```
db.collection.aggregate(
    {"$group" : { "_id": "$name", "count": { "$sum": 1 } } },
    {"$match": {"_id" :{ "$ne" : null } , "count" : {"$gt": 1} } }, 
    {"$project": {"name" : "$_id", "_id" : 0} }
)
```
##### Delete all duplicates in a collection but not the original record
```
db.col.aggregate([
 {
     "$group": {
         _id: {projectId: "$field"},
         dups: { $addToSet: "$_id" } ,
         count: { $sum : 1 }
     }
 },
 {
     "$match": {
         count: { "$gt": 1 }
     }
 }
]).forEach(function(doc) {
   doc.dups.shift();
   db.col.remove({
       _id: {$in: doc.dups}
   });
})
```
