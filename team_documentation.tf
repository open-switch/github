resource "github_team" "documentation" {
  name        = "Documentation"
  description = ""
  privacy     = "closed"
}

variable "documentation_repos" {
  default = [
    "opx-docs",
  ]
  type    = "list"
}

resource "github_team_repository" "documentation" {
  count      = "${length(var.documentation_repos)}"
  permission = "push"
  repository = "${element(var.documentation_repos, count.index)}"
  team_id    = "${github_team.documentation.id}"
}
