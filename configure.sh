#!/bin/bash
SCRIPT_DIR=`cd $(dirname $0); pwd`

SECRET="$SCRIPT_DIR/etc/secret"
echo "Choose a DNS in this list:"
ID=0
DNS_LIST=`ls $SCRIPT_DIR/app/etc/cache | sed 's:.conf$::'`
DNS_LIST=($DNS_LIST)
for DNS in ${DNS_LIST[@]}; do
	ID=$((ID+1))
	echo "  $ID.	$DNS"
done
DEFAULT_ID=1
read -p "ID [1]: " ID
ID=${ID:-$DEFAULT_ID}
ID=$((ID-1))
echo "DNS=${DNS_LIST[$ID]}" > $SECRET
