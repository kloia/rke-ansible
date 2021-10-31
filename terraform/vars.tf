# AWS
variable "region" {
  type    = string
  default = "eu-west-3"
}

# RKE Nodes
variable "rke_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "rke_ami_id" {
  type    = string
  default = "ami-06d79c60d7454e2af"
}

variable "rke_nodes_security_group_name" {
    type = string
    default = "rke-nodes-sg"
}

# Jump Server
variable "jump_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "jump_ami_id" {
  type    = string
  default = "ami-06d79c60d7454e2af"
}

# Public key to create SSH Key Pair
variable "public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCx2sfjRMkaJBaq3xENGj6ZyZu/nZg2GPupJQLDN4XCY2bq+UlOFI/OIHkfrzq+sgqgMnQ7uLKbyOWILDAzjU1m9i9NBUcvxjzez7B4nnakb8WxbBhbIPtjcol3ayqwiiW7eDedy2TR5ZNdCQboext/5hM7Dira/Jv9fR98n7RagtZTIqw2fr9qxIN0fn9bA5EcwrotUzlLDDKzlH4T0Qm9+E5drosujhPTmfIRfLF7vEKKsrEbyvpnme30FHd846onfFCbRt6we0oBUquJLPS7jGbCp8wuMYU1eQnkhv11D08s2zi5SVfy9fn7DiiqWnd3SuJd7muO+UkPbMYoZ85C/1qe8nt58q6xcZuMr9A+XBjlrEFpdZ35QvpJX/bTQ97urPMNlZa1JZaPkweUlgJNA46nE4TsREDSjCurO2BKnwJFzfqXRib+Ko6lqzkyXlw0y5p/T+RYF1r50MyoWPdFx2VxYwy+zNXTd3ei6ApDsnFaQipitvfainle+2xpMEk= cagatayciftci@192.168.1.6"
}

variable "key_pair_name" {
    type = string
    default = "rke-key-pair"
}
