init:
	terraform init

repo: init
	terraform import module.$(R).github_repository.repo $(R)
