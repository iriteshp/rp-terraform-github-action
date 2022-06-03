include ../../../Makefile.n

# Add additional target for keycloak workflow
fmt-check:
	terraform fmt -check

plan-no-refresh: check-state tfplan-no-refresh

tfplan-no-refresh:
	terraform validate
	terraform plan -out=tfplan-${ENV} ${PLAN_FLAGS} -no-color -refresh=false