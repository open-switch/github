resource "github_team" "sai" {
  name        = "SAI"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "sai_repos" {
  default = [
    "SAI",
    "opx-sai-vm",
  ]
  type    = "list"
}

resource "github_team_repository" "sai" {
  count      = "${length(var.sai_repos)}"
  permission = "push"
  repository = "${element(var.sai_repos, count.index)}"
  team_id    = "${github_team.sai.id}"
}
