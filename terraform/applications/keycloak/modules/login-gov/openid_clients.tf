

resource "keycloak_openid_client" "platform_console_ui" {
  access_type                                = "CONFIDENTIAL"
  backchannel_logout_revoke_offline_sessions = "false"
  backchannel_logout_session_required        = "true"
  client_authenticator_type                  = "client-secret"
  client_id                                  = "platform-console-ui"
  consent_required                           = "false"
  direct_access_grants_enabled               = "true"
  display_on_consent_screen                  = "false"
  enabled                                    = "true"
  frontchannel_logout_enabled                = "false"
  full_scope_allowed                         = "true"
  implicit_flow_enabled                      = "false"
  oauth2_device_authorization_grant_enabled  = "false"
  realm_id                                   = keycloak_realm.login_gov_tf.id
  service_accounts_enabled                   = "true"
  standard_flow_enabled                      = "true"
  use_refresh_tokens                         = "true"
  valid_redirect_uris                        = var.platform_console_ui_uris
  web_origins                                = ["*"]

  authorization {
    policy_enforcement_mode          = "ENFORCING"
    decision_strategy                = "UNANIMOUS"
    allow_remote_resource_management = "true"
  }
}


resource "keycloak_openid_client" "react_test_app" {
  access_type                                = "PUBLIC"
  backchannel_logout_revoke_offline_sessions = "false"
  backchannel_logout_session_required        = "false"
  client_authenticator_type                  = "client-secret"
  client_id                                  = "react-test-app"
  consent_required                           = "false"
  direct_access_grants_enabled               = "true"
  display_on_consent_screen                  = "false"
  enabled                                    = "true"
  frontchannel_logout_enabled                = "false"
  full_scope_allowed                         = "true"
  implicit_flow_enabled                      = "false"
  name                                       = "AMT Test Application"
  oauth2_device_authorization_grant_enabled  = "false"
  realm_id                                   = keycloak_realm.login_gov_tf.id
  root_url                                   = var.react_test_app_root_url
  admin_url                                  = var.react_test_app_admin_url
  standard_flow_enabled = "true"
  use_refresh_tokens    = "true"
  valid_redirect_uris                        = var.react_test_app_uris
  web_origins           = ["*"]
}
resource "keycloak_openid_client" "my-react-app" {
  count                                      = var.enable_my-react-app ? 1 : 0
  access_type                                = "PUBLIC"
  backchannel_logout_revoke_offline_sessions = "false"
  backchannel_logout_session_required        = "false"
  client_authenticator_type                  = "xx-client-secret"
  client_id                                  = "my-react-app"
  consent_required                           = "false"
  direct_access_grants_enabled               = "true"
  display_on_consent_screen                  = "false"
  enabled                                    = "true"
  frontchannel_logout_enabled                = "false"
  full_scope_allowed                         = "true"
  implicit_flow_enabled                      = "false"
  name                                       = "my-react-app"
  oauth2_device_authorization_grant_enabled  = "false"
  realm_id                                   = keycloak_realm.login_gov_tf.id
  standard_flow_enabled                      = "true"
  use_refresh_tokens                         = "true"
  valid_redirect_uris                        = ["http://localhost:3000/auth"]
  web_origins                                = ["*"]
}
