#!/bin/bash

echo "[INFO] Creating ArgoCD namespace..."
kubectl create namespace argocd || echo "Namespace already exists."

echo "[INFO] Installing ArgoCD..."
kubectl apply -n argocd \
  -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "[INFO] Waiting for ArgoCD pods to become Ready..."
kubectl wait --for=condition=Ready pods --all -n argocd --timeout=180s

echo "[INFO] ArgoCD installed."

# Optional: expose ArgoCD UI locally
echo "[INFO] Port-forwarding ArgoCD UI to http://localhost:8080 ..."
kubectl port-forward svc/argocd-server -n argocd 8080:443 &
