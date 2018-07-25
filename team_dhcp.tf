resource "github_team" "dhcp" {
  name        = "DHCP"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "dhcp_repos" {
  default = [
    "opx-dhcp-agent",
  ]
  type    = "list"
}

resource "github_team_repository" "dhcp" {
  count      = "${length(var.dhcp_repos)}"
  permission = "push"
  repository = "${element(var.dhcp_repos, count.index)}"
  team_id    = "${github_team.dhcp.id}"
}
