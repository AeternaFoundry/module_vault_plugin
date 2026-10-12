variable "plugins" {
  description = <<EOT
Map of plugins, attributes below
Required:
    - name
    - type
Optional:
    - args
    - command
    - env
    - oci_image
    - runtime
    - sha256
    - version
EOT

  type = map(object({
    name      = string
    type      = string
    args      = optional(list(string))
    command   = optional(string)
    env       = optional(list(string))
    oci_image = optional(string)
    runtime   = optional(string)
    sha256    = optional(string)
    version   = optional(string)
  }))
}

