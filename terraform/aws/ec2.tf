# AWS EC2 Instances
# FinOps Optimizer is file mein rightsize changes karega

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.xlarge"  # FinOps will optimize this

  tags = {
    Name        = "app-server"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

resource "aws_instance" "analytics_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "m5.2xlarge"  # FinOps will optimize this

  tags = {
    Name        = "analytics-server"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}