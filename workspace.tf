resource "tfe_workspace" "test" {
  name         = "UAT"
  organization = tfe_organization.test-organization.name
  tag_names    = ["UAT", "app"]
}
resource "tfe_workspace" "DEV" {
  name         = "DEV"
  organization = tfe_organization.test-organization.name
  tag_names    = ["DEV", "app"]
}
resource "tfe_workspace" "PROD" {
  name         = "PROD"
  organization = tfe_organization.test-organization.name
  tag_names    = ["PROD", "app"]
}

