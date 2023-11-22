terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "2.5.2"
    }
  }
}

provider "linode" {
  token = "16d8cd9524ca62c8764d172b9eddf43d9f0b116d0d6ec1ac9777d7aaa2495eab"
}

resource "linode_instance" "terraform-web" {
        image = "linode/ubuntu22.04"
        label = "Terraform-Web"
        group = "Terraform"
        region = "eu-central"
        type = "g6-nanode-1"
        authorized_keys = [ "ssh-rsa AAAAB3NzaC1yc......................" ]
        root_pass = "xxxxxxxxxxx"
}