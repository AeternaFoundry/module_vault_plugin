output "plugins_id" {
  description = "Map of id values across all plugins, keyed the same as var.plugins except keys with no id are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "plugins_args" {
  description = "Map of args values across all plugins, keyed the same as var.plugins except keys with no args are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.args if v.args != null && length(v.args) > 0 }
}
output "plugins_command" {
  description = "Map of command values across all plugins, keyed the same as var.plugins except keys with no command are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.command if v.command != null && length(v.command) > 0 }
}
output "plugins_env" {
  description = "Map of env values across all plugins, keyed the same as var.plugins except keys with no env are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.env if v.env != null && length(v.env) > 0 }
  sensitive   = true
}
output "plugins_name" {
  description = "Map of name values across all plugins, keyed the same as var.plugins except keys with no name are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.name if v.name != null && length(v.name) > 0 }
}
output "plugins_oci_image" {
  description = "Map of oci_image values across all plugins, keyed the same as var.plugins except keys with no oci_image are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.oci_image if v.oci_image != null && length(v.oci_image) > 0 }
}
output "plugins_runtime" {
  description = "Map of runtime values across all plugins, keyed the same as var.plugins except keys with no runtime are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "plugins_sha256" {
  description = "Map of sha256 values across all plugins, keyed the same as var.plugins except keys with no sha256 are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.sha256 if v.sha256 != null && length(v.sha256) > 0 }
}
output "plugins_type" {
  description = "Map of type values across all plugins, keyed the same as var.plugins except keys with no type are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.type if v.type != null && length(v.type) > 0 }
}
output "plugins_version" {
  description = "Map of version values across all plugins, keyed the same as var.plugins except keys with no version are omitted"
  value       = { for k, v in vault_plugin.plugins : k => v.version if v.version != null && length(v.version) > 0 }
}

