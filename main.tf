provider "google" {
  project = "lili-devops"
  region  = "us-east4"
}

resource "google_artifact_registry_repository" "my_repository" {
  name     = "my-repository"
  location = "us-east4" # Maryland is located in the us-east4 region
}
