DevOps 1st Project > Full CI/CD pipeline with Docker, GitHub Actions and Terraform 

## Overview

This project is a demonstration of my understanding of **DevOps principles** and **cloud-native deployment** workflows. It demonstrates:
- Docker containerization
CI/CD Automation with Github Actions
- Terraform Infrastructure as Code
- Simple Python web application

--- 

## Tech Stack | Tool | Purpose | 
|------|---------| 
| **Python + Flask** | Web Application | 
| **Docker** | Containerization | 
| **GitHub Actions** | CI/CD Pipeline | 
| **Terraform** | Infrastructure as Code (IaC) | 
| **AWS (optional)** | Cloud Deployment |

--- 

## How It Works 

flowchart LR 
    A[Developer commits code] --> B[GitHub Actions gets triggered]
    B --> C[Create a Docker image]
    C --> D[Test in Container]
    D --> E[Container health check succeeded]
    E --> F [Ready for deployment]
    F --> G[Terraform will provision the cloud VM]