resource "github_team" "pas" {
  name        = "PAS"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "pas_repos" {
  default = [
    "opx-pas",
  ]
  type    = "list"
}

resource "github_team_repository" "pas" {
  count      = "${length(var.pas_repos)}"
  permission = "push"
  repository = "${element(var.pas_repos, count.index)}"
  team_id    = "${github_team.pas.id}"
}
