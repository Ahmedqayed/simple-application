output "postgresql_server_name" {
  value = azurerm_postgresql_server.main.name
}

output "postgresql_database_name" {
  value = azurerm_postgresql_database.main.name
}
