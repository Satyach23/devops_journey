# DevOps Phase 1 – Docker + GitHub Actions CI

## 🚀 Project Overview
This repository demonstrates the basics of Docker and GitHub Actions as part of the DevOps learning journey.

### ✅ Features
- Four different shell scripts containerized using Docker:
  - `system_check1.sh`
  - `check2.sh`
  - `memory_check3.sh`
  - `cpu_check4.sh`
- CI workflow with GitHub Actions to:
  - Build Docker images.
  - Run and validate each script inside its own container.
  - Triggered automatically on `push` or `pull_request`.

## 🐳 Docker
Each script has its own `Dockerfile`. Example:
```Dockerfile
FROM ubuntu:latest
COPY system_check1.sh /system_check1.sh
RUN chmod +x /system_check1.sh
CMD ["/system_check1.sh"]
