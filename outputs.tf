output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = module.vpc.vpc_name
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.subnet_id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.internet_gateway_id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = module.vpc.route_table_id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = module.vpc.security_group_id
}
