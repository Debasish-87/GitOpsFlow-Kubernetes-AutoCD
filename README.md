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


### ArgoCD UI              

![48a8ee1e-e8b1-4bc2-9389-95f8c50d6e93](https://github.com/user-attachments/assets/936f7952-f6d1-4a0f-8844-2f6a71151fe0)

### ArgoCD Event Status

![81f6cf44-e152-4ba7-8646-ee4f539f8261](https://github.com/user-attachments/assets/da445fc4-ae06-4e50-af40-ceab0e257e26)

### Auto Sync Confirmation 

![a3fd4dbd-a97a-4f5f-b9fe-6d86b497d781](https://github.com/user-attachments/assets/bbe2fb70-ba41-4b46-8090-052d822981c7)

### Minikube Service Status

![5ce197f2-432b-4c69-9d03-57fb38370df9](https://github.com/user-attachments/assets/cffb46ae-8612-4279-b5a4-19165e290488)

### Live App               

![f805baaf-5e4e-464b-80da-73f461c9e9a4](https://github.com/user-attachments/assets/2c3c5269-dd8e-48d3-aac0-9652f3fa36c6)

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

## 👤 Maintainer

**Debasish Mohanty**  
DevSecOps | SRE | Cloud-Native Security  
- GitHub: [github.com/Debasish-87](https://github.com/Debasish-87)
- Docker Hub: [docker.com/u/debasish8787](https://hub.docker.com/u/debasish8787)
- Project Repo: [GitOpsFlow-Kubernetes-AutoCD](https://github.com/Debasish-87/GitOpsFlow-Kubernetes-AutoCD)

---

> 📢 Found it useful? Give it a ⭐️ on GitHub and share it with your DevOps crew!
