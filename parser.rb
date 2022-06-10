#!/usr/bin/env ruby
require 'json'

def resource_client(client_name)
    ret = ''
    ret += <<~HERE
    resource "keycloak_openid_client" "#{client_name}" {
    "access_type"                                = "PUBLIC"
    "backchannel_logout_revoke_offline_sessions" = "false"
    "backchannel_logout_session_required"        = "false"
    "client_authenticator_type"                  = "client-secret"
    "client_id"                                  = "#{client_name}"
    "consent_required"                           = "false"
    "direct_access_grants_enabled"               = "true"
    "display_on_consent_screen"                  = "false"
    "enabled"                                    = "true"
    "frontchannel_logout_enabled"                = "false"
    "full_scope_allowed"                         = "true"
    "implicit_flow_enabled"                      = "false"
    "name"                                       = "#{client_name}"
    "oauth2_device_authorization_grant_enabled"  = "false"
    "realm_id"                                   =" keycloak_realm.login_gov_tf.id"
    "root_url"                                   = "var.react_test_app_root_url"
    "admin_url"                                  = "var.react_test_app_admin_url"
    "standard_flow_enabled" = "true"
    "use_refresh_tokens"    = "true"
    "valid_redirect_uris"                        = "var.react_test_app_uris"
    "web_origins"           = ["*"]
    }
    HERE
    return ret
  end


parsed = JSON.parse(ARGV[0])

output_str = ''
output_str += resource_client(parsed['client_name'])

output = "client.tf"
puts output_str

if output.nil?
    puts output_str
  else
    File.write(output, output_str)
  end
  puts "Done."

  
