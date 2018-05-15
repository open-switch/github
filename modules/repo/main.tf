resource "github_repository" "repo" {
  name               = "${var.name}"
  description        = "${var.description}"
  homepage_url       = "https://openswitch.net"
  default_branch     = "${var.default_branch}"
  has_issues         = true
  has_downloads      = true
  has_projects       = false
  has_wiki           = true
  allow_merge_commit = false
  auto_init          = true
}

resource "github_branch_protection" "branch_protection" {
  repository = "${github_repository.repo.name}"
  branch = "${github_repository.repo.default_branch}"
  enforce_admins = false

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    require_code_owner_reviews = true
  }
}
