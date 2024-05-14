provider "google" {
  project = var.project_id
}

resource "google_service_account" "k8s_sa" {
  account_id   = "k8s-cluster-sa"
  display_name = "Kubernetes Cluster Service Account"
}

output "service_account_email" {
  value = google_service_account.k8s_sa.email
}
