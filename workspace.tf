resource "tfe_organization" "test-organization" {
  name  = "my-org-name"
  email = "admin@company.com"
}

resource "tfe_oauth_client" "test" {
  organization     = tfe_organization.test_organization.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      =  "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"
  service_provider = "github"
}

resource "tfe_workspace" "parent" {
  name                 = "parent-ws"
  organization         = tfe_organization.test-organization
  queue_all_runs       = false
  vcs_repo {
    branch             = "main"
    identifier         = "my-org-name/vcs-repository"
    oauth_token_id     = tfe_oauth_client.test.oauth_token_id
  }
}

resource "tfe_workspace_run" "ws_run_parent" {
  workspace_id     = tfe_workspace.parent.id

  apply {
    manual_confirm = true
  }

  destroy {
    manual_confirm = true
    wait_for_run   = true
  }
}
