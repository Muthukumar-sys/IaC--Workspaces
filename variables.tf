variable "terraform_cloud_token" {
  description = "Terraform Cloud API token"
}

variable "organization_name" {
  description = "Name of your Terraform Cloud organization"
}

variable "workspace_names" {
  description = "List of workspace names to create"
  type        = list(string)
}

variable "vcs_repo_identifier" {
  description = "Identifier of the VCS repository (e.g., organization/repo)"
}

variable "vcs_oauth_token_id" {
  description = "ID of the VCS OAuth token to connect the workspace to the VCS repository"
}
