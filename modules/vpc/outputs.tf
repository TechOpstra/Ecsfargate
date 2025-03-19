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

output "ecs_execution_role_arn" {
  description = "The ARN of the ECS execution role"
  value       = module.ecs.ecs_execution_role.arn
}

output "ecs_cluster_name" {
  value = module.ecs.ecs_cluster_name
}

output "ecs_cluster_id" {
  value = module.ecs.ecs_cluster_id
}

output "ecs_task_definition_arn" {
  value = module.ecs.ecs_task_definition_arn
}

output "patient_service_id" {
  value = module.ecs.patient_service_id
}

output "appointment_service_id" {
  value = module.ecs.appointment_service_id
}

output "patient_service_ip" {
  value = module.ecs.patient_service_ip
}

output "appointment_service_ip" {
  value = module.ecs.appointment_service_ip
}

output "alb_dns_name" {
  description = "DNS name of the alb"
  value       = module.alb.alb_dns_name
}

