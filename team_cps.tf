resource "github_team" "cps" {
  name        = "CPS"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "cps_repos" {
  default = [
    "opx-cps",
  ]
  type    = "list"
}

resource "github_team_repository" "cps" {
  count      = "${length(var.cps_repos)}"
  permission = "push"
  repository = "${element(var.cps_repos, count.index)}"
  team_id    = "${github_team.cps.id}"
}
