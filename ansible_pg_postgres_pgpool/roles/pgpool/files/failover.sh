#!/bin/bash
FAILED_NODE=$1
FAILED_HOST=$2
NEW_MASTER_HOST=$4

logger "[pgpool failover] Node $FAILED_NODE failed ($FAILED_HOST), promoting $NEW_MASTER_HOST"

if [ "$FAILED_NODE" = "0" ]; then
  ssh -T postgres@$NEW_MASTER_HOST "/usr/pgsql-15/bin/pg_ctl promote -D /var/lib/pgsql/15/data"
fi

exit 0
