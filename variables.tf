variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  default     = "demo-ecs-cluster"
}

variable "ecs_task_family" {
  description = "ECS Task Definition Family"
  default     = "demo-task-family"
}

variable "patient_service_image" {
  description = "Docker image URL for the patient service"
  default     = "741448937052.dkr.ecr.us-east-1.amazonaws.com/patient-service:latest"
}

variable "appointment_service_image" {
  description = "Docker image URL for the appointment service"
  default     = "741448937052.dkr.ecr.us-east-1.amazonaws.com/appointment-service:latest"
}

variable "ecs_execution_role_name" {
  description = "Name of the ECS Execution Role"
  type        = string
  default     = "ecs-execution-role"
}

variable "ecs_task_role_name" {
  description = "Name of the ECS Task Role"
  type        = string
  default     = "ecs-task-role"
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "demo-apps-alb"
}

variable "log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
  default     = "ecs-cluster-logs"
}

