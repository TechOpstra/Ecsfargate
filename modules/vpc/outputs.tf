output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.demo_vpc.id
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.route_table.id
}

output "ecs_service_sg_id" {
  description = "The ID of the ECS Service Security Group"
  value       = aws_security_group.ecs_service_sg.id
}

output "alb_sg_id" {
  description = "The ID of the Application Load Balancer Security Group"
  value       = aws_security_group.alb_sg.id
}
