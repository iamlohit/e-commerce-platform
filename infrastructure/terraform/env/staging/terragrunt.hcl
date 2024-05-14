terraform {
  source = "../../modules/gke"
}

inputs = {
  credentials_json = jsondecode(get_env("GCP_CREDENTIALS", ""))
  project_id       = get_env("GCP_PROJECT_ID", "")
  region           = get_env("REGION", "")
  zone             = get_env("ZONE", "")
  cluster_name     = "staging-cluster"
  network_name     = "default" # Replace with your VPC network name if different
  subnetwork_name  = "default" # Replace with your subnetwork name if different
}
