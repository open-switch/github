# GitHub Automation wow!

> Need a personal access token with repo, admin:org, and delete_project caps.

Initial setup of remote state

```bash
cd remote-state
terraform init
terraform apply
cd ..
terraform init
```

Apply changes normally

```bash
terraform plan
terraform apply
```

Add a new repo module and create new repo

```bash
#comment default_branch line in modules/repo/main.tf
terraform init
terraform plan
terraform apply
#uncomment default_branch line in modules/repo/main.tf
terraform apply
```

Add a new repo module and import existing repo

```bash
R=<newrepo> make repo
terraform plan
terraform apply
```
