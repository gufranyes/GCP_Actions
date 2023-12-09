variable "gcp_sa_terraform_credentials" {
  type = string
  description = "Location of GCP service account key for Terraform"
}

variable "gcp_project_id" {
  type = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type = string
  description = "GCP Region"
}

variable "gke_cluster_name" {
  type = string
  description = "GKE Cluster Name"
}

variable "gke_network" {
  type = string
  description = "VPC Network Name"
}

variable "gke_subnetwork" {
  type = string
  description = "VPC Subnetwork Name"
}

variable "gke_nodepool_name" {
  type = string
  description = "GKE Node Pool Name"
}

variable "gke_service_account_name" {
  type = string
  description = "GKE Service Account Name"
}