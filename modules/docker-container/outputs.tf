
output "container_id" {
  value = docker_container.this.id
}

output "container_name" {
  value = docker_container.this.name
}

output "application_url" {
  value = "http://localhost:${var.external_port}"
}
