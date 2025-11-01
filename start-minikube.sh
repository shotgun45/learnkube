#!/bin/bash

# Minikube startup script
# This script starts minikube with CORS configuration for boot.dev

echo "Starting minikube with CORS configuration..."

# Start minikube with CORS allowed origins
minikube start --extra-config "apiserver.cors-allowed-origins=["http://boot.dev"]"

# Check if minikube started successfully
if [ $? -eq 0 ]; then
    echo "✅ Minikube started successfully!"
    echo "📋 Getting cluster info..."
    kubectl cluster-info
else
    echo "❌ Failed to start minikube"
    exit 1
fi