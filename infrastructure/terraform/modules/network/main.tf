provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

output "network_name" {
  value = google_compute_network.vpc_network.name
}

output "subnetwork_name" {
  value = google_compute_subnetwork.subnetwork.name
}