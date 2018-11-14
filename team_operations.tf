resource "github_team" "operations" {
  name        = "Operations"
  description = "Build/Packaging/Release"
  privacy     = "closed"
}

variable "operations_repos" {
  default = [
    "continuous-integration",
    "linux-sources",
    "opx-build",
    "opx-linux-config",
    "opx-manifest",
    "opx-onie-installer",
    "rootfs",
    "tools_opx-py",
  ]
  type    = "list"
}

resource "github_team_repository" "operations" {
  count      = "${length(var.operations_repos)}"
  permission = "push"
  repository = "${element(var.operations_repos, count.index)}"
  team_id    = "${github_team.operations.id}"
}
