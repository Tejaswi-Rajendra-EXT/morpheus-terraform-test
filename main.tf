terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "test" {
  content  = var.file_content
  filename = var.file_name
}