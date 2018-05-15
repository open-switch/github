resource "github_team" "administration" {
  name        = "Administration"
  description = "Organization and Team Administration"
  privacy     = "closed"
}

variable "administration_repos" {
  default = [
    "SAI",
    "continuous-integration",
    "github",
    "rootfs",
    "tools_opx-py",
  ]
  type    = "list"
}

resource "github_team_repository" "administration" {
  count      = "${length(var.administration_repos)}"
  permission = "admin"
  repository = "${element(var.administration_repos, count.index)}"
  team_id    = "${github_team.administration.id}"
}
