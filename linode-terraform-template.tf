# Linode Provider definition
terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "2.5.2"
    }
  }
}

provider "linode" {
  token = var.token
}

# Web Server
resource "linode_instance" "terraform-web" {
        image = "linode/centos7"
        label = "Terraform-Web"
        group = "Terraform"
        region = var.region
        type = "g6-nanode-1"
        swap_size = 512
        authorized_keys = [var.authorized_keys]
        root_pass = var.root_pass
}

# Database Server
resource "linode_instance" "terraform-db" {
        image = "linode/ubuntu22.04"
        label = "Terraform-Db"
        group = "Terraform"
        region = var.region
        type = "g6-nanode-1"
        swap_size = 512
        authorized_keys = [var.authorized_keys]
        root_pass = var.root_pass
}