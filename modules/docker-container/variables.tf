variable "container_name" {
  description = "Name of Docker container"
  type        = string
}

variable "image_id" {
  description = "Docker image ID"
  type        = string
}

variable "external_port" {
  description = "Host port exposed by container"
  type        = number
}
