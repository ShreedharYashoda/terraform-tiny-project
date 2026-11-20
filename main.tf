
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///Users/meshtru_maga/.docker/run/docker.sock"
}

resource "docker_image" "nginx" {
  name         = "nginx:${var.nginx_version}"
  keep_locally = true
}

# resource "docker_container" "web" {
#   count = 2
#
#   name  = "nginx-${count.index + 1}"
#   image = docker_image.nginx.image_id
#
#   ports {
#     internal = 80
#     external = var.container_port + count.index
#   }
# }


module "nginx1" {
  source = "./modules/docker-container"

  container_name = "nginx-1"
  image_id       = docker_image.nginx.image_id
  external_port  = 8080
}

module "nginx2" {
  source = "./modules/docker-container"

  container_name = "nginx-2"
  image_id       = docker_image.nginx.image_id
  external_port  = 8081
}

