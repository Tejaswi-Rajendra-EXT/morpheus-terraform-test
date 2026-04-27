terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "test" {
  content  = "Hello from Morpheus Terraform"
  filename = "/tmp/morpheus_tf_test.txt"
}