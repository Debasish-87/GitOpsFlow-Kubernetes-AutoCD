#!/bin/bash

echo "[1/5] Starting Minikube..."
minikube start --driver=docker

echo "[2/5] Building Docker image..."
cd app
docker build -t debasish8787/gitopsflow-app:latest .
docker push debasish8787/gitopsflow-app:latest
cd ..

echo "[3/5] Installing ArgoCD..."
bash scripts/install-argocd.sh

echo "[4/5] Waiting for ArgoCD to be ready..."
sleep 30

echo "[5/5] Creating GitOps app in ArgoCD..."
bash scripts/create-argocd-app.sh

echo "✅ Setup complete!"
echo "🔗 Visit ArgoCD UI at: http://localhost:8080"
