data "google_container_engine_versions" "default" {
  location = "us-west1"
}
data "google_client_config" "current" {
}

resource "google_container_cluster" "default" {
  name               = "my-first-cluster"
  location           = "us-west1"
  initial_node_count = 1
  min_master_version = data.google_container_engine_versions.default.latest_master_version

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 32
  }
}