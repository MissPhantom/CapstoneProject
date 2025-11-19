# -------------------------------------------
# EC2 Instance to Run Backend Docker Container
# -------------------------------------------

resource "aws_instance" "backend" {
  # Ubuntu 22.04 LTS AMI (Region: us-east-1)
  ami           = "ami-0fc5d935ebf8bc3bc"

  # Free-tier eligible instance type
  instance_type = "t2.micro"

  # Place EC2 inside the PRIVATE subnet (for security)
  subnet_id     = aws_subnet.private_subnet1.id

  # Apply EC2 security group allowing traffic from ALB and DB
  security_groups = [aws_security_group.ec2_sg.id]

  # Do NOT assign a public IP (only ALB/NAT access allowed)
  associate_public_ip_address = false

  # --------------------------
  # Bootstrapping EC2 Instance
  # Install Docker and run app
  # --------------------------
  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y docker.io
    systemctl start docker
    systemctl enable docker

    # Pull and run your backend Docker image on port 8000
    docker run -d -p 8000:8000 missphantom/backend:latest
  EOF

  # Tags help identify the resource
  tags = {
    Name = "backend-ec2"
  }
}
