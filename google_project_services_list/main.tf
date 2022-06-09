# loop to enable the required services
resource "google_project_service" "project" {
  for_each = toset(var.services)
  project = "${var.project_id}"
  service = each.value
  disable_dependent_services = true
}