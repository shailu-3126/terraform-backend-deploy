output "service_url" {
  description = "Deployed Cloud Run URL"
  value       = google_cloud_run_service.backend.status[0].url
}
