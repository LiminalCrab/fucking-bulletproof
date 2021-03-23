#!/bin/sh 
export PGHOSTADDR=""
export PGUSER=""
export PGDATABASE=""
export PGPASSWORD=""
export PGPORT=5432

   
hostname=`ringzero`
# Dump DBs
  date=`date +"%Y%m%d_%H%M%N"`
  filename="/home/liminalcrab/Projects/fucking-bulletproof/${hostname}_${db}_${date}.sql"
  pg_dump rssfeeds >  $filename 2>&1

exit 0

