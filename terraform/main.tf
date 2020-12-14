module "rke-cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.15.0"
  name                   = "rke-cluster"
  instance_count         = 3
  ami                    = "ami-0dc8d444ee2a42d8a"
  instance_type          = "t3.xlarge"
  key_name               = "akin"
  vpc_security_group_ids = ["sg-02dc15f8d9bb58264"]
  subnet_id              = "subnet-f9b3fb9d"
  root_block_device      = [
    {
        volume_type = "gp2"
        volume_size = 16
    },
  ]
  tags = {
      App         = "rke"
      Environment = "dev"
  }
}

module "ec2-instance-jump" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.15.0"
  name                   = "jump"
  instance_count         = 1
  ami                    = "ami-0dc8d444ee2a42d8a"
  instance_type          = "t3.medium"
  key_name               = "akin"
  vpc_security_group_ids = ["sg-02dc15f8d9bb58264"]
  subnet_id              = "subnet-f9b3fb9d"
  root_block_device      = [
    {
      volume_type = "gp2"
      volume_size = 16
    },
  ]
  tags = {
    App         = "jump"
    Environment = "dev"
  }
}
