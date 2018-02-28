#!/bin/bash
set -eo pipefail
shopt -s nullglob

mkdir -p ${LOCAL}

echo "setting cosfs config..."
echo ${BUCKET}:${SECRETID}:${SECRETKEY} > /etc/passwd-cosfs


echo "running cosfs..."
cosfs ${APPID}:${BUCKET} ${LOCAL} -ourl=${REMOTE} -odbglevel=${DEBUGLEVEL} -oallow_other

echo "$@"
exec "$@"
