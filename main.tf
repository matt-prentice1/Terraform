variable "gcp_cred" {
  type = string
  sensitive = true
  description = "Google Cloud service account credentials"
}

provider "google" {
    project = "a0df6031b"
    credentials = var.gcp_cred
    region="us-central1"
    zone="us-central1-c"
}

resource "google_compute_instance" "pxe-server" {
  name         = "pxe-server"
  machine_type = "n1-standard-4"
  min_cpu_platform="Intel Haswell"

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20220901"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "pxe-server"
  auto_create_subnetworks = "true"
}

resource "google_compute_disk" "pxe-vol"{
  name = "pxe-vol"
  size = 100
  type = "pd-standard"
}
 
