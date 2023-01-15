module "rds" {
  source  = "terraform-aws-modules/rds/aws"

  identifier = "${var.project_name}-rds"

  engine            = var.rds_engine
  engine_version    = var.rds_engine_version
  instance_class    = var.rds_instance_class
  allocated_storage = 5

  db_name  = "${var.project_name}"
  username = var.rds_user
  port     = var.rds_port
  password = var.rds_pass

  tags =  var.common_tags

  availability_zone = var.availability_zone

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = [var.vpc_private_subnets[0], var.vpc_private_subnets[1]]

  # DB parameter group
  family = format("%s%s", var.rds_engine, var.rds_engine_version)

  # DB option group
  major_engine_version = var.rds_engine_version

  vpc_security_group_ids = [var.vpc_global_sg.id]
}