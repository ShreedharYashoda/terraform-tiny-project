
variable "container_port" {
  description = "Port exposed on the local machine"
  type        = number
  default     = 8080
}

# variable "container_name" {
#   description = "Port name"
#   type        = string
#   default     = "terraform-nginx"
# }

variable "nginx_version" {
  description = "Version of the Nginx Docker image"
  type        = string
  default     = "1.28"
}
