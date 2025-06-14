#!/bin/bash
echo "Starting container..."
exec "$@"
while sleep 1000; do :; done
