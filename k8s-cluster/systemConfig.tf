data "vultr_region" "region" {
  filter {
    name = "name"
    values = [lookup(var.regionMap, var.region, "Atlanta")]
  }
}

data "vultr_os" "os" {
  filter {
    name = "name"
    values = [lookup(var.osMap, var.os)]
  }
}

data "vultr_plan" "plan" {
  filter {
    name = "price_per_month"
    values = [lookup(var.planMap, var.plan, "5.00")]
  }
}

