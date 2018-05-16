resource "github_team" "test" {
  name        = "Test"
  description = ""
  privacy     = "closed"
  parent_team_id = "${github_team.development.id}"
}

variable "test_repos" {
  default = [
    "opx-test",
  ]
  type    = "list"
}

resource "github_team_repository" "test" {
  count      = "${length(var.test_repos)}"
  permission = "push"
  repository = "${element(var.test_repos, count.index)}"
  team_id    = "${github_team.test.id}"
}
