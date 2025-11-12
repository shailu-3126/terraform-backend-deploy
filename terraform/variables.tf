variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region for resources"
  type        = string
  default     = "us-central1"
}

variable "app_name" {
  description = "The name of the backend app"
  type        = string
  default     = "backend-app"
}
variable "image_url" {
  description = "Docker image URL for backend service"
  type        = string
}
