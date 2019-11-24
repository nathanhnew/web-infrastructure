output "instanceCost" {
  value = vultr_server.server.cost_per_month
}

output "instanceAddress" {
  value = vultr_server.server.internal_ip
}