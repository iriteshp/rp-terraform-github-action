resource "keycloak_authentication_flow" "post-auth-flow" {
  alias       = "Post Auth Flow"
  provider_id = "basic-flow"
  realm_id    = keycloak_realm.login_gov_tf.id
}

resource "keycloak_authentication_flow" "login-gov-authentication-flow-merge" {
  alias       = "Merge"
  description = "browser based authentication"
  provider_id = "basic-flow"
  realm_id    = keycloak_realm.login_gov_tf.id
}
