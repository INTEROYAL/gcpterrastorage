

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
project = "gcp-cli-testing"
region = "us-central1"
zone = "us-central1-a"
credentials = "gcp-cli-testing-cab999668e48.json"

}

resource "google_storage_bucket" "static-site" {
  name          = "imageroyalstore"
  location      = "us-central1"
  force_destroy = true
}
