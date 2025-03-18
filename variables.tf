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
