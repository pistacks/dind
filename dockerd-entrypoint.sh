#!/bin/sh
set -e

if [ "$#" -eq 0 -o "${1:0:1}" = '-' ];
  then
  set -- dockerd \
         --host=unix:///var/run/docker.sock \
         --host=tcp://0.0.0.0:2375 \
	 --log-level=error \
         "$@"
fi

if [ "$1" = 'docker' -a "$2" = 'daemon' ];
  then
  set -- sh "$(which dind)" "$@"
fi

exec "$@"
