module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block       = var.vpc_cidr_block
  subnet_cidr_block    = var.subnet_cidr_block
  availability_zone    = var.availability_zone
}

module "iam" {
  source = "./modules/iam" 

  ecs_execution_role_name = var.ecs_execution_role_name
  ecs_task_role_name      = var.ecs_task_role_name
}


module "ecs" {
  source = "./modules/ecs"
  
  ecs_cluster_name          = var.ecs_cluster_name
  ecs_task_family           = var.ecs_task_family
  ecs_execution_role_arn    = module.iam.ecs_execution_role_arn
  ecs_task_role_arn         = module.iam.ecs_task_role_arn
  patient_service_image     = var.patient_service_image
  appointment_service_image = var.appointment_service_image
  subnet_id                 = module.vpc.subnet_id
  security_group_id         = module.vpc.ecs_service_sg.id
  appointment_tg_arn        = module.alb.patient_tg_arn
  patient_tg_arn            = module.alb.appointment_tg_arn
}

module "alb" {
  source                     = "./modules/alb"
  alb_name                   = var.alb_name
  lb_security_group          = module.vpc.alb_sg.id
  lb_subnets                 = [module.vpc.subnet_id]
  vpc_id                     = module.vpc.vpc_id
  patient_service_ip         = module.ecs.patient_service_ip 
  appointment_service_ip     = module.ecs.appointment_service_ip
}

module "cloudwatch" {
  source         = "./modules/cloudwatch"
  log_group_name = var.log_group_name
}
