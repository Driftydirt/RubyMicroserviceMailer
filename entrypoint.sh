#!/bin/bash
set -e

#Remove a potentally pre-existing server.pid for Rails.
rm -f /tmp/pids/server.pid

# Sleep for 14 seconds to allow mysql db to setup and connect
# sleep 14
# Then exec the containers main process (what's set as CMD in the Dockerfile).
exec "$@"
