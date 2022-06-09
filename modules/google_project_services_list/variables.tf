variable "project_id" {
    description = "This is the GCP project_id to enable/disable the service in"
}

variable "services" {
    type = list(string)
    description = "This is a list of GCP services names as strings. For example [\"compute.googleapis.com\", \"storage-component.googleapis.com\"]"
}