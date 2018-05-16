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
  description    = "CPS maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "logging" {
  name           = "Logging"
  description    = "Logging maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "nas" {
  name           = "NAS"
  description    = "NAS maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "pas" {
  name           = "PAS"
  description    = "PAS maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "platform" {
  name           = "Platform"
  description    = "Platform maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "sai" {
  name           = "SAI"
  description    = "SAI maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "sdi" {
  name           = "SDI"
  description    = "SDI maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "snmp" {
  name           = "SNMP"
  description    = "SNMP maintainers"
  privacy        = "closed"
  parent_team_id = "${github_team.development.id}"
}

resource "github_team" "yang" {
  name           = "Yang"
  description    = "Yang model maintainers"
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
