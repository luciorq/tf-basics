provider "null" {}

resource "null_resource" "server1_exec" {
  provisioner "local-exec" {
    command = "ssh server1 touch tf-test.txt"
  }
}

resource "null_resource" "server2_exec" {
  provisioner "local-exec" {
    command = "ssh server2 touch tf-test.txt"
  }
}