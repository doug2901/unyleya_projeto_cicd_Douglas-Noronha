resource "azurerm_dns_zone" "dnfcorp" {
  name                = "dnfcorp.com.br"
  resource_group_name = azurerm_resource_group.RG-ADM.name
  tags = {Study_Project = "DNS"}
}


resource "azurerm_dns_a_record" "unyleya-vote" {
  name                = "unyleya-vote"
  zone_name           = azurerm_dns_zone.dnfcorp.name
  resource_group_name = azurerm_resource_group.RG-ADM.name
  ttl                 = 3600
  records             = ["20.122.235.92"]
}