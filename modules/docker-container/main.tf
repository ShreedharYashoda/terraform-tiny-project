terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}


resource "docker_container" "this" {
  name  = var.container_name
  image = var.image_id

  ports {
    internal = 80
    external = var.external_port
  }
}
