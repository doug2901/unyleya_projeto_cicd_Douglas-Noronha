resource "azurerm_kubernetes_cluster" "unyleya-aks" {
  name                = "unyleya-aks"
  location            = azurerm_resource_group.RG-UNYLEYA.location
  resource_group_name = azurerm_resource_group.RG-UNYLEYA.name
  dns_prefix          = "unyleya-aks-dns"

  default_node_pool {
    name       = "dev"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Study_Project = "AKS"
  }
}

#output "kube_config" {
#  value = azurerm_kubernetes_cluster.unyleya-aks.kube_config_raw

#}