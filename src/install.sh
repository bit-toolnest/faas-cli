#!/bin/bash
set -e

echo "=== FAAS-CLI Installer Script ==="

if ! command -v faas-cli >/dev/null 2>&1; then
  echo "➡ Installing faas-cli..."
  curl -sSL https://cli.openfaas.com | sudo sh
else
  echo "✅ faas-cli already installed"
fi

echo "✅ Installation complete"
echo "➡ faas-cli version: $(faas-cli version | head -n 1)"
