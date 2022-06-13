resource "keycloak_authentication_execution_config" "login-gov-authentication-execution-config" {
  alias = "Login.gov"

  config = {
    defaultProvider = "login-gov-oidc"
  }

  execution_id = keycloak_authentication_execution.login-gov-authentication-flow-merge-auth-redirector.id
  realm_id     = keycloak_realm.login_gov_tf.id
}
