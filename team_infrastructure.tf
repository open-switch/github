resource "github_team" "infrastructure" {
  name        = "Infrastructure"
  description = ""
  privacy     = "closed"
}

variable "infrastructure_repos" {
  default = [
    "infra_k8s",
    "infra_project-config",
    "infra_puppet-gerrit",
    "infra_system-config",
  ]
  type    = "list"
}

resource "github_team_repository" "infrastructure" {
  count      = "${length(var.infrastructure_repos)}"
  permission = "push"
  repository = "${element(var.infrastructure_repos, count.index)}"
  team_id    = "${github_team.infrastructure.id}"
}
