# 🚀 GitOpsFlow-Kubernetes-AutoCD

A fully automated GitOps pipeline using ArgoCD and Kubernetes to deploy a containerized static app directly from GitHub. One-click setup with setup.sh!

---

## 📌 Project Objective

> Implement GitOps by syncing Kubernetes deployment states directly from a Git repository using ArgoCD.

---

## 📁 Project Structure

```

GitOpsFlow-Kubernetes-AutoCD/
├── app/                # Sample static web app (Dockerized)
├── manifests/          # Kubernetes deployment + service YAMLs
├── scripts/            # ArgoCD installer and GitOps automation
├── setup.sh            # One-click project launcher
└── README.md

````

---

## ⚙️ Tools Used

- Kubernetes (Minikube)
- ArgoCD
- Docker
- GitHub
- Kustomize
- Bash Scripting

---

## 🚀 How to Run This Project

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/GitOpsFlow-Kubernetes-AutoCD
   cd GitOpsFlow-Kubernetes-AutoCD
````

2. Run the full setup:

   ```bash
   ./setup.sh
   ```

3. Access ArgoCD UI:

   ```
   http://localhost:8080
   ```

4. Login using:

   * Username: admin
   * Password:

     ```bash
     kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
     ```

---

## 🔄 GitOps in Action (Screenshots)

| Feature           | Screenshot Placeholder                  |
| ----------------- | --------------------------------------- |
| ArgoCD UI         | ![ArgoCD UI](screenshots/argocd-ui.png) |
| Auto-sync Trigger | ![Sync](screenshots/sync-action.png)    |
| Deployed App      | ![App](screenshots/app-live.png)        |

Upload your screenshots in a folder: screenshots/

---

## 🧠 GitOps Explained

* All K8s manifests live in GitHub
* ArgoCD watches the repo & auto-syncs changes
* Git commit = trigger deployment

---

## 📄 Resume Line

> Built GitOpsFlow-Kubernetes-AutoCD, a fully automated GitOps pipeline using ArgoCD and Kubernetes to deploy containerized apps directly from GitHub with auto-sync, versioned delivery, and CI/CD integration.

---

## 📌 To Do (Optional Enhancements)

* Add ingress with custom domain
* Add image tag auto-update with ArgoCD Image Updater
* Use GitHub Actions to update manifests via CI

---

## 📬 Contact

> Project by \[Your Name]
> DockerHub: [https://hub.docker.com/u/debasish8787](https://hub.docker.com/u/debasish8787)
> GitHub: [https://github.com/yourusername](https://github.com/yourusername)

```

—

📸 Step 8: Add Screenshots

Take screenshots of:

1. ArgoCD UI after deployment (App synced)
2. GitHub commit (version update)
3. Browser showing deployed app
4. Optional: ArgoCD CLI output

Put them in a screenshots/ folder locally or in your GitHub repo.

—
