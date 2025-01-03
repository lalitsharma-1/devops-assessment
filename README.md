# DevOps Assessment Task

## Overview
This required your access credentials for aws account.
This project deploys a Node.js web application on an AWS Kubernetes cluster with infrastructure provisioned using Terraform. It includes monitoring with Prometheus and an SSL-secured LoadBalancer.

## Steps to Deploy

### 1. Prerequisites
- Docker
- AWS CLI
- Terraform
- kubectl
- Helm

### 1. Clone the Repository
```bash
git clone <REPO_URL>
cd devops-assessment

2. Build and Push Docker Image
docker build -t <DOCKER_IMAGE_URL> .
docker push <DOCKER_IMAGE_URL>

3. Provision Infrastructure
terraform init
terraform apply -auto-approve

4. Deploy Kubernetes Resources
kubernetes
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

6. Set Up Monitoring
helm install prometheus prometheus-community/prometheus

7. Run Load Test
k6 run load-test.js

8. Cleanup
terraform destroy -auto-approve

