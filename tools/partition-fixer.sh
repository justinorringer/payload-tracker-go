#!/bin/bash

./app-common-bash > /tmp/vars.sh
source /tmp/vars.sh

PGPASSWORD=$CLOWDER_DATABASE_PASSWORD psql -h $CLOWDER_DATABASE_HOSTNAME -U $CLOWDER_DATABASE_USERNAME -d $CLOWDER_DATABASE_NAME -c "SELECT create_partition('20221019', '20221020');"
