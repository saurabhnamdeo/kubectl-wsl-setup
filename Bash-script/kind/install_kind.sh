#!/bin/bash

# Update system and install dependencies
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl docker.io

# Install kind
echo "Installing kind..."
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Configure Docker for WSL
echo "Configuring Docker..."
sudo usermod -aG docker $USER
newgrp docker

# Verify installation
echo "Checking versions..."
kind version

echo "Kind installation complete! 🚀"
