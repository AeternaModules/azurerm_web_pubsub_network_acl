output "web_pubsub_network_acls_default_action" {
  description = "Map of default_action values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = { for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : k => v.default_action }
}
output "web_pubsub_network_acls_private_endpoint" {
  description = "Map of private_endpoint values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = { for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : k => v.private_endpoint }
}
output "web_pubsub_network_acls_public_network" {
  description = "Map of public_network values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = { for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : k => v.public_network }
}
output "web_pubsub_network_acls_web_pubsub_id" {
  description = "Map of web_pubsub_id values across all web_pubsub_network_acls, keyed the same as var.web_pubsub_network_acls"
  value       = { for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : k => v.web_pubsub_id }
}

