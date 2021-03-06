variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "project_id" {
  description = "name of the project"
}
