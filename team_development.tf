resource "github_team" "development" {
  name        = "Development"
  description = "OpenSwitch Developers"
  privacy     = "closed"
}

variable "development_repos" {
  default = [
    "opx-alarm",
    "opx-common-utils",
    "opx-core",
    "opx-db-sql",
    "opx-northbound",
    "opx-system-utils",
    "opx-tmpctl",
    "opx-tools",
  ]
  type    = "list"
}

resource "github_team_repository" "development" {
  count      = "${length(var.development_repos)}"
  permission = "push"
  repository = "${element(var.development_repos, count.index)}"
  team_id    = "${github_team.development.id}"
}
