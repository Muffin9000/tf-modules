variable "user_name" {
  description   = "The user name to use"
  type          = string
}

variable "give_neo_cloudwatch_full_access" {
  description = "If true user neo gets full access to Cloudwatch"
  type        = bool 
}