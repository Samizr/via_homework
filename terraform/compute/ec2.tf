module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "${var.project_name}-instance"

  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.vpc_public_subnets[0]

  key_name = aws_key_pair.ec2_key_pair.key_name

  tags = var.common_tags
}


resource "aws_key_pair" "ec2_key_pair" {
  key_name = "${var.project_name}-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRDdTgVdw73+NUtRUFSNrDcD/X0gQmeHU23DpWpRoVeKTIHAxqoq+rO/6LsY3iGM/yk+gzCrurl7APZuziqSWLv6r/o00dr4FJTW2hQ2vIdRfqVNx3+Azv7ZW+tzWbsmIPDyAkCSovqVrQSCqJLcTtull6advmpNR7x4qT14/GY7my1qrNGLwYqsLz88opEvkYko2pizwd4RLo67wmxSsOw828SSsVf0aW3iFd6Cvm+LRyK1m1t4NoL/nCBGXsBWLz9xIxLYrGeEgQ5siZ24GkJbms7vEbcE16uA6eNulEi+i6tWm6oe5a/inVGbt+OdbBTyDeea5uDeNzHWQ/uFbAio6OVrtqZJ9R9YvPSnXK/Vq76D5ac99UbdU1l3FUe8LU6EyM0bn6pqfQ1vZbqI1MY1Aii7fAu1HlBfT0M1nAW4INLW/F7m7dAs6BOWsxy/lSkDA8I3D9WfX+NvzgssG4RA8nD8GL+NZDhogO5Xl+XdLRFXZgH5V3jU0AC2O7AJE= samizreik@Joannes-MacBook-Pro.local"
}