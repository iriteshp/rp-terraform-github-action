provider "keycloak" {
  client_id                = "ADD CLIENT HERE"
  client_secret            = "ADD SECRET HERE"
  url                      = var.keycloak_url
  tls_insecure_skip_verify = true # to avoid x509 unrecognized cert errors
}
