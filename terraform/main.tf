resource "google_compute_network" "vpc_network" {
  name = "${var.app_name}-vpc"
}

resource "google_cloud_run_service" "backend" {
  name     = var.app_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image_url
      }
    }
  }
}

resource "google_cloud_run_service_iam_member" "public_access" {
  service = google_cloud_run_service.backend.name
  role    = "roles/run.invoker"
  member  = "allUsers"
}
