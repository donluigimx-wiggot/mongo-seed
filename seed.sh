#!/bin/bash

cd /home

curl https://raw.githubusercontent.com/donluigimx-wiggot/mongo-seed/master/state.json > state.json
curl https://raw.githubusercontent.com/donluigimx-wiggot/mongo-seed/master/city.json > city.json
curl https://raw.githubusercontent.com/donluigimx-wiggot/mongo-seed/master/settlement.json > settlement.json

echo "Uploading seeds to $DB_HOST"

mongoimport --host $DB_HOST --db wiggot --collection State --file /home/state.json
mongoimport --host $DB_HOST --db wiggot --collection City --file /home/city.json
mongoimport --host $DB_HOST --db wiggot --collection Settlement --file /home/settlement.json
