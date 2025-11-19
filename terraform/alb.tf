# -------------------------------------------
# Application Load Balancer (ALB)
# Public entry point to access backend EC2
# -------------------------------------------

resource "aws_lb" "app_alb" {
  name               = "app-alb"
  internal           = false  # Public-facing ALB
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]

  # ALB must sit in PUBLIC subnets
  subnets = [
    aws_subnet.public_subnet1.id,
    aws_subnet.public_subnet2.id
  ]

  tags = {
    Name = "app-alb"
  }
}

# -------------------------------------------
# Target Group
# ALB sends traffic to EC2 on port 8000
# -------------------------------------------

resource "aws_lb_target_group" "app_tg" {
  name     = "app-target-group"
  port     = 8000               # EC2 app port
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  # Health check to ensure EC2 is responding
  health_check {
    path     = "/"
    interval = 30
    protocol = "HTTP"
  }
}

# -------------------------------------------
# ALB Listener
# Listens on port 80 and forwards to target group
# -------------------------------------------

resource "aws_lb_listener" "app_listener" {
  load_balancer_arn = aws_lb.app_alb.arn
  port              = 80
  protocol          = "HTTP"

  # Forward all HTTP traffic to backend EC2
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app_tg.arn
  }
}

# -------------------------------------------
# Attach EC2 Instance to ALB Target Group
# -------------------------------------------

resource "aws_lb_target_group_attachment" "tg_attach" {
  target_group_arn = aws_lb_target_group.app_tg.arn
  target_id        = aws_instance.backend.id
  port             = 8000
}
