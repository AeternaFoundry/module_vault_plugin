resource "vault_plugin" "plugins" {
  for_each = var.plugins

  name      = each.value.name
  type      = each.value.type
  args      = each.value.args
  command   = each.value.command
  env       = each.value.env
  oci_image = each.value.oci_image
  runtime   = each.value.runtime
  sha256    = each.value.sha256
  version   = each.value.version
}

