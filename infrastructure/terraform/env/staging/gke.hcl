terraform {
  source = "../../modules/gke"
  backend "gcs" {
    bucket = "staging-terraform-state-bucket"
    prefix = "terraform/state"
  }
}

inputs = {
  credentials_json = jsondecode(get_env("GOOGLE_CREDENTIALS", ""))
  project_id       = get_env("GCP_PROJECT_ID", "")
  region           = get_env("REGION", "")
  zone             = get_env("ZONE", "")
  cluster_name     = "staging-cluster"
  network_name     = "staging-vpc-network"
  subnetwork_name  = "staging-subnetwork"
}
