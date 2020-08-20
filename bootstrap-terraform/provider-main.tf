terraform {
  required_version = ">= 0.12"
}
provider "google" {
  project     = var.project_id
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
}
