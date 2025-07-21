#!/bin/bash

FAILED_NODE_ID=$1
FAILED_HOST=$2
FAILED_PORT=$3
FAILED_DATA=$4
NEW_MASTER_ID=$5
NEW_MASTER_HOST=$6
OLD_MASTER_ID=$7
NEW_MASTER_PORT=$8
NEW_MASTER_DATA=$9

echo "[Failover] failed node: $FAILED_NODE_ID, promoting node: $NEW_MASTER_ID" >> /tmp/failover.log

/usr/pgsql-15/bin/pg_ctl promote -D "$NEW_MASTER_DATA" >> /tmp/failover.log 2>&1