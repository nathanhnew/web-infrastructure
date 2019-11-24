resource "vultr_server" "server" {
  region_id = data.vultr_region.region.id
  plan_id = data.vultr_plan.plan.id
  os_id = data.vultr_os.os.id
  hostname = var.hostName
  tag = var.tag
  ssh_key_ids = [vultr_ssh_key.k8sKey.id]
  firewall_group_id = vultr_firewall_group.k8sFirewall.id
//  script_id = vultr_startup_script.k8sInit.id

  connection {
      private_key = file(var.rootPrivateSshKey)
      user = "root"
      host = vultr_server.server.main_ip
    }

  provisioner "remote-exec" {
    inline = ["echo 'hello world'"]

  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i='${vultr_server.server.main_ip},' --user=root --private-key=${var.rootPrivateSshKey} --extra-vars=\"userName=${var.primaryUser} userPublicKey=${var.userPublicSshKey}\" ${var.playbook}"
  }
}