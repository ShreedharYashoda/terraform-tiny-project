
# output "container_name" {
#   value = docker_container.web[*].name
# }
#
# output "container_id" {
#   value = docker_container.web[*].id
# }

# output "application_urls" {
#
#   value = [
#     for container in docker_container.web :
#     "http://localhost:${container.ports[0].external}"
#
#   ]
# }


output "container_1" {
  value = module.nginx1.container_name
}

output "container_2" {
  value = module.nginx2.container_name
}

output "application_urls" {
  value = [
    module.nginx1.application_url,
    module.nginx2.application_url
  ]
}

