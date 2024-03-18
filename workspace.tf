resource "null_resource" "create_workspace" {
  count = length(var.workspace_names)

  triggers = {
    create_workspace = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = <<EOF
      curl \
        --header "Authorization: Bearer ${var.terraform_cloud_token}" \
        --header "Content-Type: application/vnd.api+json" \
        --request POST \
        --data '{
          "data": {
            "type": "workspaces",
            "attributes": {
              "name": "${var.workspace_names[count.index]}",
              "organization": {
                "name": "${var.organization_name}"
              },
              "vcs-repo": {
                "identifier": "${var.vcs_repo_identifier}",
                "oauth-token-id": "${var.vcs_oauth_token_id}"
              }
            }
          }
        }' \
        https://app.terraform.io/api/v2/organizations/${var.organization_name}/workspaces
    EOF
  }
}
