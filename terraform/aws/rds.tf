# AWS RDS Instances
# FinOps Optimizer is file mein idle databases flag karega

resource "aws_db_instance" "reporting_db" {
  identifier        = "db-reporting-replica"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.r5.large"  # FinOps will optimize this
  allocated_storage = 100

  tags = {
    Name        = "reporting-db"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}