#!/bin/bash

# Update system and install dependencies
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl apt-transport-https

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install Minikube
echo "Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

# Verify installation
echo "Checking versions..."
kubectl version --client
minikube version

echo "Installation complete! 🚀"
