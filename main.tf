provider "google" {
  project = "lili-devops"
  region  = "us-east4"
}

data "google_container_registry_repository" "all_repos" {
  project = "lili-devops"
}

locals {
  my_repo = {
    for repo in data.google_container_registry_repository.all_repos.repositories : 
    repo.name => repo
    if repo.name == "my-repo-lili"
  }
}

output "repository_name" {
  value = local.my_repo["my-repo-lili"].name
}


