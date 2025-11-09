#!/bin/bash

# start-tunnel.sh
# Small helper to start minikube tunnel with sudo and a clear message.
# This script runs `sudo minikube tunnel` and keeps it running in the foreground.

set -euo pipefail

SCRIPT_NAME=$(basename "$0")

echo "This script will run 'sudo minikube tunnel' and keep the tunnel open."
echo "You will be prompted for your password if sudo requires it."

echo "Starting minikube tunnel... (press Ctrl-C to stop)"

# Use exec so the sudo process replaces this shell - easier to stop with Ctrl-C
exec sudo minikube tunnel
