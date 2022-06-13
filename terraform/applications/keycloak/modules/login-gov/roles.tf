# login.gov client roles
resource "keycloak_role" "platform-console-ui-admin-role" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "admin"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-editor" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "editor"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-maintainer" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "plugin-maintainer"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-plugin-manager" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "plugin-manager"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-plugin-viewer" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "plugin-viewer"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-uma-protection" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "uma-protection"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "platform-console-ui-viewer" {
  client_id = keycloak_openid_client.platform_console_ui.id
  name      = "viewer"
  realm_id  = keycloak_realm.login_gov_tf.id
}

#react test app client roles

resource "keycloak_role" "react-test-app-deployer" {
  client_id       = keycloak_openid_client.react_test_app.id
  composite_roles = ["${keycloak_role.react-test-app-getbranches.id}", "${keycloak_role.react-test-app-getenv.id}", "${keycloak_role.react-test-app-pushbranchestoenv.id}"]
  name            = "deployer"
  realm_id        = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "react-test-app-foo" {
  client_id       = keycloak_openid_client.react_test_app.id
  composite_roles = ["${keycloak_role.react-test-app-deployer.id}"]
  name            = "foo"
  realm_id        = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "react-test-app-getbranches" {
  client_id = keycloak_openid_client.react_test_app.id
  name      = "getBranches"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "react-test-app-getenv" {
  client_id = keycloak_openid_client.react_test_app.id
  name      = "getEnv"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "react-test-app-pushbranchestoenv" {
  client_id = keycloak_openid_client.react_test_app.id
  name      = "pushBranchesToEnv"
  realm_id  = keycloak_realm.login_gov_tf.id
}

resource "keycloak_role" "react-test-app-uma-protection" {
  client_id = keycloak_openid_client.react_test_app.id
  name      = "uma_protection"
  realm_id  = keycloak_realm.login_gov_tf.id
}
