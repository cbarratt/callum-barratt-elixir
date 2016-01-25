#!/bin/bash
set -e

if [ "$1" = 'server' ]; then
  MIX_ENV=prod PORT=4000 mix compile && mix phoenix.server
fi

exec "$@"
