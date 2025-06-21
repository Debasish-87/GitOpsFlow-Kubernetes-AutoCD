# 🚀 GitOpsFlow-Kubernetes-AutoCD

A fully automated GitOps pipeline using **ArgoCD** and **Kubernetes** to deploy a containerized static application directly from **GitHub**. Built for CI/CD enthusiasts, DevOps learners, and cloud-native professionals.

---

## 🎯 Objective

> Implement GitOps by syncing Kubernetes deployment states directly from a Git repository using ArgoCD.

---

## 🧱 Project Structure

```
GitOpsFlow-Kubernetes-AutoCD/
├── app/                # Sample static web app (Dockerized)
│   ├── index.html
│   └── Dockerfile
├── manifests/          # K8s Deployment & Service manifests (kustomized)
│   ├── deployment.yaml
│   ├── service.yaml
│   └── kustomization.yaml
├── scripts/            # ArgoCD install and app creation scripts
│   ├── install-argocd.sh
│   └── create-argocd-app.sh
├── docs/
│   └── gitops-workflow.md  # GitOps Notes
├── screenshots/        # Project screenshots (UI, sync, app)
├── setup.sh            # One-click setup script
└── README.md           # You are here ✅
```

---

## 🛠️ Tech Stack & Tools

- 🐳 Docker (app containerization)
- ☸️ Kubernetes via Minikube (local cluster)
- 🚀 ArgoCD (GitOps engine)
- 🐙 GitHub (source of truth)
- 🧰 Kustomize (manifest management)
- 🖥️ Bash scripting (automation)

---

## ⚡ Quickstart

### 🔁 One-Click Setup (Recommended)

```bash
git clone https://github.com/yourusername/GitOpsFlow-Kubernetes-AutoCD
cd GitOpsFlow-Kubernetes-AutoCD
./setup.sh
```

This script will:
- Start Minikube
- Build and push the Docker app
- Install ArgoCD
- Auto-create and sync the GitOps app
- Forward ArgoCD UI to [http://localhost:8080](http://localhost:8080)

### 🔐 ArgoCD Credentials

```bash
kubectl get secret argocd-initial-admin-secret -n argocd \
  -o jsonpath="{.data.password}" | base64 -d && echo
```

- Username: `admin`
- Password: (use command above)

---

## 🔄 GitOps Flow in Action

| Stage               | Description                                          |
|---------------------|------------------------------------------------------|
| 🌀 Init              | App manifests live in Git repo                      |
| 🎯 Watch             | ArgoCD syncs live K8s state with Git repo          |
| 🔀 Commit            | A simple `git commit` triggers app update          |
| ✅ Auto Sync         | ArgoCD auto-syncs without manual deployment         |

📸 **Screenshots** (stored in `screenshots/`):

| Feature               | Preview                                |
|------------------------|----------------------------------------|
| ArgoCD UI              | ![](screenshots/argocd-ui.png)         |
| Git Commit Trigger     | ![](screenshots/github-commit.png)     |
| Auto Sync Confirmation | ![](screenshots/sync-success.png)      |
| Live App               | ![](screenshots/browser-app.png)       |

---

## 🧠 Notes: What is GitOps?

GitOps is a DevOps practice that uses Git as the source of truth for declaring and automating infrastructure and application deployments.

> ✅ With Git as the single source of truth, and ArgoCD continuously syncing it to Kubernetes, we eliminate config drift and enable secure, automated, and auditable delivery.

📄 Read full explanation in [`docs/gitops-workflow.md`](docs/gitops-workflow.md)

---

## 💡 Use Cases

- Automating static app deployments
- Learning GitOps & ArgoCD hands-on
- Building secure & repeatable CI/CD pipelines

---

## 🧾 Resume Power Line

> Built **GitOpsFlow-Kubernetes-AutoCD**, a production-grade GitOps pipeline using ArgoCD and Kubernetes to deploy containerized apps directly from GitHub with auto-sync, version tracking, and CI/CD integration.

---

## 📌 Optional Enhancements

- [ ] Ingress + TLS via cert-manager
- [ ] GitHub Actions workflow to auto-update manifests
- [ ] ArgoCD Image Updater for dynamic image tag syncing
- [ ] Integration with Prometheus + Grafana for observability

---

## 👤 Maintainer

**Debasish Mohanty**  
DevSecOps | SRE | Cloud-Native Security  
- GitHub: [github.com/Debasish-87](https://github.com/Debasish-87)
- Docker Hub: [docker.com/u/debasish8787](https://hub.docker.com/u/debasish8787)
- Project Repo: [GitOpsFlow-Kubernetes-AutoCD](https://github.com/Debasish-87/GitOpsFlow-Kubernetes-AutoCD)

---

> 📢 Found it useful? Give it a ⭐️ on GitHub and share it with your DevOps crew!
