resource "aws_security_group" "app_security_group" {
  name        = "devsecops-demo-sg"
  description = "Security group for DevSecOps Shift Left demonstration"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow application traffic from internal network"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  ingress {
    description = "Allow SSH administration from trusted network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.10.0/24"]
  }

  egress {
    description = "Allow outbound HTTPS traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "devsecops-demo-sg"
    Environment = "demo"
    Project     = "devsecops-shift-left"
  }
}