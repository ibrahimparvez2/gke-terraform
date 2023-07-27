terraform {
  required_version = ">= 1.2.0"

  backend "gcs" {
    bucket = "gke1-tf-state"
    prefix = "dev"
  }
}