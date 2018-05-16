resource "github_team" "yang" {
  name        = "Yang"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "yang_repos" {
  default = [
    "opx-base-model",
  ]
  type    = "list"
}

resource "github_team_repository" "yang" {
  count      = "${length(var.yang_repos)}"
  permission = "admin"
  repository = "${element(var.yang_repos, count.index)}"
  team_id    = "${github_team.yang.id}"
}
