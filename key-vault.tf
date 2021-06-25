module "fprl-vault" {
  source              = "git@github.com:hmcts/cnp-module-key-vault?ref=master"
  name                = "fprl-${var.env}"
  product             = var.product
  env                 = var.env
  object_id           = var.jenkins_AAD_objectId
  resource_group_name = azurerm_resource_group.rg.name
  product_group_name  = "DTS Family Private Law"
  common_tags         = var.common_tags
  create_managed_identity = true
}

output "vaultName" {
  value = module.fprl-vault.key_vault_name
}
