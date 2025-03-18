module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block       = var.vpc_cidr_block
  subnet_cidr_block    = var.subnet_cidr_block
  availability_zone    = var.availability_zone
}

module "iam" {
  source = "./modules/iam_module" 

  ecs_execution_role_name = var.ecs_execution_role_name
  ecs_task_role_name      = var.ecs_task_role_name
}

module "ecs" {
  source = "./modules/ecs" 
  
  ecs_cluster_name          = var.ecs_cluster_name
  ecs_task_family           = var.ecs_task_family
  ecs_execution_role_arn    = var.ecs_execution_role_arn
  ecs_task_role_arn         = var.ecs_task_role_arn
  patient_service_image     = var.patient_service_image
  appointment_service_image = var.appointment_service_image
  subnet_id                = var.subnet_id
  security_group_id        = var.security_group_id
  appointment_tg_arn       = var.appointment_tg_arn
  patient_tg_arn           = var.patient_tg_arn
}
