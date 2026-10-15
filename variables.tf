variable "project_id" {
 type = string
}

variable "region" {
 type = string
}

variable "project_labels" {
 description = "Labels to apply to GCP resources"
 type        = map(string)
 default     = {}
}

variable "bucket_name" {
 type = string
}

variable "bucket_location" {
 type = string
}

variable "force_destroy" {
 type = bool
}

variable "vm_name" {
 type = string
}

variable "machine_type" {
 type = string
}

variable "zone" {
 type = string
}

variable "boot_disk_image" {
 description = "Boot disk image for the VM"
 type        = string
}

variable "network" {
 description = "VPC network name or self-link"
 type        = string
}
