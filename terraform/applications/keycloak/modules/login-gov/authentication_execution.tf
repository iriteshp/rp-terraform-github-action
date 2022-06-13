
resource "keycloak_authentication_execution" "login-gov-authentication-flow-merge-auth-cookie" {
  authenticator     = "auth-cookie"
  parent_flow_alias = keycloak_authentication_flow.login-gov-authentication-flow-merge.alias
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "ALTERNATIVE"
}
resource "keycloak_authentication_execution" "login-gov-authentication-flow-merge-auth-redirector" {
  authenticator     = "identity-provider-redirector"
  # depends_on        = ["keycloak_authentication_execution.tfer--authentication_execution_login_gov_24c93a40_cf6e_4f93_9612_d4e6e83d0ff0"]
  parent_flow_alias = keycloak_authentication_flow.login-gov-authentication-flow-merge.alias
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_execution" "login-gov-authentication-flow-merge-auth-username-pass-form" {
  authenticator     = "auth-username-password-form"
  parent_flow_alias = keycloak_authentication_subflow.login-gov-authentication-subflow-merge-forms.alias
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "REQUIRED"
}

resource "keycloak_authentication_execution" "login-gov-authentication-flow-merge-auth-conditional-user-config" {
  authenticator     = "conditional-user-configured"
  parent_flow_alias = keycloak_authentication_subflow.login-gov-authentication-subflow-merge-browser-otp.alias
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "REQUIRED"
}

resource "keycloak_authentication_execution" "login-gov-authentication-flow-merge-auth-otp-form" {
  authenticator     = "auth-otp-form"
  # depends_on        = ["keycloak_authentication_execution.tfer--authentication_execution_login_gov_d2cbd823_b01f_478c_8cf5_6ea5ad0b71a6"]
  parent_flow_alias = keycloak_authentication_subflow.login-gov-authentication-subflow-merge-browser-otp.alias
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "REQUIRED"
}
