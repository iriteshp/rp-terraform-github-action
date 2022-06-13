# base_tags = {
#     dsva_version = "v2"
#     environment  = "dev"
#     group        = "dsva"
#     managed      = "terraform"
#     office       = "osva"
#     project      = "vagov"
#     provider     = "aws"
#     region       = "govcloud"
#     suboffice    = "cto"
#     # VAEC Business tags
#     VAECID        = "AWG20180517003"
#     ProjectShort  = "Vets.gov"
#     ProjectName   = "VA Vets.gov"
#     Adminstration = "TBD"
#     Office        = "tbd"
#     # VAEC Technical tags
#     # Could be a tag to differentiate Caseflow / eX
#     ResTag = "shared"
#     # web, database, message broker, load balancer, VPC, router, jump box, file server, storage mid tier
#     Role        = "tbd"
#     Environment = "DEV"
# }

# create_next_db = true

### keycloak configs
keycloak_url = "http://localhost:8080"

pull_secret = false
client_id = "terraform-admin-client"
client_secret_path = "	/dsva-vagov/keycloak/dev/master_client_secret"

### for login-gov module
enable_login_gov = true

platform_console_ui_uris = [
  "http://localhost:3000/*",
  "http://localhost:7007/api/auth/oauth2/handler/frame",
  "https://platform-console-ui-dev.vfs.va.gov/api/auth/oauth2/handler/frame",
  "https://platform-console-ui-utility.vfs.va.gov/api/auth/oauth2/handler/frame"
]

react_test_app_uris = ["*", "https://pst-amt-test-app-dev.vfs.va.gov/*"]

react_test_app_root_url = "https://pst-amt-test-app-dev.vfs.va.gov/"
react_test_app_admin_url = "https://pst-amt-test-app-dev.vfs.va.gov/"

### enable clients
# enable_react_app_client = false
