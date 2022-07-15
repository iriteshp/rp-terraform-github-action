variable "platform_console_ui_uris" {
  type = list(string)
  description = "List of valud URIs for platform-console-ui"
}

variable "react_test_app_uris" {
  type = list(string)
  description = "List of valud URIs for react test app"
}

variable "react_test_app_root_url" {
  type = string
}

variable "react_test_app_admin_url" {
  type = string
}
variable "enable_react_test_app" {
  type        = bool
  description = "Whether environment should use the react_test_app client"
  default     = false
}
