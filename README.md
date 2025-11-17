AWAKE 7.0
Cloud-Native Excellence: 2-Tier Application (AWAKE 7.0 Capstone Project)
    
This project delivers a resilient, secure, cloud-native 2-tier application, built as the final Capstone for the AWAKE 7.0 Cloud Engineering Bootcamp.

📐 Architecture Diagram (Mermaid)
flowchart TD
    subgraph Public_Subnet
        ALB[Load Balancer]
    end

    subgraph Private_Subnet
        EC2[EC2 Backend Server]
        DB[(Managed Database)]
    end

    User((User)) --> ALB
    ALB --> EC2
    EC2 --> DB


🖼 Screenshots
Add your real screenshots later.
🌐 Frontend (localhost:3000)
[ Insert screenshot ]
🐍 Backend API (localhost:5000)
[ Insert screenshot ]
☁️ AWS Infrastructure (VPC / EC2 / S3)
[ Insert screenshot ]

🚀 Project Summary
This system demonstrates core cloud-native engineering skills:

Dockerized React frontend

Dockerized Python backend API

Decoupled 2-tier architecture

Automated deployment with Terraform


Cloud infrastructure on AWS:

Custom VPC

Public + Private Subnets

Internet Gateway & Route Tables

Security Groups

EC2 for backend

S3 static hosting for frontend

Load Balancer

Secure and resilient design



📁 Project Structure
CapstoneProject/
├── frontend/
├── backend/
├── docker-compose.yml
└── terraform/
    ├── main.tf
    ├── provider.tf
    ├── variables.tf
    ├── outputs.tf


🐳 Run the Application Locally (Docker Compose)
Start the full stack:
docker compose up --build

Stop:
docker compose down

Frontend: http://localhost:3000
Backend: http://localhost:5000

☁️ Deploy the Infrastructure (Terraform)
Initialize Terraform:
cd terraform
terraform init

Validate:
terraform validate

Plan:
terraform plan

Apply to AWS (after IAM credentials are ready):
terraform apply


🔐 Security Highlight

No plaintext credentials

Backend runs in a private subnet

Internet exposure limited to the Load Balancer

S3 hosting is strictly for frontend static files

IAM least-privilege (once applied)

Network segmentation with layered security groups



🧪 Testing
API Test:
curl http://localhost:5000/

UI Test:
Visit:
http://localhost:3000


👩‍💻 Author
Phantom
Cloud Engineering Track
AWAKE 7.0 — 2025 Capstone Project

