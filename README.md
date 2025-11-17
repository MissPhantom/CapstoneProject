### AWAKE 7.0
#### Cloud-Native Excellence: 2-Tier Application (AWAKE 7.0 Capstone Project)
    
This project delivers a resilient, secure, cloud-native 2-tier application, built as the final Capstone for the AWAKE 7.0 Cloud Engineering Bootcamp.

### 📐 Architecture Diagram (Mermaid)
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


### 🚀 Project Summary
# This system demonstrates core cloud-native engineering skills:

Dockerized React frontend
Dockerized Python backend API
Decoupled 2-tier architecture
Automated deployment with Terraform
# Cloud infrastructure on AWS:

Custom VPC
Public + Private Subnets
Internet Gateway & Route Tables
Security Groups
EC2 for backend
S3 static hosting for frontend
Lad Balancer
Secure and resilient design



## 📁 Project Structure
CapstoneProject/
├── frontend/
├── backend/
├── docker-compose.yml
└── terraform/
    ├── main.tf
    ├── provider.tf
    ├── variables.tf
    ├── outputs.tf


### 🐳 Run the Application Locally (Docker Compose)
Start the full stack:
docker compose up --build

Stop:
docker compose down

Frontend: http://localhost:3000
Backend: http://localhost:5000

## ☁️ Deploy the Infrastructure (Terraform)
Initialize Terraform:
cd terraform
terraform init

Validate:
terraform validate

Plan:
terraform plan

Apply to AWS (after IAM credentials are ready):
terraform apply


### 🔐 Security Highlight

No plaintext credentials

Backend runs in a private subnet

Internet exposure limited to the Load Balancer

S3 hosting is strictly for frontend static files

IAM least-privilege (once applied)

Network segmentation with layered security groups



## 🧪 Testing
API Test:
curl http://localhost:8000/

UI Test:
Visit:
http://localhost:3000

##  Project Reflections

### 1. What inspired your project?

Honestly, I wasn't excited about starting the project, but I knew I had to do it. The inspiration came from the challenge itself—I wanted to prove that I could take a big task and finish it especially in the "tech" world. I chose to make the project, showing I could build a secure, two-part system (website and database) using everything I learned in the cloud bootcamp. It was about proving mastery over the tools, not just the application itself.

---

### 2. What was the biggest challenge you faced?

My biggest challenge was **simply starting**. I knew the project was huge and I didn't know if I could finish once I began. Technically, every part of it was challenging considering the fact that I am a beginner in this field. I spent a lot of time troubleshooting to make sure the different parts of the network, like the servers and the database, could talk to each other correctly, but were still completely closed off from the outside world for safety.

---

### 3. What did I learn through this process?

I learned three key things:

1. **Just Start:** The most important lesson was that you must **start first, no matter what**. Once you begin, you find a way to figure out the rest. Action is the first step toward solving a huge problem.
2. **Use Modern Tools (AI):** I quickly realized that if you don't use tools like **AI for help and debugging**, you will suffer. AI was essential for clarifying complex code and troubleshooting tricky errors, which allowed me to learn much faster and meet the deadline.
3. **Theory Becomes Real:** All the theoretical concepts we covered in class suddenly made sense when I used them in a real environment. I was constantly discovering new details—like why we place servers in **private subnets** or how **Terraform** manages the network rules. The practical process of building everything made the cloud concepts stick better than just reading about them.


👩‍💻 Author
Phantom
Cloud Engineering Track
AWAKE 7.0 — 2025 Capstone Project

