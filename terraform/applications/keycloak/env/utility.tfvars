base_tags = {
    dsva_version = "v2"
    environment  = "utility"
    group        = "dsva"
    managed      = "terraform"
    office       = "osva"
    project      = "vagov"
    provider     = "aws"
    region       = "govcloud"
    suboffice    = "cto"
    # VAEC Business tags
    VAECID        = "AWG20180517003"
    ProjectShort  = "Vets.gov"
    ProjectName   = "VA Vets.gov"
    Adminstration = "TBD"
    Office        = "tbd"
    # VAEC Technical tags
    # Could be a tag to differentiate Caseflow / eX
    ResTag = "shared"
    # web, database, message broker, load balancer, VPC, router, jump box, file server, storage mid tier
    Role        = "tbd"
    Environment = "UTILITY"
}

db_multi_az = true

### keycloak configs
keycloak_url = "https://keycloak.vfs.va.gov"