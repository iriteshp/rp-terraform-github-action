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

variable "enable_test-app1" {
  type        = bool
  description = "Whether environment should use the test-app1 client"
  default     = false
}
