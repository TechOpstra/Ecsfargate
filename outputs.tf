output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
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

output "ecs_service_sg_id" {
  description = "The ID of the ECS Service Security Group"
  value       = module.vpc.ecs_service_sg.id
}

output "alb_sg_id" {
  description = "The ID of the Application Load Balancer Security Group"
  value       = module.vpc.alb_sg.id
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
output "alb_id" {
  description = "The ID of the application load balancer"
  value       = aws_lb.demo_apps_lb.id
}

output "patient_tg_arn" {
  description = "The ARN of the patient service target group"
  value       = aws_lb_target_group.patient_tg.arn
}

output "appointment_tg_arn" {
  description = "The ARN of the appointment service target group"
  value       = aws_lb_target_group.appointment_tg.arn
}
