resource "github_team" "logging" {
  name        = "Logging"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "logging_repos" {
  default = [
    "opx-logging",
  ]
  type    = "list"
}

resource "github_team_repository" "logging" {
  count      = "${length(var.logging_repos)}"
  permission = "push"
  repository = "${element(var.logging_repos, count.index)}"
  team_id    = "${github_team.logging.id}"
}
