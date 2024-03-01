provider "google" {
  project = "lili-devops"
  region  = "us-east4"
}

data "google_container_registry_repository" "all_repos" {
  project = "lili-devops"
}

locals {
  my_repo = {
    for repo_name, repo in data.google_container_registry_repository.all_repos : 
    repo_name => repo
    if contains(keys(repo), "my-repo-lili")
  }
}

output "repository_name" {
  value = local.my_repo["my-repo-lili"].name
}
