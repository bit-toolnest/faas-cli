#!/bin/bash
set -e

echo "=== FAAS-CLI Installer Script ==="
echo "This script should install all required components for the tool."

# Example steps (replace with real commands):
# 1. Install system packages
#    sudo apt update && sudo apt install -y <package>

# 2. Configure environment variables
#    echo "export TOOL_HOME=/opt/tool" | sudo tee -a /etc/environment

# 3. Start services or background processes
#    sudo systemctl enable tool.service
#    sudo systemctl start tool.service

# Install faas-cli only if not installed
if ! command -v faas-cli >/dev/null 2>&1; then
  echo "➡ Installing faas-cli..."
  curl -sSL https://cli.openfaas.com | sudo sh
else
  echo "✅ faas-cli already installed"
fi

echo "✅ Installation complete"
