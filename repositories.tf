module "SAI" {
  source      = "./modules/repo"
  name        = "SAI"
  description = "Switch Abstraction Interface."
  default_branch = "dell.1.2+"
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
  description = "Concourse CI/CD configuration."
}

module "github" {
  source      = "./modules/repo"
  name        = "github"
  description = "GitHub configuration."
}

module "infra_k8s" {
  source      = "./modules/repo"
  name        = "infra_k8s"
  description = "OpenSwitch Cluster."
}

module "infra_project-config" {
  source      = "./modules/repo"
  name        = "infra_project-config"
  description = ""
}

module "infra_puppet-gerrit" {
  source      = "./modules/repo"
  name        = "infra_puppet-gerrit"
  description = ""
}

module "infra_system-config" {
  source      = "./modules/repo"
  name        = "infra_system-config"
  description = ""
}

module "opx-alarm" {
  source      = "./modules/repo"
  name        = "opx-alarm"
  description = ""
}

module "opx-base-model" {
  source      = "./modules/repo"
  name        = "opx-base-model"
  description = ""
}

module "opx-build" {
  source      = "./modules/repo"
  name        = "opx-build"
  description = "Build environment and scripts for OpenSwitch."
}

module "opx-common-utils" {
  source      = "./modules/repo"
  name        = "opx-common-utils"
  description = ""
}

module "opx-core" {
  source      = "./modules/repo"
  name        = "opx-core"
  description = ""
}

module "opx-cps" {
  source      = "./modules/repo"
  name        = "opx-cps"
  description = ""
}

module "opx-db-sql" {
  source      = "./modules/repo"
  name        = "opx-db-sql"
  description = ""
}

module "opx-docs" {
  source      = "./modules/repo"
  name        = "opx-docs"
  description = "OpenSwitch OPX documentation."
}

module "opx-logging" {
  source      = "./modules/repo"
  name        = "opx-logging"
  description = ""
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
}

module "opx-nas-common" {
  source      = "./modules/repo"
  name        = "opx-nas-common"
  description = ""
}

module "opx-nas-daemon" {
  source      = "./modules/repo"
  name        = "opx-nas-daemon"
  description = ""
}

module "opx-nas-interface" {
  source      = "./modules/repo"
  name        = "opx-nas-interface"
  description = ""
}

module "opx-nas-l2" {
  source      = "./modules/repo"
  name        = "opx-nas-l2"
  description = ""
}

module "opx-nas-l3" {
  source      = "./modules/repo"
  name        = "opx-nas-l3"
  description = ""
}

module "opx-nas-linux" {
  source      = "./modules/repo"
  name        = "opx-nas-linux"
  description = ""
}

module "opx-nas-ndi" {
  source      = "./modules/repo"
  name        = "opx-nas-ndi"
  description = ""
}

module "opx-nas-ndi-api" {
  source      = "./modules/repo"
  name        = "opx-nas-ndi-api"
  description = ""
}

module "opx-nas-qos" {
  source      = "./modules/repo"
  name        = "opx-nas-qos"
  description = ""
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
}

module "opx-pas" {
  source      = "./modules/repo"
  name        = "opx-pas"
  description = ""
}

module "opx-platform-config" {
  source      = "./modules/repo"
  name        = "opx-platform-config"
  description = ""
}

module "opx-sai-vm" {
  source      = "./modules/repo"
  name        = "opx-sai-vm"
  description = ""
}

module "opx-sdi-sys" {
  source      = "./modules/repo"
  name        = "opx-sdi-sys"
  description = ""
}

module "opx-snmp" {
  source      = "./modules/repo"
  name        = "opx-snmp"
  description = ""
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
}

module "opx-tools" {
  source      = "./modules/repo"
  name        = "opx-tools"
  description = ""
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
}
