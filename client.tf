resource "keycloak_openid_client" "client-test1" {
access_type                                = "PUBLIC"
backchannel_logout_revoke_offline_sessions = "false"
backchannel_logout_session_required        = "false"
client_authenticator_type                  = "client-secret"
client_id                                  = "client-test1"
consent_required                           = "false"
direct_access_grants_enabled               = "true"
display_on_consent_screen                  = "false"
enabled                                    = "true"
frontchannel_logout_enabled                = "false"
full_scope_allowed                         = "true"
implicit_flow_enabled                      = "false"
name                                       = "client-test1"
oauth2_device_authorization_grant_enabled  = "false"
realm_id                                   = keycloak_realm.login_gov_tf.id
root_url                                   = var.react_test_app_root_url
admin_url                                  = var.react_test_app_admin_url
standard_flow_enabled = "true"
use_refresh_tokens    = "true"
valid_redirect_uris                        = var.react_test_app_uris
web_origins           = ["*"]
}
