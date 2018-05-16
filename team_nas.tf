resource "github_team" "nas" {
  name        = "NAS"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "nas_repos" {
  default = [
    "opx-nas-acl",
    "opx-nas-common",
    "opx-nas-daemon",
    "opx-nas-interface",
    "opx-nas-l2",
    "opx-nas-l3",
    "opx-nas-linux",
    "opx-nas-ndi",
    "opx-nas-ndi-api",
    "opx-nas-qos",
  ]
  type    = "list"
}

resource "github_team_repository" "nas" {
  count      = "${length(var.nas_repos)}"
  permission = "push"
  repository = "${element(var.nas_repos, count.index)}"
  team_id    = "${github_team.nas.id}"
}
