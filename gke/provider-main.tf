terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket      = "archtek-wordpress-tfstate"
    credentials = "../archtek-wordpress-svc.json"
  }
}
provider "google" {
  project     = var.gcp_project
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}
