# variable "base_tags" {
#   type = map(string)
# }

variable "region" {
  default     = "us-gov-west-1"
  description = "AWS region to use"
  type        = string
}

variable "create_next_db" {
  type        = bool
  default     = false
  description = "If a 'keycloak-next' db should be created"
}

variable "db_multi_az" {
  type        = bool
  default     = false
  description = "If RDS database should be multi availability zone"
}

variable "pull_secret" {
  type        = bool
  description = "To pull the master client secret from parameter store. If false, will not use a secret"
  default     = true
}

variable "keycloak_url" {
  type        = string
  description = "Keycloak server url. Will over ride the default."
  default     = ""
}

variable "client_id" {
  type        = string
  description = "Keycloak master client id. Will over ride the default."
  default     = ""
}

variable "client_secret" {
  type        = string
  description = "Keycloak master client secret. Will over ride the default."
  default     = ""
}

variable "client_secret_path" {
  type        = string
  description = "SSM parameter store path to the master client secret. Will over ride the default."
  default     = ""
}

### variables for login-gov module
variable "enable_login_gov" {
  type        = bool
  description = "Whether environment should use the login-gov module"
  default     = false
}

variable "platform_console_ui_uris" {
  type        = list(string)
  description = "List of valud URIs for platform-console-ui"
}

variable "react_test_app_uris" {
  type        = list(string)
  description = "List of valud URIs for react test app"
}

variable "react_test_app_root_url" {
  type = string
}

variable "react_test_app_admin_url" {
  type = string
}

