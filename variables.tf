variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "credentials_file" {
  description = "Path to the GCP Service Account JSON key file"
  type        = string
}

variable "image_url" {
  description = "Docker image URL for Cloud Run"
  type        = string
}
