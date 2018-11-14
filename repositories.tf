module "SAI" {
  source      = "./modules/repo"
  name        = "SAI"
  description = "Switch Abstraction Interface."
  default_branch = "dell.1.2+"
  checks      = ["DCO", "buildkite/SAI-stretch"]
}

module "ansible-opx-examples" {
  source      = "./modules/repo"
  name        = "ansible-opx-examples"
  description = "Example Ansible playbook to use OPX Ansible modules and roles."
}

module "ansible-role-opx-acl" {
  source      = "./modules/repo"
  name        = "ansible-role-opx-acl"
  description = "Example Ansible role to provision OPX ACL tables."
}

module "ansible-role-opx-mac" {
  source      = "./modules/repo"
  name        = "ansible-role-opx-mac"
  description = "Example Ansible role to provision OPX MAC address table."
}

module "ansible-role-opx-qos" {
  source      = "./modules/repo"
  name        = "ansible-role-opx-qos"
  description = "Example Ansible role to provision OPX quality of service tables."
}

module "ansible-role-opx-system" {
  source      = "./modules/repo"
  name        = "ansible-role-opx-system"
  description = "Example Ansible role to provision OPX via linux utilities."
}

module "chef-opx-examples" {
  source      = "./modules/repo"
  name        = "chef-opx-examples"
  description = "Documentation for Chef for OpenSwitch OPX."
}

module "continuous-integration" {
  source      = "./modules/repo"
  name        = "continuous-integration"
  description = "OpenSwitch CI/CD configuration."
  checks      = ["DCO", "buildkite/continuous-integration"]
}

module "github" {
  source      = "./modules/repo"
  name        = "github"
  description = "GitHub configuration."
  strict      = "true"
  checks      = ["DCO", "buildkite/github"]
}

module "infra_k8s" {
  source      = "./modules/repo"
  name        = "infra_k8s"
  description = "OpenSwitch Cluster."
  archived    = true
}

module "infra_project-config" {
  source      = "./modules/repo"
  name        = "infra_project-config"
  description = ""
  archived    = true
}

module "infra_puppet-gerrit" {
  source      = "./modules/repo"
  name        = "infra_puppet-gerrit"
  description = ""
  archived    = true
}

module "infra_system-config" {
  source      = "./modules/repo"
  name        = "infra_system-config"
  description = ""
  archived    = true
}

module "linux-sources" {
  source      = "./modules/repo"
  name        = "linux-sources"
  description = "OpenSwitch Linux Sources"
  archived    = true
}

module "opx-alarm" {
  source      = "./modules/repo"
  name        = "opx-alarm"
  description = ""
  checks      = ["DCO", "buildkite/opx-alarm-stretch"]
}

module "opx-base-model" {
  source      = "./modules/repo"
  name        = "opx-base-model"
  description = ""
  checks      = ["DCO", "buildkite/opx-base-model-stretch"]
}

module "opx-build" {
  source      = "./modules/repo"
  name        = "opx-build"
  description = "Build environment and scripts for OpenSwitch."
  checks      = ["DCO", "buildkite/opx-build"]
}

module "opx-common-utils" {
  source      = "./modules/repo"
  name        = "opx-common-utils"
  description = ""
  checks      = ["DCO", "buildkite/opx-common-utils-stretch"]
}

module "opx-core" {
  source      = "./modules/repo"
  name        = "opx-core"
  description = ""
  checks      = ["DCO", "buildkite/opx-core-stretch"]
}

module "opx-cps" {
  source      = "./modules/repo"
  name        = "opx-cps"
  description = ""
  checks      = ["DCO", "buildkite/opx-cps-stretch"]
}

module "opx-db-sql" {
  source      = "./modules/repo"
  name        = "opx-db-sql"
  description = ""
  checks      = ["DCO", "buildkite/opx-db-sql-stretch"]
}

module "opx-dhcp-agent" {
  source      = "./modules/repo"
  name        = "opx-dhcp-agent"
  description = "DHCP Relay and Switch Agent"
  checks      = ["DCO"]
}

module "opx-docs" {
  source      = "./modules/repo"
  name        = "opx-docs"
  description = "OpenSwitch OPX documentation."
}

module "opx-linux-config" {
  source      = "./modules/repo"
  name        = "opx-linux-config"
  description = "OpenSwitch Linux configuration"
  checks      = ["DCO", "WIP", "buildkite/opx-linux-config"]
}

module "opx-logging" {
  source      = "./modules/repo"
  name        = "opx-logging"
  description = ""
  checks      = ["DCO", "buildkite/opx-logging-stretch"]
}

module "opx-manifest" {
  source      = "./modules/repo"
  name        = "opx-manifest"
  description = ""
}

module "opx-nas-acl" {
  source      = "./modules/repo"
  name        = "opx-nas-acl"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-acl-stretch"]
}

module "opx-nas-common" {
  source      = "./modules/repo"
  name        = "opx-nas-common"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-common-stretch"]
}

module "opx-nas-daemon" {
  source      = "./modules/repo"
  name        = "opx-nas-daemon"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-daemon-stretch"]
}

module "opx-nas-interface" {
  source      = "./modules/repo"
  name        = "opx-nas-interface"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-interface-stretch"]
}

module "opx-nas-l2" {
  source      = "./modules/repo"
  name        = "opx-nas-l2"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-l2-stretch"]
}

module "opx-nas-l3" {
  source      = "./modules/repo"
  name        = "opx-nas-l3"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-l3-stretch"]
}

module "opx-nas-linux" {
  source      = "./modules/repo"
  name        = "opx-nas-linux"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-linux-stretch"]
}

module "opx-nas-ndi" {
  source      = "./modules/repo"
  name        = "opx-nas-ndi"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-ndi-stretch"]
}

module "opx-nas-ndi-api" {
  source      = "./modules/repo"
  name        = "opx-nas-ndi-api"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-ndi-api-stretch"]
}

module "opx-nas-qos" {
  source      = "./modules/repo"
  name        = "opx-nas-qos"
  description = ""
  checks      = ["DCO", "buildkite/opx-nas-qos-stretch"]
}

module "opx-northbound" {
  source      = "./modules/repo"
  name        = "opx-northbound"
  description = "Applications that interface with CPS in order to serve external clients using RESTConf, NetConf, etc."
}

module "opx-onie-installer" {
  source      = "./modules/repo"
  name        = "opx-onie-installer"
  description = "OpenSwitch ONIE Installer."
  checks      = ["DCO", "CodeFactor", "WIP", "buildkite/opx-onie-installer"]
}

module "opx-pas" {
  source      = "./modules/repo"
  name        = "opx-pas"
  description = ""
  checks      = ["DCO", "buildkite/opx-pas-stretch"]
}

module "opx-platform-config" {
  source      = "./modules/repo"
  name        = "opx-platform-config"
  description = ""
  checks      = ["DCO", "buildkite/opx-platform-config-stretch"]
}

module "opx-sai-vm" {
  source      = "./modules/repo"
  name        = "opx-sai-vm"
  description = ""
  checks      = ["DCO", "buildkite/opx-sai-vm-stretch"]
}

module "opx-sdi-sys" {
  source      = "./modules/repo"
  name        = "opx-sdi-sys"
  description = ""
  checks      = ["DCO", "buildkite/opx-sdi-sys-stretch"]
}

module "opx-snmp" {
  source      = "./modules/repo"
  name        = "opx-snmp"
  description = ""
  checks      = ["DCO", "buildkite/opx-snmp-stretch"]
}

module "opx-system-utils" {
  source      = "./modules/repo"
  name        = "opx-system-utils"
  description = "Tools and services for monitoring system status and telemetry"
  checks      = ["DCO"]
}

module "opx-test" {
  source      = "./modules/repo"
  name        = "opx-test"
  description = ""
}

module "opx-tmpctl" {
  source      = "./modules/repo"
  name        = "opx-tmpctl"
  description = ""
  checks      = ["DCO", "buildkite/opx-tmpctl-stretch"]
}

module "opx-tools" {
  source      = "./modules/repo"
  name        = "opx-tools"
  description = ""
  checks      = ["DCO", "buildkite/opx-tools-stretch"]
}

module "puppet-opx-examples" {
  source      = "./modules/repo"
  name        = "puppet-opx-examples"
  description = "Documentation for Puppet for OpenSwitch OPX."
}

module "rootfs" {
  source      = "./modules/repo"
  name        = "rootfs"
  description = "OpenSwitch root filesystem."
}

module "salt-opx-examples" {
  source      = "./modules/repo"
  name        = "salt-opx-examples"
  description = "Documentation for Salt for OpenSwitch OPX."
}

module "tools_opx-py" {
  source      = "./modules/repo"
  name        = "tools_opx-py"
  description = "OpenSwitch development tool"
  archived    = "true"
}
