module "login-gov" {
  source                   = "./modules/login-gov"
  count                    = var.enable_login_gov ? 1 : 0
  platform_console_ui_uris = var.platform_console_ui_uris
  react_test_app_uris      = var.react_test_app_uris
  react_test_app_root_url  = var.react_test_app_root_url
  react_test_app_admin_url = var.react_test_app_admin_url
  enable_test-app          = var.enable_test-app
}
