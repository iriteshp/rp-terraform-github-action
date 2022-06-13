resource "keycloak_authentication_subflow" "login-gov-authentication-subflow-merge-forms" {
  alias             = "Merge forms"
#   depends_on        = ["keycloak_authentication_execution.tfer--authentication_execution_login_gov_ca7822c9_e3c3_4a24_9b1c_82143ae0f948"]
  description       = "Username, password, otp and other auth forms."
  parent_flow_alias = keycloak_authentication_flow.login-gov-authentication-flow-merge.alias
  provider_id       = "basic-flow"
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "ALTERNATIVE"
}

resource "keycloak_authentication_subflow" "login-gov-authentication-subflow-merge-browser-otp" {
  alias             = "Merge Browser - Conditional OTP"
#   depends_on        = ["keycloak_authentication_execution.tfer--authentication_execution_login_gov_d82a7317_9b01_47f4_841a_2fd8f69b744a"]
  description       = "Flow to determine if the OTP is required for the authentication"
  parent_flow_alias = keycloak_authentication_subflow.login-gov-authentication-subflow-merge-forms.alias
  provider_id       = "basic-flow"
  realm_id          = keycloak_realm.login_gov_tf.id
  requirement       = "CONDITIONAL"
}
