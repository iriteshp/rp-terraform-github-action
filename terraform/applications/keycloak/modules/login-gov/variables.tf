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
variable "enable_my_react_app" {
  type        = bool
  description = "Whether environment should use the my_react_app client"
  default     = false
}
