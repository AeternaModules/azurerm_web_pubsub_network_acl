output "web_pubsub_network_acls" {
  description = "All web_pubsub_network_acl resources"
  value       = azurerm_web_pubsub_network_acl.web_pubsub_network_acls
}
output "web_pubsub_network_acls_default_action" {
  description = "List of default_action values across all web_pubsub_network_acls"
  value       = [for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : v.default_action]
}
output "web_pubsub_network_acls_private_endpoint" {
  description = "List of private_endpoint values across all web_pubsub_network_acls"
  value       = [for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : v.private_endpoint]
}
output "web_pubsub_network_acls_public_network" {
  description = "List of public_network values across all web_pubsub_network_acls"
  value       = [for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : v.public_network]
}
output "web_pubsub_network_acls_web_pubsub_id" {
  description = "List of web_pubsub_id values across all web_pubsub_network_acls"
  value       = [for k, v in azurerm_web_pubsub_network_acl.web_pubsub_network_acls : v.web_pubsub_id]
}

