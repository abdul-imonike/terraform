resource "linode_instance" "terraform-db" {
  image = "linode/centos7"
  label = "Terraform-Db"
  group = "Terraform"
  region = "eu-central"
  type = "g6-nanode-1"
  swap_size = 512
  authorized_keys = [ "ssh-rsa AAAAB3NzaC1y.............." ]
  root_pass = "xxxxxxxxx"
}