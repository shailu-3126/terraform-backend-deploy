variable "project_id" { description = "GCP Project ID" }
variable "credentials_file" { description = "Path to GCP service account JSON key" }
variable "image_url" { description = "Docker image URL for Cloud Run" }
variable "app_name" { description = "Cloud Run app name" }
variable "region" { description = "Cloud Run region" }
