module "rke-nodes" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  count   = 3

  name                   = "rke-node-${count.index}"
  ami                    = var.rke_ami_id
  instance_type          = var.rke_instance_type
  key_name               = var.key_pair_name
  vpc_security_group_ids = [module.rke-nodes-sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[count.index]

  root_block_device = [
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
