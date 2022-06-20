terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }

  }
}

provider "google" {
  credentials = file("secrets/service-account-terraform.json")
  project     = "data-eng-training-87b25bc6"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

// New resource
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro" // Take a look at available machines
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable" // Some images are not free
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name // As the one declared above
    access_config {
    }
  }
}
