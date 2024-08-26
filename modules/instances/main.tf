terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }

  backend "gcs" {}
}

provider "google" {
  project = "apt-passage-430503-r9"
  # credentials = "./rcredentials.json"
  # region = "asia-southeast2"
  # zone = "aisa-southeast2-a"
}
