output "public_dns_rke" {
  description = "List of private DNS names assigned to the instances"
  value       = module.rke-cluster.public_dns
}
output "private_ip_rke" {
  description = "List of private DNS names assigned to the instances"
  value       = module.rke-cluster.private_ip
}
output "public_ip_rke" {
  description = "List of private DNS names assigned to the instances"
  value       = module.rke-cluster.public_ip
}
output "public_ip_jump" {
  description = "List of private IP values assigned to the instances"
  value       = module.ec2-instance-jump.public_ip
}