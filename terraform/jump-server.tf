
module "ec2-instance-jump" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  name    = "jump"

  ami           = var.jump_ami_id
  instance_type = var.jump_instance_type
  key_name      = var.key_pair_name

  vpc_security_group_ids = [module.rke-nodes-sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  root_block_device = [
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
