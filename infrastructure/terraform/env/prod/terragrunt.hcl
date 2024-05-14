include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/gke"
}

inputs = {
  credentials_file_path = pathexpand("../../common/service-account.json")
  project_id            = "your-prod-project-id"
  region                = "us-central1"
  zone                  = "us-central1-a"
  cluster_name          = "prod-cluster"
  network_name          = "prod-network"
  subnetwork_name       = "prod-subnetwork"
}
