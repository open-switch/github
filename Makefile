init:
	terraform init

repo:
	terraform import module.$(R).github_repository.repo $(R)
