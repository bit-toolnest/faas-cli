#!/bin/bash
set -e

echo "=== FAAS-CLI Uninstaller Script ==="

if command -v faas-cli >/dev/null 2>&1; then
  echo "➡ UnInstalling faas-cli..."
  sudo apt remove --purge faas-cli -y || true
else
  echo "✅ faas-cli was not installed"
fi

echo "➡ Running apt cleanup..."
sudo apt autoremove -y
sudo apt clean

echo "🎯 faas-cli uninstall process finished!"
