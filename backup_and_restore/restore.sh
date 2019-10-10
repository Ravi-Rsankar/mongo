cd /opt/backups
fn=$(ls -t | head -n1)
echo $fn
tar -xvf $fn
fn1=$(ls -t | head -n1)
echo "---------------"
echo ${fn1%.*}
cd ${fn1%.*}
mongorestore --db knapsack --collection dump knapsack/bulk.bson
