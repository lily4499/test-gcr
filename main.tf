provider "google" {
  project = "lili-devops"
  region  = "us-east4"
}

data "google_container_registry_repository" "my_repo" {
  name    = "my-repo-lili"
}

output "repository_name" {
  value = data.google_container_registry_repository.my_repo.name
}
