variable "port" {
    description = "set igress from and to port for the security policy"
    type = number
    default = 8080
}

variable "db_remote_state_bucket" {
    description = "remote bucket s3"
    type = string
}

variable "db_remote_state_key" {
    description = "in which path to keep state"
    type = string
}

variable "cluster_name" {
  description       = "Environment name for cluster resources"
  type              = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

variable "custom_tags" {
    description = "tags for instances in ASG cluster"
    type        = map(string) 
    default = {}
}

variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool 
}

variable "ami" {
  description = "The AMI to run in the cluster"
  type        = string
  default     = "ami-08c40ec9ead489470"
}

variable "server_text" {
  description = "The text the web server should return"
  type        = string
  default     = "Hello, World"
}