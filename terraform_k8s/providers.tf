provider "google" {
  credentials = file(var.gcp_sa_terraform_credentials)
  project = var.gcp_project_id
  region = var.gcp_region
}

# google_client_config and kubernetes provider must be explicitly specified like the following.
data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}