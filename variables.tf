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
  # --- Unconfirmed validation candidates, derived from azurerm_web_pubsub_network_acl's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: web_pubsub_id
  #   source:    [from validationFunctionForResourceID] !ok
  # path: web_pubsub_id
  #   source:    [from validationFunctionForResourceID] err != nil
  # path: default_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: public_network.allowed_request_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: public_network.denied_request_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: private_endpoint.id
  #   source:    [from privateendpoints.ValidatePrivateEndpointID] !ok
  # path: private_endpoint.id
  #   source:    [from privateendpoints.ValidatePrivateEndpointID] err != nil
  # path: private_endpoint.allowed_request_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: private_endpoint.denied_request_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

