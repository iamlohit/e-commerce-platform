terraform {
  source = "../../modules/gcs"
}

inputs = {
  project_id  = get_env("GCP_PROJECT_ID", "")
  region      = get_env("REGION", "")
  bucket_name = "staging-terraform-state-bucket"
}
