variable "name" {
  description = "The name of the repository"
}
variable "description" {
  description = "Byline for the repository, show up under name"
}
variable "default_branch" {
  default = "master"
}
variable "archived" {
  default = false
}
variable "strict" {
  default = "false"
  description = "Pull requests must be current with master if true"
}
variable "checks" {
  default = ["DCO"]
  description = "Required status checks"
}
