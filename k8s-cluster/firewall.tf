resource "vultr_firewall_group" "k8sFirewall" {
  description = "Firewall for traffic to k8s Server"
}

resource "vultr_firewall_rule" "ssh" {
  firewall_group_id = vultr_firewall_group.k8sFirewall.id
  network = var.allowedSshCidr
  protocol = "tcp"
  from_port = "22"
}

resource "vultr_firewall_rule" "https" {
  firewall_group_id = vultr_firewall_group.k8sFirewall.id
  network = "0.0.0.0/0"
  protocol = "tcp"
  from_port = "443"
}