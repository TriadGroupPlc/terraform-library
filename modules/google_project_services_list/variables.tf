variable "project_id" {
    nullable = false
    description = "This is the GCP project_id to enable/disable the service in"
    validation {
        condition = var.project_id != ""
        error_message = "You need to provide a project_id"
    }
}

variable "services" {
    type = list(string)
    description = "This is a list of GCP services names as strings. For example [\"compute.googleapis.com\", \"storage-component.googleapis.com\"]"
    nullable = false
    validation {
        condition = length(var.services) > 0
        error_message = "The service list must contain at least one service"
    }
}