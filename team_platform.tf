resource "github_team" "platform" {
  name        = "Platform"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "platform_repos" {
  default = [
    "opx-platform-config",
  ]
  type    = "list"
}

resource "github_team_repository" "platform" {
  count      = "${length(var.platform_repos)}"
  permission = "push"
  repository = "${element(var.platform_repos, count.index)}"
  team_id    = "${github_team.platform.id}"
}
