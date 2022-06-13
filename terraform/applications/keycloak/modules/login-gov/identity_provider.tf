resource "keycloak_oidc_identity_provider" "login_gov" {
  realm                         = keycloak_realm.login_gov_tf.id
  alias                         = "login-gov-oidc"
  display_name                  = "Login.gov"
  authorization_url             = "https://idp.int.identitysandbox.gov/openid_connect/authorize?acr_values=http%3A%2F%2Fidmanagement.gov%2Fns%2Fassurance%2Floa%2F3"
  client_id                     = "urn:gov:gsa:openidconnect.profiles:sp:sso:va_gov:developer_access"
  client_secret                 = "SOME SECRET"
  token_url                     = "https://idp.int.identitysandbox.gov/api/openid_connect/token"
  logout_url                    = "https://idp.int.identitysandbox.gov/openid_connect/logout"
  backchannel_supported         = false
  enabled                       = true
  store_token                   = true
  add_read_token_role_on_create = true
  first_broker_login_flow_alias = "first broker login"
  post_broker_login_flow_alias  = "Post Auth Flow"
  sync_mode                     = "IMPORT"
  user_info_url                 = "https://idp.int.identitysandbox.gov/api/openid_connect/userinfo"
  default_scopes                = "openid profile email phone"
  extra_config = {
    "clientAuthMethod"         = "private_key_jwt"
    issuer                     = "https://idp.int.identitysandbox.gov/"
    client_assertion_signature = "RS256"
  }
}
