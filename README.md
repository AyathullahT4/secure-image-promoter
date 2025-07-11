# 🔒 Secure Image Promoter

A CI pipeline that builds a Python Flask application into a Docker image and scans it using [Trivy](https://github.com/aquasecurity/trivy) for critical and high-severity vulnerabilities. The pipeline automatically halts if issues are found and uploads a scan report as an artifact.

---

## 🚀 Project Overview

This project demonstrates a **security-first container promotion strategy** using:

- **Python + Flask**: Minimal REST API application.
- **Docker**: Containerizes the application.
- **GitHub Actions**: Automates build and vulnerability scanning.
- **Trivy**: Detects OS and dependency-level vulnerabilities in the container image.

---

## 🧪 Pipeline Workflow

> Runs on every push to `main` branch.

1. ✅ **Check out source code**
2. 🐳 **Build Docker image**: Tagged as `secure-app:latest`
3. 🧩 **Install Trivy**
4. 🔍 **Scan the Docker image** for HIGH and CRITICAL vulnerabilities
5. 🚫 **Fail the pipeline** if any issues are found
6. 📎 **Upload vulnerability report** (`trivy-report.txt`) as an artifact

---

## 📸 Preview

<img width="1032" height="797" alt="image" src="https://github.com/user-attachments/assets/038b0920-3355-4317-805c-1d772ef9f0fb" />


<img width="1875" height="872" alt="image" src="https://github.com/user-attachments/assets/dfbff7cc-58d4-47b1-ade3-2892b5fa503b" />


---

## 📂 Project Structure

```bash
.
├── app.py                  # Flask app with basic /health endpoint
├── Dockerfile              # Builds secure-app:latest container image
├── .dockerignore           # Excludes unnecessary files
└── .github
    └── workflows
        └── secure-image-scan.yml   # GitHub Actions workflow for scanning
