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

resource "github_team" "cps" {
  name           = "CPS"
  description    = "CPS Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "logging" {
  name           = "Logging"
  description    = "Logging Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "nas" {
  name           = "NAS"
  description    = "NAS Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "pas" {
  name           = "PAS"
  description    = "PAS Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "platform" {
  name           = "Platform"
  description    = "Platform Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "sai" {
  name           = "SAI"
  description    = "SAI Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "sdi" {
  name           = "SDI"
  description    = "SDI Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "snmp" {
  name           = "SNMP"
  description    = "SNMP Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "modeling" {
  name           = "Modeling"
  description    = "Modeling Maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
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

resource "github_team" "test" {
  name        = "Test"
  description = "Unit/Integration/Smoke/E2E/etc."
  privacy     = "closed"
}
