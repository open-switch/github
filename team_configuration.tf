resource "github_team" "configuration" {
  name        = "Configuration"
  description = ""
  privacy     = "closed"
}

variable "configuration_repos" {
  default = [
    "ansible-opx-examples",
    "ansible-role-opx-acl",
    "ansible-role-opx-mac",
    "ansible-role-opx-qos",
    "ansible-role-opx-system",
    "chef-opx-examples",
    "puppet-opx-examples",
    "salt-opx-examples",
    "ansible-role-opx-vlan",
  ]
  type    = "list"
}

resource "github_team_repository" "configuration" {
  count      = "${length(var.configuration_repos)}"
  permission = "push"
  repository = "${element(var.configuration_repos, count.index)}"
  team_id    = "${github_team.configuration.id}"
}
