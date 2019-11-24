resource "vultr_ssh_key" "k8sKey" {
  name = var.rootSshKeyName
  ssh_key = file(var.rootPublicSshKey)
}