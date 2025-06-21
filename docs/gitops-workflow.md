## 📘 GitOps Workflow with ArgoCD on Kubernetes

### 🧩 What is GitOps?

GitOps is a modern approach to continuous deployment and infrastructure automation. It uses a Git repository as the **single source of truth** for defining the desired state of a Kubernetes cluster. Any changes to the application or infrastructure are made via Git commits, and a GitOps controller (like ArgoCD) continuously ensures the cluster state matches what's in Git.

---

### ⚙️ How ArgoCD Fits In

ArgoCD is a declarative, GitOps continuous delivery tool for Kubernetes. It watches a Git repository and automatically synchronizes your Kubernetes resources to reflect the latest commits.

✅ **Key Benefits**:

* Version-controlled deployments
* Automatic drift detection & correction
* Audit-ready, Git-based change history
* Promotes collaboration via Pull Requests

---

### 🔁 How I Set Up the GitOps Flow

1. **Kubernetes Setup**
   I used Minikube to create a local Kubernetes cluster.

2. **Application Dockerization**
   I containerized a simple NGINX-based static site and pushed the image to Docker Hub:

   ```
   debasish8787/gitopsflow-app:latest
   ```

3. **Manifests Repository**
   I created a GitHub repo to store Kubernetes manifests for deployment:

   ```
   https://github.com/Debasish-87/GitOpsFlow-Kubernetes-AutoCD
   ```

4. **ArgoCD Installation**
   I installed ArgoCD in the `argocd` namespace using official manifests, and exposed the UI via port-forwarding:

   ```
   kubectl port-forward svc/argocd-server -n argocd 8080:443
   ```

5. **ArgoCD App Creation**
   I created an ArgoCD Application pointing to the Git repo and set it to auto-sync:

   ```bash
   argocd app create gitopsflow-app \
     --repo https://github.com/Debasish-87/GitOpsFlow-Kubernetes-AutoCD.git \
     --path manifests \
     --dest-server https://kubernetes.default.svc \
     --dest-namespace default \
     --sync-policy automated
   ```

6. **Auto-Sync in Action**
   When I committed changes (like modifying `index.html` or updating the Docker image tag), ArgoCD automatically synced those changes to the cluster within seconds—no manual deployment required.

---

### 📺 Result

* ✅ ArgoCD continuously monitors the Git repo
* ✅ Cluster state auto-updated via Git commits
* ✅ Verified sync in ArgoCD UI with commit IDs & deployment tree
* ✅ Application health and status always visible

---

### 💡 Conclusion

This project demonstrates a real-world GitOps workflow where infrastructure is managed like code, promoting reliability, traceability, and automation. With ArgoCD, Kubernetes deployments become Git-driven and resilient by default.
