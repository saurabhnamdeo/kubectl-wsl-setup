Here’s a **README.md** file for your GitHub repository containing installation steps for both **kubectl and Minikube on WSL Ubuntu**:

---


# **Kubernetes Setup on WSL Ubuntu** 🚀

## **Overview**
This repository provides step-by-step instructions to install **kubectl** and **Minikube** on **WSL Ubuntu**, enabling seamless Kubernetes management on a Windows system.

## **Prerequisites**
Before installing **kubectl** and **Minikube**, ensure you have:
- **WSL 2** installed on Windows.
- A **Linux distribution** (Ubuntu recommended).
- Basic knowledge of Linux commands.

---

## **1. Install kubectl**
### **Download and Install kubectl**
Run the following command in your WSL terminal to download the latest version:
```bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
```

### **Make kubectl Executable**
```bash
chmod +x ./kubectl
```

### **Move kubectl to System Path**
```bash
sudo mv ./kubectl /usr/local/bin/kubectl
```

### **Verify Installation**
Check if kubectl is installed correctly:
```bash
kubectl version --client
```

### **Enable Autocomplete (Optional)**
```bash
echo 'source <(kubectl completion bash)' >> ~/.bashrc
source ~/.bashrc
```

---

## **2. Install Minikube**
### **Install Docker in WSL**
Minikube requires Docker to run Kubernetes locally. Install it using:
```bash
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER && newgrp docker
```

### **Download and Install Minikube**
```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

### **Start Minikube**
Run Minikube with Docker:
```bash
minikube start --driver=docker
```

### **Verify Installation**
Check if Minikube is running:
```bash
kubectl cluster-info
kubectl get nodes
```

---

## **Usage**
Once installed, you can start managing your Kubernetes clusters using commands like:
```bash
kubectl get nodes
kubectl cluster-info
kubectl apply -f my-deployment.yaml
```
To manage Minikube services:
```bash
minikube dashboard
minikube service <service-name>
```

---

## **Resources**
- [Official Kubernetes Documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
- [Minikube Documentation](https://minikube.sigs.k8s.io/docs/start/)
- [WSL Installation Guide](https://learn.microsoft.com/en-us/windows/wsl/install)

---

This file can be named **README.md** and added to your GitHub repo! 🚀 Let me know if you need any modifications or additional details. 😊
```
