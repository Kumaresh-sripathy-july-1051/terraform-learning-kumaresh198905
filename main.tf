provider "google" {
  project     = "firm-structure-442106-h8"
  region      = "us-central1"
}

resource "google_storage_bucket" "static-site-test-kum" {
  name          = "image-kuma-001a2s"
  location      = "us-central1"
  force_destroy = true
}

resource "google_compute_instance" "default-kum-yes" {
  name         = "instance-kuma-0010q02"
  machine_type = "n2-standard-2"
  zone         = "us-central1-c"
}

