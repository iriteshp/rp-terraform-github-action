#!/usr/bin/env ruby
require 'json'

def resource_module(client_name)
    ret = ''
    ret += <<~HERE
    enable_#{client_name} = var.enable_#{client_name}
    HERE
    return ret
  end
def resource_enable(client_name)
    ret = ''
    ret += <<~HERE
    enable_#{client_name} = true
    HERE
    return ret
  end

def resource_variable(client_name)
    ret = ''
    ret += <<~HERE
    variable "enable_#{client_name}" {
      type        = bool
      description = "Whether environment should use the #{client_name} client"
      default     = false
    }
    HERE
    return ret
  end

def resource_client(client_name)
    ret = ''
    ret += <<~HERE
    resource "keycloak_openid_client" "#{client_name}" {
      access_type                                = "PUBLIC"
      backchannel_logout_revoke_offline_sessions = "false"
      backchannel_logout_session_required        = "false"
      client_authenticator_type                  = "client-secret"
      client_id                                  = "#{client_name}"
      consent_required                           = "false"
      direct_access_grants_enabled               = "true"
      display_on_consent_screen                  = "false"
      enabled                                    = "true"
      frontchannel_logout_enabled                = "false"
      full_scope_allowed                         = "true"
      implicit_flow_enabled                      = "false"
      name                                       = "#{client_name}"
      oauth2_device_authorization_grant_enabled  = "false"
      realm_id                                   = keycloak_realm.login_gov_tf.id
      root_url                                   = var.react_test_app_root_url
      admin_url                                  = var.react_test_app_admin_url
      standard_flow_enabled = "true"
      use_refresh_tokens    = "true"
      valid_redirect_uris                        = var.react_test_app_uris
      web_origins           = ["*"]
    }
    HERE
    return ret
  end

def create_file(file_name, str)
    File.write(file_name, str)
  end

file = File.read(ARGV[0])

parsed = JSON.parse(file)
temp_dir = "temp"
client_output = "#{temp_dir}/client.tf"
var_output = "#{temp_dir}/variable.tf"
module_output = "#{temp_dir}/module.tf"
enable_output = "#{temp_dir}/enable.tf"

Dir.mkdir(temp_dir) unless File.exists?(temp_dir)

if parsed['environment'] == 'dev'

  # create client
  client_output_str = resource_client(parsed['client_name'])
  unless client_output_str.nil?
    create_file(client_output, client_output_str)
    puts "Client created."
  end

  # create variable
  var_output_str = resource_variable(parsed['client_name'])
  unless var_output_str.nil?
    create_file(var_output, var_output_str)
    puts "Variable created."
  end

  # create enable var
  enable_output_str = resource_enable(parsed['client_name'])
  unless enable_output_str.nil?
    create_file(enable_output, enable_output_str)
    puts "Enable variable created."
  end

  # create module var
  module_output_str = resource_module(parsed['client_name'])
  unless module_output_str.nil?
    create_file(module_output, module_output_str)
    puts "Module variable created."
  end

  elsif parsed['environment'] == 'utility'
    # TODO: add only enable for utility, no need for other resources
    puts parsed['environment']
  end