provider "google" {
  project = "your-project-id"
  region  = "us-east4"
}

resource "google_container_registry_repository" "my_repo" {
  name = "my-repo-lili"
  project = "lili-devops"
}