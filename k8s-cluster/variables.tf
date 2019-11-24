variable "vultrKey" {
  type = string
}

variable "serverName" {
  default = "projectServer"
}

variable "hostName" {
  default = "projectServer"
}

variable "tag" {
  default = "K8s Server"
}

variable "regionMap" {
  type = "map"
  default = {
    "new-jersey" = "New Jersey",
    "silicon-valley" = "Silicon Valley",
    "sydney" = "Sydney",
    "chicago" = "Chicago",
    "toronto" = "Toronto",
    "paris" = "Paris",
    "tokyo" = "Tokyo",
    "dallas" = "Dallas",
    "miami" = "Miami",
    "seattle" = "Seattle",
    "singapore" = "Singapore",
    "los-angeles" = "Los Angeles",
    "atlanta" = "Atlanta",
    "amsterdam" = "Amsterdam",
    "london" = "London",
    "frankfurt" = "Frankfurt",
  }
}

variable "region" {
  default = "atlanta"
}

variable "osMap" {
  type = "map"
  default = {
    "windows-2012" = "Windows 2012 R2 x64",
    "centos-6" = "CentOS 6 x64",
    "custom" = "Custom",
    "snapshot" = "Snapshot",
    "centos-7" = "CentOS 7 x64",
    "centos-stable" = "CoreOS Stable",
    "backup" = "Backup",
    "application" = "Application",
    "debian-8" = "Debian 8 x64 (jessie)",
    "ubuntu-16" = "Ubuntu 16.04 x64",
    "freebsd-11" = "FreeBSD 11 x64",
    "windows-2016" = "Windows 2016 x64",
    "debian-9" = "Debian 9 x64 (stretch)",
    "ubuntu-1804" = "Ubuntu 18.04 x64",
    "fedora-1904" = "Fedora 29 x64",
    "freebsd-12" = "FreeBSD 12 x64",
    "ubuntu-19" = "Ubuntu 19.04 x64",
    "openbsd-65" = "OpenBSD 6.5 x64",
    "fedora-30" = "Fedora 30 x64",
    "debian-10" = "Debian 10 x64 (buster)",
    "centos-8" = "CentOS 8 x64",
    "ubuntu-1910" = "Ubuntu 19.10 x64",
    "openbsd-66" = "OpenBSD 6.6 x64",
    "fedora-31" = "Fedora 31 x64",
  }
}

variable "os" {
  default = "ubuntu-1804"
}

variable "planMap" {
  type = "map"
  default = {
    "5" = "5.00",
    "10" = "10.00",
    "20" = "20.00",
    "40" = "40.00",
  }
}

variable "plan" {
  default = "5"
}

variable "rootSshKeyName" {
  default = "k8s-init-key"
}

variable "rootPublicSshKey" {
  default = "~/.ssh/k8s-root-key.pub"
}

variable "rootPrivateSshKey" {
  default = "~/.ssh/k8s-root-key"
}

variable "allowedSshCidr" {
  default = "0.0.0.0/0"
}

variable "playbook" {
  default = "configure-k8s.yaml"
}

variable "primaryUser" {
  default = "nate"
}

variable "userPublicSshKey" {
  default = "~/.ssh/k8s-user.pub"
}