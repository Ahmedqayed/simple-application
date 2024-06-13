provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "rg-devops-challenge"
  location = "East US"
}

resource "azurerm_postgresql_server" "main" {
  name                = "psql-server-devops"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  administrator_login = "adminuser"
  administrator_login_password = "securepassword"
  sku_name            = "B_Gen5_1"
  version             = "11"
  storage_mb          = 5120
  backup_retention_days = 7
  geo_redundant_backup_enabled = false
}

resource "azurerm_postgresql_database" "main" {
  name                = "mydb"
  resource_group_name = azurerm_resource_group.main.name
  server_name         = azurerm_postgresql_server.main.name
  charset             = "UTF8"
  collation           = "en_US.utf8"
}
