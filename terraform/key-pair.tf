resource "aws_key_pair" "rke_key_pair" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}
