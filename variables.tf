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
    default_action = optional(string) # Default: "Deny"
    public_network = object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
    })
    private_endpoint = optional(object({
      allowed_request_types = optional(set(string))
      denied_request_types  = optional(set(string))
      id                    = string
    }))
  }))
}

