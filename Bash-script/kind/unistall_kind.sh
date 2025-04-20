#!/bin/bash

# Uninstall Minikube
echo "Removing Minikube..."
sudo rm -f /usr/local/bin/minikube

# Uninstall kubectl
echo "Removing kubectl..."
sudo rm -f /usr/local/bin/kubectl

# Clean up remaining packages
echo "Cleaning up system..."
sudo apt remove -y docker.io
sudo apt autoremove -y
sudo apt clean

echo "Uninstallation complete! 🚀"
