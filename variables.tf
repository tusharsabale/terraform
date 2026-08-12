variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-0f8a61b66d1accaee"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
  default     = "devops-key"
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "terraform-web-server"
}