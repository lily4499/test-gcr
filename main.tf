provider "google-beta" {
  project = "lili-devops"
  region  = "us-east4"
}

resource "google-beta_container_registry_repository" "my_repo" {
  name    = "my-repo-lili"
  project = "lili-devops"
}


