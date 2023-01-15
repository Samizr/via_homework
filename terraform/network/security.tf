//TODO - allow SSH on machine. 
//TODO - allow mysql on rds
resource "aws_security_group" "global_sg" {
  # ... other configuration ...
  name = "${var.project_name}-sg"
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
  }
}
