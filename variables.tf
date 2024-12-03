variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to attach"
  default     = "ssm_profile"
  type        = string
}
