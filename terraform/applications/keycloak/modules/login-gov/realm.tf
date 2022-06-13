resource "keycloak_realm" "login_gov_tf" {
  access_code_lifespan                     = "1m0s"
  access_code_lifespan_login               = "30m0s"
  access_code_lifespan_user_action         = "5m0s"
  access_token_lifespan                    = "1m0s"
  access_token_lifespan_for_implicit_flow  = "15m0s"
  action_token_generated_by_admin_lifespan = "12h0m0s"
  action_token_generated_by_user_lifespan  = "5m0s"
  browser_flow                             = "browser"
  client_authentication_flow               = "clients"
  client_session_idle_timeout              = "0s"
  client_session_max_lifespan              = "0s"
  default_signature_algorithm              = "RS256"
  direct_grant_flow                        = "direct grant"
  display_name                             = "Keycloak"
  display_name_html                        = "<div class=\"kc-logo-text\"><span>Keycloak</span></div>"
  docker_authentication_flow               = "docker auth"
  duplicate_emails_allowed                 = "false"
  edit_username_allowed                    = "false"
  enabled                                  = "true"
  login_with_email_allowed                 = "true"
  oauth2_device_code_lifespan              = "10m0s"
  oauth2_device_polling_interval           = "600"
  offline_session_idle_timeout             = "720h0m0s"
  offline_session_max_lifespan             = "1440h0m0s"
  offline_session_max_lifespan_enabled     = "false"

  otp_policy {
    algorithm         = "HmacSHA1"
    digits            = "6"
    initial_counter   = "0"
    look_ahead_window = "1"
    period            = "30"
    type              = "totp"
  }

  realm                                = "login_gov_tf"
  refresh_token_max_reuse              = "0"
  registration_allowed                 = "false"
  registration_email_as_username       = "false"
  registration_flow                    = "registration"
  remember_me                          = "false"
  reset_credentials_flow               = "reset credentials"
  reset_password_allowed               = "false"
  revoke_refresh_token                 = "false"
  ssl_required                         = "external"
  sso_session_idle_timeout             = "30m0s"
  sso_session_idle_timeout_remember_me = "0s"
  sso_session_max_lifespan             = "10h0m0s"
  sso_session_max_lifespan_remember_me = "0s"
  user_managed_access                  = "false"
  verify_email                         = "false"

  web_authn_passwordless_policy {
    avoid_same_authenticator_register = "false"
    create_timeout                    = "0"
    relying_party_entity_name         = "keycloak"
    signature_algorithms              = ["ES256"]
  }

  web_authn_policy {
    avoid_same_authenticator_register = "false"
    create_timeout                    = "0"
    relying_party_entity_name         = "keycloak"
    signature_algorithms              = ["ES256"]
  }
}
