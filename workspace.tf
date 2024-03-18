resource "tfe_workspace" "test" {
  name         = "UAT"
  organization = tfe_organization.opswork
  tag_names    = ["uat", "app"]
}
resource "tfe_workspace" "DEV" {
  name         = "DEV"
  organization = tfe_organization.opswork
  tag_names    = ["dev", "app"]
}
resource "tfe_workspace" "PROD" {
  name         = "PROD"
  organization = tfe_organization.opswork
  tag_names    = ["prod", "app"]
}

