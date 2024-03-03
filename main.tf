provider "google" {
  project = "lili-devops"
}

resource "google_artifact_registry_repository" "my_repository" {
  repository_id = "lili2-gcr-repo"
  location      = "us" # Maryland is located in the us-east4 region
  format        = "DOCKER"   # Specify the format of packages (e.g., Docker)
}
