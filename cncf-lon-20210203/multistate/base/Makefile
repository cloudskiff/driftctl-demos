ifndef SERVICE
$(error SERVICE is not set)
endif

.PHONY: plan
plan:
	cd $(SERVICE) &&\
	terraform plan &&\
	cd ..

.PHONY: apply
apply:
	cd $(SERVICE) &&\
	terraform fmt &&\
	terraform apply &&\
	cd ..

.PHONY: help
help:
	terraform --help

.PHONY: destroy-all
destroy-all:
	cd $(SERVICE) &&\
	terraform fmt &&\
	terraform apply &&\
	cd ..