#!/usr/bin/env bash
set -euo pipefail

# Intended for a fresh Ubuntu application server.
if [[ $EUID -ne 0 ]]; then
  echo "Run with sudo: sudo bash scripts/install-prestashop.sh"
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y apache2 curl ca-certificates \
  php libapache2-mod-php php-cli php-common php-curl \
  php-gd php-intl php-mbstring php-mysql php-xml \
  php-zip php-bcmath unzip

systemctl enable --now apache2

echo
echo "Apache and PHP packages installed."
echo "NEXT: download a verified official PrestaShop release,"
echo "configure Apache, and complete the installer using the"
echo "database server's private IP."
