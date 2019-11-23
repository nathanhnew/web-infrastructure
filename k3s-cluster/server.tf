resource "vultr_server" "server" {
  region_id = 6 // Atlanta
  plan_id = 201 // Cheapest
  os_id = 270 // Ubuntu 18.04
  hostname = "K3sServer"
  tag = "projects"

  provisioner "local-exec" {
    command = "curl -sfL https://get.k3s.io | sh -" // Install k3s
  }
}