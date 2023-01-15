// Common variables:
variable "project_name" {
  type = string
}

variable "common_tags" {
  type = map
}

// Module variables:
variable "ami" {
  type        = string
  default     = "ami-0a261c0e5f51090b1"
  description = "AMI version to deploy"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type to deploy"
}

variable "vpc_public_subnets" {
  type        = list
  description = "The public subnets created with the VPC"
}

variable "vpc_global_sg" {
  
}