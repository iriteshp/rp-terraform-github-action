
resource "keycloak_openid_user_client_role_protocol_mapper" "platform_console_ui_client_roles" {
  add_to_access_token = "true"
  add_to_id_token     = "false"
  add_to_userinfo     = "false"
  claim_name          = "resource_access.${keycloak_openid_client.platform_console_ui.client_id}.roles"
  claim_value_type    = "String"
  client_id           = keycloak_openid_client.platform_console_ui.id
  multivalued         = "true"
  name                = "Client Roles"
  realm_id            = keycloak_realm.login_gov_tf.id
}
