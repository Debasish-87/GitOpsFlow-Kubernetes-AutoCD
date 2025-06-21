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

# Optional: Delete existing app (uncomment if needed)
# echo "[INFO] Deleting existing app if present..."
# argocd app delete $APP_NAME --yes || true

echo "[INFO] Creating ArgoCD app with auto-sync..."
argocd app create $APP_NAME \
  --repo $REPO_URL \
  --path $APP_PATH \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace default \
  --sync-policy automated \
  --self-heal \
  --auto-prune

echo "[INFO] Syncing app now..."
argocd app sync $APP_NAME

echo "[INFO] Verifying app status..."
argocd app get $APP_NAME

echo "✅ GitOps application '$APP_NAME' created and synced with auto-sync enabled!"
