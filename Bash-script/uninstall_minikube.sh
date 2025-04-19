#!/bin/bash

# Uninstall Minikube from WSL Ubuntu
# Author: Saurabh
# Description: This script removes Minikube, configurations, and dependencies

set -e  # Exit on error

echo "🚀 Starting Minikube Uninstallation..."

# Step 1: Stop and Delete Minikube Cluster
echo "🔴 Stopping and deleting Minikube..."
minikube stop
minikube delete

# Step 2: Remove Minikube Binary
echo "🗑️ Removing Minikube binary..."
sudo rm -rf /usr/local/bin/minikube

# Step 3: Remove Minikube Configuration and Data
echo "🧹 Cleaning up Minikube config..."
rm -rf ~/.minikube

# Step 4: Remove Kubernetes Configuration Files
echo "🧹 Cleaning up Kubernetes config..."
rm -rf ~/.kube

# Step 5: (Optional) Uninstall Docker (If Installed for Minikube)
echo "🔴 Uninstalling Docker..."
sudo apt-get remove --purge -y docker-ce
sudo apt-get autoremove -y

# Step 6: Verify Uninstallation
echo "✅ Verifying removal..."
which minikube || echo "✅ Minikube has been successfully uninstalled!"

echo "🎉 Minikube uninstallation completed!"
