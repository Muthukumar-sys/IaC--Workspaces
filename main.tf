# main.tf

module "azure_workspaces" {
  source = "./modules/azure_workspaces"
  for_each = var.workspace_configurations

  organization_name    = var.organization_name
  workspace_name       = each.key
  auto_apply           = each.value.auto_apply
  queue_all_runs       = each.value.queue_all_runs
  azure_subscription_id = var.azure_subscription_id
  azure_region          = var.azure_region
}
