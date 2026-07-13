variable "web_pubsub_network_acls" {
  description = <<EOT
Map of web_pubsub_network_acls, attributes below
Required:
    - web_pubsub_id
    - public_network (block):
        - allowed_request_types (optional)
        - denied_request_types (optional)
Optional:
    - default_action
    - private_endpoint (block):
        - allowed_request_types (optional)
        - denied_request_types (optional)
        - id (required)
EOT

  type = map(object({
    web_pubsub_id  = string
    default_action = optional(string)
    public_network = object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
    })
    private_endpoint = optional(list(object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
      id                    = string
    })))
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

