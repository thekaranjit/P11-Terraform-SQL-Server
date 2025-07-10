
# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "sql-resource-rg-5268"
  location = "Central India"
}

# Azure SQL Server
resource "azurerm_mssql_server" "example" {
  name                         = "example-sql-server1234"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "admin123"
  administrator_login_password = "Alliswell@14"
}

# SQL Database
resource "azurerm_mssql_database" "example" {
  name           = "sql-resource-db-5268"
  server_id      = azurerm_mssql_server.example.id
  sku_name       = "S0"
  max_size_gb    = 1
  zone_redundant = false
}

# Firewall Rule to Allow Your IP
resource "azurerm_mssql_firewall_rule" "example" {
  name             = "AllowMyIP"
  server_id        = azurerm_mssql_server.example.id
  start_ip_address = "223.233.86.56"
  end_ip_address   = "223.233.86.56"
}

