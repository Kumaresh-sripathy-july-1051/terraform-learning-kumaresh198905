terraform {
 required_providers {
   google = {
     source  = "hashicorp/google"
     version = "8.4.0"
   }
 }
}

provider "google" {
 project = var.project_id
 region  = var.region
}

resource "google_storage_bucket" "static_site_test" {
 name          = var.bucket_name
 location      = var.bucket_location
 force_destroy = var.force_destroy
}

resource "google_compute_instance" "vm" {
 name         = var.vm_name
 machine_type = var.machine_type
 zone         = var.zone

 boot_disk {
   initialize_params {
     image = var.boot_disk_image
   }
 }

 network_interface {
   network = var.network
 }
}