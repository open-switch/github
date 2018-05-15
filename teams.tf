# Top level teams #############################################################

resource "github_team" "administration" {
  name        = "Administration"
  description = "Organization and Team Administration"
  privacy     = "closed"
}

resource "github_team" "configuration" {
  name        = "Configuration"
  description = "Ansible/Chef/Puppet/Salt/etc."
  privacy     = "closed"
}

resource "github_team" "development" {
  name        = "Development"
  description = "OpenSwitch Developers"
  privacy     = "closed"
}

resource "github_team" "documentation" {
  name        = "Documentation"
  description = "And documentation."
  privacy     = "closed"
}

resource "github_team" "infrastructure" {
  name        = "Infrastructure"
  description = "aws/k8s/etc."
  privacy     = "closed"
}

resource "github_team" "operations" {
  name        = "Operations"
  description = "Build/Packaging/Release"
  privacy     = "closed"
}

resource "github_team" "test" {
  name        = "Test"
  description = "Unit/Integration/Smoke/E2E/etc."
  privacy     = "closed"
}

# Sub-teams ###################################################################
