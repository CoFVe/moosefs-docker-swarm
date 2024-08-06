#!/usr/bin/env bash

CMD="mfsmount /mnt/moosefs -f"

#Add host if set
if [ ! -z ${MASTER_HOST+X} ];
    then
        CMD="$CMD -H $MASTER_HOST -o allow_other"
fi

exec $CMD
