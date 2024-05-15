terraform {
  source = "../../modules/gke"
  backend "gcs" {
    bucket = "prod-terraform-state-bucket"
    prefix = "terraform/state"
  }
}

inputs = {
  credentials_json = jsondecode(get_env("GOOGLE_CREDENTIALS", ""))
  project_id       = get_env("GCP_PROJECT_ID", "")
  region           = get_env("REGION", "")
  zone             = get_env("ZONE", "")
  cluster_name     = "prod-cluster"
  network_name     = "prod-vpc-network"
  subnetwork_name  = "prod-subnetwork"
}
