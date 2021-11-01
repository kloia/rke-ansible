module "rke-nodes-sg" {
  source = "terraform-aws-modules/security-group/aws"

  description = "RKE Nodes"
  name        = "rke-nodes-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_with_self = [
    {
      from_port = 6443
      protocol  = "tcp"
      to_port   = 6443
    },
    {
      from_port = 2379
      protocol  = "tcp"
      to_port   = 2380
    },
    {
      from_port = 8472
      protocol  = "udp"
      to_port   = 8472
    },
    {
      from_port = 4789
      protocol  = "udp"
      to_port   = 4789
    },
    {
      from_port = 179
      protocol  = "tcp"
      to_port   = 179
    },
    {
      from_port = 10256
      protocol  = "tcp"
      to_port   = 10256
    },
    {
      from_port = 9796
      protocol  = "tcp"
      to_port   = 9796
    },
    {
      from_port = 5473
      protocol  = "tcp"
      to_port   = 5473
    },
    {
      from_port = 22
      protocol  = "tcp"
      to_port   = 22
    },
    {
      from_port = 9345
      protocol  = "tcp"
      to_port   = 9345
    },
    {
      from_port = 10250
      protocol  = "tcp"
      to_port   = 10252
    }
  ]

  ingress_with_cidr_blocks = [
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 80
      protocol    = "tcp"
      to_port     = 80
    },
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 8080
      protocol    = "tcp"
      to_port     = 8080
    },
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 6443
      protocol    = "tcp"
      to_port     = 6443
    },
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 2376
      protocol    = "tcp"
      to_port     = 2376
    },

    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 30000
      protocol    = "udp"
      to_port     = 32767
    },

    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 443
      protocol    = "tcp"
      to_port     = 443
    },
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 30000
      protocol    = "tcp"
      to_port     = 32767
    },
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 22
      protocol    = "tcp"
      to_port     = 22
    }
  ]

  egress_with_cidr_blocks = [
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
    }
  ]
}
