DevOps 1st Project > Full CI/CD pipeline with Docker, GitHub Actions and Terraform 

## Overview

This project is a demonstration of my understanding of **DevOps principles** and **cloud-native deployment** workflows. It demonstrates:
- Docker containerization
CI/CD Automation with Github Actions
- Terraform Infrastructure as Code
- Simple Python web application

--- 

##  Tech Stack

| Tool | Purpose |
|------|---------|
| **Python + Flask** | Simple web application |
| **Docker** | Containerization for consistency |
| **GitHub Actions** | CI/CD pipeline automation |
| **Terraform** | Infrastructure as Code (IaC) |
| **AWS (optional)** | Cloud deployment target |

--- 

## How It Works 

```mermaid
flowchart LR
    A[Developer pushes code] --> B[GitHub Actions triggers]
    B --> C[Builds Docker image]
    C --> D[Runs tests inside container]
    D --> E[Container passes health check]
    E --> F[Ready for deployment]
    F --> G[Terraform provisions cloud VM]