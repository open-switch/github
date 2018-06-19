resource "github_team" "administration" {
  name        = "Administration"
  description = "Organization and Team Administration"
  privacy     = "closed"
}

variable "administration_repos" {
  default = [
    "SAI",
    "ansible-opx-examples",
    "ansible-role-opx-acl",
    "ansible-role-opx-mac",
    "ansible-role-opx-qos",
    "ansible-role-opx-system",
    "chef-opx-examples",
    "continuous-integration",
    "github",
    "infra_k8s",
    "infra_project-config",
    "infra_puppet-gerrit",
    "infra_system-config",
    "linux-sources",
    "opx-alarm",
    "opx-base-model",
    "opx-build",
    "opx-common-utils",
    "opx-core",
    "opx-cps",
    "opx-db-sql",
    "opx-docs",
    "opx-logging",
    "opx-manifest",
    "opx-nas-acl",
    "opx-nas-common",
    "opx-nas-daemon",
    "opx-nas-interface",
    "opx-nas-l2",
    "opx-nas-l3",
    "opx-nas-linux",
    "opx-nas-ndi",
    "opx-nas-ndi-api",
    "opx-nas-qos",
    "opx-northbound",
    "opx-onie-installer",
    "opx-pas",
    "opx-platform-config",
    "opx-sai-vm",
    "opx-sdi-sys",
    "opx-snmp",
    "opx-test",
    "opx-tmpctl",
    "opx-tools",
    "puppet-opx-examples",
    "rootfs",
    "salt-opx-examples",
    "tools_opx-py"
  ]
  type    = "list"
}

resource "github_team_repository" "administration" {
  count      = "${length(var.administration_repos)}"
  permission = "admin"
  repository = "${element(var.administration_repos, count.index)}"
  team_id    = "${github_team.administration.id}"
}
