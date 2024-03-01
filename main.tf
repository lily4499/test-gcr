provider "google" {
  project = "lili-devops"
  region  = "us-east4"
}

resource "google_container_registry_repository" "my_repo" {
  name    = "my-repo-lili"
}
