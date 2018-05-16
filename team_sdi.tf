resource "github_team" "sdi" {
  name        = "SDI"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "sdi_repos" {
  default = [
    "opx-sdi-sys",
  ]
  type    = "list"
}

resource "github_team_repository" "sdi" {
  count      = "${length(var.sdi_repos)}"
  permission = "push"
  repository = "${element(var.sdi_repos, count.index)}"
  team_id    = "${github_team.sdi.id}"
}
