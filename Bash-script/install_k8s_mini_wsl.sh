#!/bin/bash

# Kubernetes Setup on WSL Ubuntu
# Author: Saurabh
# Description: This script installs kubectl and Minikube in WSL Ubuntu

set -e  # Exit immediately if a command fails

echo "🚀 Starting Kubernetes Setup on WSL Ubuntu..."

# Step 1: Install Dependencies
echo "🔧 Installing required packages..."
sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Step 2: Install Docker
echo "🐳 Installing Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER && newgrp docker

# Step 3: Install kubectl
echo "📦 Downloading and installing kubectl..."
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Step 4: Verify kubectl installation
echo "✅ Verifying kubectl installation..."
kubectl version --client

# Step 5: Install Minikube
echo "⚡ Downloading and installing Minikube..."
curl -LO "https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Step 6: Start Minikube
echo "🚀 Starting Minikube..."
minikube start --driver=docker

# Step 7: Verify Minikube installation
echo "🔍 Checking Minikube status..."
kubectl cluster-info
kubectl get nodes

echo "🎉 Kubernetes setup on WSL Ubuntu completed successfully!"
