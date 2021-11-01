module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "rke-vpc"
  cidr = "10.0.0.0/16"

  azs = [
    data.aws_availability_zones.available.names[0],
    data.aws_availability_zones.available.names[0],
    data.aws_availability_zones.available.names[0]
  ]

  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_dns_support      = true
  enable_dns_hostnames    = true
  map_public_ip_on_launch = true

  tags = {
    Terraform = "true"
  }
}
