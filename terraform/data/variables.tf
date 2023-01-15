// Common variables:
variable "project_name" {
  type = string
}

variable "common_tags" {
  type = map
}

variable "availability_zone" {
  type = string
}

// Module variables:
variable "rds_instance_class" {
  type = string
  default = "db.t4g.small"
  description = "RDS Instance class"
}

variable "rds_engine_version" {
  type = string
  default = "8.0"
  description = "RDS Engine version"
}

variable "rds_engine" {
  type = string
  default = "mysql"
  description = "RDS Engine type"
}

variable "rds_user" {
  type = string
  default = "samizr"
  description = "RDS admin username"
}

variable "rds_pass" {
  type = string
  default = "abc123"
  description = "RDS admin password"
}

variable "rds_port" {
  type = string
  default = "3306"
  description = "RDS port"
}

variable "vpc_private_subnets" {
  type = list 
  description = "The private subnets created with the VPC"
}

variable "vpc_global_sg" {
  
}