#!/usr/bin/env bash
set -euo pipefail

# Intended for a fresh Ubuntu database server.
# Run interactively; do not put passwords in this script.
if [[ $EUID -ne 0 ]]; then
  echo "Run with sudo: sudo bash scripts/install-database.sh"
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y mariadb-server

systemctl enable --now mariadb

echo
echo "MariaDB installed."
echo "NEXT: secure MariaDB and create the application database/user."
echo "Bind MariaDB to the private interface only."
echo "Allow TCP 3306 only from the application server security group."
echo "Do not expose port 3306 to the public internet."
