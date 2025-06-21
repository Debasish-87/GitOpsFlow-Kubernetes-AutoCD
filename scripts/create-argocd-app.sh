#!/bin/bash

APP_NAME=gitopsflow-app
REPO_URL=https://github.com/Debasish-87/GitOpsFlow-Kubernetes-AutoCD.git
APP_PATH=manifests

echo "[INFO] Getting ArgoCD admin password..."
ARGOCD_PWD=$(kubectl get secret argocd-initial-admin-secret -n argocd \
  -o jsonpath="{.data.password}" | base64 -d)

echo "[INFO] Logging into ArgoCD CLI..."
argocd login localhost:8080 \
  --username admin \
  --password "$ARGOCD_PWD" \
  --insecure

echo "[INFO] Creating ArgoCD app..."
argocd app create $APP_NAME \
  --repo $REPO_URL \
  --path $APP_PATH \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default \
  --sync-policy automated

echo "[INFO] Syncing app now..."
argocd app sync $APP_NAME

echo "[INFO] GitOps application created and synced successfully!"
