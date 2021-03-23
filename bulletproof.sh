#!/bin/sh 
export PGHOSTADDR="172.17.0.1"
export PGUSER="postgres"
export PGDATABASE="rssfeeds"
export PGPASSWORD="admin11"
export PGPORT=5432

   
hostname=`ringzero`
# Dump DBs
  date=`date +"%Y%m%d_%H%M%N"`
  filename="/home/liminalcrab/Projects/fucking-bulletproof/${hostname}_${db}_${date}.sql"
  pg_dump rssfeeds >  $filename 2>&1

cd /home/liminalcrab/Projects/fucking-bulletproof

git add -A
git commit -p -m "${date}"
git push


exit 0