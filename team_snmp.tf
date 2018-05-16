resource "github_team" "snmp" {
  name        = "SNMP"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "snmp_repos" {
  default = [
    "opx-snmp",
  ]
  type    = "list"
}

resource "github_team_repository" "snmp" {
  count      = "${length(var.snmp_repos)}"
  permission = "push"
  repository = "${element(var.snmp_repos, count.index)}"
  team_id    = "${github_team.snmp.id}"
}
