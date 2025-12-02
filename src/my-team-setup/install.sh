#!/bin/bash
set -e

PACKAGES="${PACKAGES:-requests numpy pandas}"

echo "Installing Python3..."
apt-get update
apt-get install -y python3 python3-pip python3-venv

echo "Installing Python packages: $PACKAGES"
pip3 install --break-system-packages $PACKAGES

echo "my-team-setup feature installed successfully!"
