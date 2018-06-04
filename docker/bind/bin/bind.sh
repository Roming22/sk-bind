#!/bin/bash
SCRIPT_DIR=`cd $(dirname $0); pwd`

# Use opendns by default
export DNS=${DNS:-opendns}

ETC_DIR=`cd $SCRIPT_DIR/../etc; pwd`
for SOURCE in `find $ETC_DIR -type f`; do
	TARGET=`echo $SOURCE | sed "s:$ETC_DIR:/etc/bind:"`
	[[ ! -e `dirname $TARGET` ]] && mkdir -p `dirname $TARGET`
	envsubst < $SOURCE > $TARGET
done
 
sudo named -g -u bind
exit $?
