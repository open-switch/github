module "continuous-integration" {
  source      = "./modules/repo"
  name        = "continuous-integration"
  description = "Concourse CI/CD configuration"
}

module "github" {
  source      = "./modules/repo"
  name        = "github"
  description = "GitHub configuration"
}

module "rootfs" {
  source      = "./modules/repo"
  name        = "rootfs"
  description = "OpenSwitch root filesystem"
}

module "tools_opx-py" {
  source      = "./modules/repo"
  name        = "tools_opx-py"
  description = "OpenSwitch development tool"
}

module "SAI" {
  source      = "./modules/repo"
  name        = "SAI"
  description = "Switch Abstraction Interface"
  default_branch = "dell.1.2+"
}
