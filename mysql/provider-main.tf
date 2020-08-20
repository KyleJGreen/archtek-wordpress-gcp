terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket      = "archtek-wordpress-tfstate"
    prefix      = "archtek-wordpress-postgres-instance"
    credentials = "../archtek-wordpress-svc.json"
  }
}
provider "google" {
  project     = var.project_id
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}
