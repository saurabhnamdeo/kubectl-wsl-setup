
---

```bash
#!/bin/bash

# Uninstall kubectl from WSL Ubuntu
# Author: Saurabh
# Description: This script removes kubectl and Kubernetes configuration files

set -e  # Exit on error

echo "🚀 Starting kubectl Uninstallation..."

# Step 1: Remove kubectl Binary
echo "🗑️ Removing kubectl binary..."
sudo rm -rf /usr/local/bin/kubectl

# Step 2: Remove Kubernetes Configuration
echo "🧹 Cleaning up Kubernetes config..."
rm -rf ~/.kube

# Step 3: Verify Uninstallation
echo "✅ Verifying removal..."
which kubectl || echo "✅ kubectl has been successfully uninstalled!"

echo "🎉 kubectl uninstallation completed!"
```

---

